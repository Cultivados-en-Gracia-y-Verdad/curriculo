#!/usr/bin/env bash
set -euo pipefail

SOURCE_BRANCH="${SOURCE_BRANCH:-origin/en-borrador}"
TARGET_BRANCH="${TARGET_BRANCH:-main}"
COURSES_ROOT="${COURSES_ROOT:-courses}"
PUSH="${PUSH:-1}"
DRY_RUN="${DRY_RUN:-0}"

usage() {
  cat <<'EOF'
Usage:
  ./scripts/publish-course.sh                 Publish all draft courses
  ./scripts/publish-course.sh <name>          Publish one course
  ./scripts/publish-course.sh --list          Show draft -> main mappings

Examples:
  ./scripts/publish-course.sh santiago
  ./scripts/publish-course.sh 13.Santiago
  ./scripts/publish-course.sh romanos1-8

Environment:
  SOURCE_BRANCH=origin/en-borrador
  TARGET_BRANCH=main
  PUSH=0        Commit locally, do not push
  DRY_RUN=1     Show actions only

Draft folders on en-borrador (e.g. 13.Santiago) are matched automatically to
courses/<name> on main by folder name and manifest id. No publish-map.tsv needed.
EOF
  exit 1
}

require_repo() {
  git rev-parse --is-inside-work-tree >/dev/null
}

normalize_key() {
  printf '%s' "$1" | tr '[:upper:]' '[:lower:]' | tr -cd 'a-z0-9'
}

strip_draft_prefix() {
  local name="$1"
  if [[ "$name" =~ ^[0-9]+\.(.*)$ ]]; then
    printf '%s' "${BASH_REMATCH[1]}"
  elif [[ "$name" =~ ^[0-9]+-(.*)$ ]]; then
    printf '%s' "${BASH_REMATCH[1]}"
  else
    printf '%s' "$name"
  fi
}

manifest_id_for() {
  local draft_dir="$1"
  git show "$SOURCE_BRANCH:$draft_dir/manifest.json" 2>/dev/null \
    | sed -n 's/.*"id"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' \
    | head -n 1
}

is_excluded_draft_dir() {
  case "$1" in
    courses|docs|manual|scripts|.obsidian|TYPORA|CGV-curriculo|CONVERT_PDF) return 0 ;;
  esac
  return 1
}

is_publishable_draft_dir() {
  local draft_dir="$1"
  is_excluded_draft_dir "$draft_dir" && return 1
  git cat-file -e "$SOURCE_BRANCH:$draft_dir/manifest.json" 2>/dev/null && return 0
  git ls-tree -d "$SOURCE_BRANCH:$draft_dir/slides" >/dev/null 2>&1 && return 0
  git ls-tree -d "$SOURCE_BRANCH:$draft_dir/images" >/dev/null 2>&1 && return 0
  git ls-tree -d "$SOURCE_BRANCH:$draft_dir/quizzes" >/dev/null 2>&1 && return 0
  return 1
}

resolve_target_dir() {
  local draft_dir="$1"
  local derived manifest_id target_key candidate candidate_key

  derived="$(strip_draft_prefix "$draft_dir")"
  target_key="$(normalize_key "$derived")"

  if git cat-file -e "$SOURCE_BRANCH:$draft_dir/manifest.json" 2>/dev/null; then
    manifest_id="$(manifest_id_for "$draft_dir")"
    if [[ -n "$manifest_id" ]]; then
      target_key="$(normalize_key "$manifest_id")"
    fi
  fi

  while IFS= read -r candidate; do
    [[ -z "$candidate" ]] && continue
    candidate_key="$(normalize_key "$candidate")"
    if [[ "$candidate_key" == "$target_key" ]]; then
      printf '%s/%s' "$COURSES_ROOT" "$candidate"
      return 0
    fi
  done < <(git ls-tree -d --name-only "$TARGET_BRANCH:$COURSES_ROOT" 2>/dev/null || true)

  printf '%s/%s' "$COURSES_ROOT" "$derived"
}

list_mappings() {
  git fetch origin >/dev/null 2>&1 || true
  printf "%-28s -> %s\n" "DRAFT (en-borrador)" "MAIN"
  while IFS= read -r draft_dir; do
    [[ -z "$draft_dir" ]] && continue
    is_publishable_draft_dir "$draft_dir" || continue
    printf "%-28s -> %s\n" "$draft_dir" "$(resolve_target_dir "$draft_dir")"
  done < <(git ls-tree -d --name-only "$SOURCE_BRANCH")
}

matches_selector() {
  local selector="$1"
  local draft_dir="$2"
  local derived manifest_id target_name selector_key

  selector_key="$(normalize_key "$selector")"
  derived="$(strip_draft_prefix "$draft_dir")"
  target_name="$(basename "$(resolve_target_dir "$draft_dir")")"

  [[ "$selector_key" == "$(normalize_key "$draft_dir")" ]] && return 0
  [[ "$selector_key" == "$(normalize_key "$derived")" ]] && return 0
  [[ "$selector_key" == "$(normalize_key "$target_name")" ]] && return 0

  if git cat-file -e "$SOURCE_BRANCH:$draft_dir/manifest.json" 2>/dev/null; then
    manifest_id="$(manifest_id_for "$draft_dir")"
    [[ -n "$manifest_id" && "$selector_key" == "$(normalize_key "$manifest_id")" ]] && return 0
  fi

  return 1
}

sync_file() {
  local source_path="$1"
  local target_path="$2"

  if ! git cat-file -e "$SOURCE_BRANCH:$source_path" 2>/dev/null; then
    echo "  skip file (missing): $source_path"
    return 0
  fi

  echo "  file: $source_path -> $target_path"
  [[ "$DRY_RUN" == "1" ]] && return 0

  mkdir -p "$(dirname "$target_path")"
  git show "$SOURCE_BRANCH:$source_path" > "$target_path"
  git add "$target_path"
}

sync_tree() {
  local source_dir="$1"
  local target_dir="$2"

  if ! git ls-tree -d "$SOURCE_BRANCH:$source_dir" >/dev/null 2>&1; then
    echo "  skip dir (missing): $source_dir/"
    return 0
  fi

  echo "  dir:  $source_dir/ -> $target_dir/"
  [[ "$DRY_RUN" == "1" ]] && return 0

  local tmp
  tmp="$(mktemp -d)"
  git archive "$SOURCE_BRANCH" "$source_dir" | tar -x -C "$tmp"
  mkdir -p "$(dirname "$target_dir")"
  rm -rf "$target_dir"
  mv "$tmp/$source_dir" "$target_dir"
  rm -rf "$tmp"
  git add "$target_dir"
}

sync_pdfs() {
  local source_dir="$1"
  local target_dir="$2"
  local copied=0 file_name

  if ! git ls-tree "$SOURCE_BRANCH:$source_dir" >/dev/null 2>&1; then
    echo "  skip pdfs (missing source dir): $source_dir/"
    return 0
  fi

  while IFS= read -r file_name; do
    [[ -z "$file_name" ]] && continue
    case "$file_name" in
      *manual_estudiante*|*manual_maestro*)
        sync_file "$source_dir/$file_name" "$target_dir/$file_name"
        copied=1
        ;;
    esac
  done < <(git ls-tree --name-only "$SOURCE_BRANCH:$source_dir")

  [[ "$copied" == "0" ]] && echo "  skip pdfs (none found): $source_dir/"
}

publish_draft_dir() {
  local draft_dir="$1"
  local target_dir

  target_dir="$(resolve_target_dir "$draft_dir")"

  echo "Publishing $draft_dir"
  echo "  from: $SOURCE_BRANCH:$draft_dir"
  echo "  to:   $target_dir"

  sync_tree "$draft_dir/slides" "$target_dir/slides"
  sync_tree "$draft_dir/images" "$target_dir/images"
  sync_tree "$draft_dir/quizzes" "$target_dir/quizzes"
  sync_file "$draft_dir/manifest.json" "$target_dir/manifest.json"
  sync_pdfs "$draft_dir" "$target_dir"
}

main() {
  require_repo

  if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
    usage
  fi

  if [[ "${1:-}" == "--list" ]]; then
    list_mappings
    exit 0
  fi

  git fetch origin

  local current_branch
  current_branch="$(git branch --show-current)"

  if [[ "$DRY_RUN" != "1" ]]; then
    git checkout "$TARGET_BRANCH"
    git pull origin "$TARGET_BRANCH"
  fi

  local draft_dir published=0
  if [[ $# -ge 1 ]]; then
    while IFS= read -r draft_dir; do
      [[ -z "$draft_dir" ]] && continue
      is_publishable_draft_dir "$draft_dir" || continue
      matches_selector "$1" "$draft_dir" || continue
      publish_draft_dir "$draft_dir"
      published=1
      echo
    done < <(git ls-tree -d --name-only "$SOURCE_BRANCH")

    if [[ "$published" == "0" ]]; then
      echo "No draft course matched: $1"
      echo "Try: ./scripts/publish-course.sh --list"
      exit 1
    fi
  else
    while IFS= read -r draft_dir; do
      [[ -z "$draft_dir" ]] && continue
      is_publishable_draft_dir "$draft_dir" || continue
      publish_draft_dir "$draft_dir"
      echo
    done < <(git ls-tree -d --name-only "$SOURCE_BRANCH")
  fi

  if [[ "$DRY_RUN" == "1" ]]; then
    echo "Dry run complete."
    exit 0
  fi

  if git diff --cached --quiet; then
    echo "No changes to publish."
  else
    git commit -m "Publish course content from en-borrador"
    if [[ "$PUSH" == "1" ]]; then
      git push origin "$TARGET_BRANCH"
    else
      echo "Committed locally. PUSH=0, so not pushing."
    fi
  fi

  if [[ -n "$current_branch" && "$current_branch" != "$TARGET_BRANCH" ]]; then
    git checkout "$current_branch"
  fi

  echo "Done."
}

main "$@"
