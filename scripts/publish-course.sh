#!/usr/bin/env bash
set -euo pipefail

SOURCE_BRANCH="${SOURCE_BRANCH:-origin/en-borrador}"
TARGET_BRANCH="${TARGET_BRANCH:-main}"
WEB_BRANCH="${WEB_BRANCH:-main}"
WEB_CONTENT_ROOT="${WEB_CONTENT_ROOT:-content/courses}"
COURSES_ROOT="${COURSES_ROOT:-courses}"
DATA_BRANCH="${DATA_BRANCH:-main}"
DATA_COURSES_ROOT="${DATA_COURSES_ROOT:-courses}"
PUSH="${PUSH:-1}"
DRY_RUN="${DRY_RUN:-0}"
PUBLISH_WEB="${PUBLISH_WEB:-1}"
BUILD_WEB="${BUILD_WEB:-1}"

CURRICULO_ROOT=""
WEB_REPO=""
DATA_REPO=""

usage() {
  cat <<'EOF'
Usage:
  ./scripts/publish-course.sh                 Publish all draft courses
  ./scripts/publish-course.sh <name>          Publish one course
  ./scripts/publish-course.sh --list          Show draft -> main/web mappings
  ./scripts/publish-course.sh --web-only <name>  Update cgv-web only

Examples:
  ./scripts/publish-course.sh santiago
  ./scripts/publish-course.sh 13.Santiago
  ./scripts/publish-course.sh romanos1-8

Environment:
  SOURCE_BRANCH=origin/en-borrador
  TARGET_BRANCH=main
  WEB_REPO=../cgv-web          Path to Cultivados-en-Gracia-y-Verdad/cgv-web checkout
  WEB_BRANCH=main
  DATA_REPO=../cgv-data        Path to Cultivados-en-Gracia-y-Verdad/cgv-data checkout
  DATA_BRANCH=main
  PUBLISH_WEB=1                Also publish PDFs and course page to cgv-web
  BUILD_WEB=1                  Run hugo in cgv-web after content changes
  PUSH=0                       Commit locally, do not push
  DRY_RUN=1                    Show actions only

Draft folders on en-borrador (e.g. 13.Santiago) are matched automatically to
courses/<name> on main by folder name and manifest id. No publish-map.tsv needed.

When PUBLISH_WEB=1, PDFs are copied to cgv-web content/courses/<slug>/ as
alumno.pdf and maestro.pdf, _index.md is created when missing, and hugo
rebuilds docs/ in that repo.
EOF
  exit 1
}

require_repo() {
  git rev-parse --is-inside-work-tree >/dev/null
  CURRICULO_ROOT="$(git rev-parse --show-toplevel)"
  WEB_REPO="${WEB_REPO:-$CURRICULO_ROOT/../cgv-web}"
  DATA_REPO="${DATA_REPO:-$CURRICULO_ROOT/../cgv-data}"
}

web_git() {
  git -C "$WEB_REPO" "$@"
}

data_git() {
  git -C "$DATA_REPO" "$@"
}

web_repo_abs_path() {
  (cd "$WEB_REPO" && pwd)
}

data_repo_abs_path() {
  (cd "$DATA_REPO" && pwd)
}

require_web_repo() {
  if [[ ! -d "$WEB_REPO/.git" ]]; then
    echo "Web repo not found: $WEB_REPO" >&2
    echo "Clone https://github.com/Cultivados-en-Gracia-y-Verdad/cgv-web.git or set WEB_REPO." >&2
    exit 1
  fi
}

require_data_repo() {
  if [[ ! -d "$DATA_REPO/.git" ]]; then
    echo "Data repo not found: $DATA_REPO" >&2
    echo "Clone https://github.com/Cultivados-en-Gracia-y-Verdad/cgv-data.git or set DATA_REPO." >&2
    exit 1
  fi
}

normalize_key() {
  printf '%s' "$1" | tr '[:upper:]' '[:lower:]' | tr -cd 'a-z0-9'
}

slugify_name() {
  printf '%s' "$1" \
    | tr '[:upper:]' '[:lower:]' \
    | sed -E 's/[^a-z0-9]+/-/g; s/^-+|-+$//g'
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

manifest_field_for() {
  local draft_dir="$1"
  local field="$2"
  git show "$SOURCE_BRANCH:$draft_dir/manifest.json" 2>/dev/null \
    | sed -n "s/.*\"${field}\"[[:space:]]*:[[:space:]]*\"\\([^\"]*\\)\".*/\\1/p" \
    | head -n 1
}

manifest_id_for() {
  local draft_dir="$1"
  manifest_field_for "$draft_dir" "id"
}

is_student_pdf() {
  case "$1" in
    *manual_estudiante*|alumno*.pdf|Alumno*.pdf|*estudiante*.pdf) return 0 ;;
  esac
  return 1
}

is_teacher_pdf() {
  case "$1" in
    *manual_maestro*|maestro*.pdf|Maestro*.pdf) return 0 ;;
  esac
  return 1
}

is_course_pdf() {
  is_student_pdf "$1" || is_teacher_pdf "$1"
}

web_slug_alias_for_key() {
  case "$1" in
    1corintios) printf '%s' '1coritios' ;;
    navegandoeltexto) printf '%s' 'navegado-el-texto' ;;
    *) return 1 ;;
  esac
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
      printf '%s/%s' "$DATA_COURSES_ROOT" "$candidate"
      return 0
    fi
  done < <(data_git ls-tree -d --name-only "$DATA_BRANCH:$DATA_COURSES_ROOT" 2>/dev/null || true)

  printf '%s/%s' "$DATA_COURSES_ROOT" "$derived"
}

resolve_web_slug() {
  local draft_dir="$1"
  local target_dir="$2"
  local derived manifest_id course_name target_key slug slug_key alias_key

  derived="$(strip_draft_prefix "$draft_dir")"
  course_name="$(basename "$target_dir")"
  manifest_id="$(manifest_id_for "$draft_dir" 2>/dev/null || true)"
  target_key="$(normalize_key "${manifest_id:-$course_name}")"

  while IFS= read -r slug; do
    [[ -z "$slug" ]] && continue
    slug_key="$(normalize_key "$slug")"
    if [[ "$slug_key" == "$target_key" || "$slug_key" == "$(normalize_key "$course_name")" || "$slug_key" == "$(normalize_key "$derived")" ]]; then
      printf '%s' "$slug"
      return 0
    fi
    if alias_key="$(web_slug_alias_for_key "$target_key")"; then
      [[ "$(normalize_key "$alias_key")" == "$slug_key" ]] && printf '%s' "$slug" && return 0
    fi
    if alias_key="$(web_slug_alias_for_key "$(normalize_key "$course_name")")"; then
      [[ "$(normalize_key "$alias_key")" == "$slug_key" ]] && printf '%s' "$slug" && return 0
    fi
  done < <(web_git ls-tree -d --name-only "$WEB_BRANCH:$WEB_CONTENT_ROOT" 2>/dev/null || true)

  if [[ -n "$manifest_id" ]]; then
    printf '%s' "$(slugify_name "$manifest_id")"
    return 0
  fi

  printf '%s' "$(slugify_name "$course_name")"
}

list_mappings() {
  git fetch origin >/dev/null 2>&1 || true
  if [[ "$PUBLISH_WEB" == "1" ]]; then
    require_web_repo
    web_git fetch origin >/dev/null 2>&1 || true
  fi

  printf "%-28s -> %-30s" "DRAFT (en-borrador)" "cgv-data"
  if [[ "$PUBLISH_WEB" == "1" ]]; then
    printf " -> cgv-web/%s\n" "$WEB_CONTENT_ROOT"
  else
    printf "\n"
  fi

  while IFS= read -r draft_dir; do
    [[ -z "$draft_dir" ]] && continue
    is_publishable_draft_dir "$draft_dir" || continue
    printf "%-28s -> %-30s" "$draft_dir" "$(resolve_target_dir "$draft_dir")"
    if [[ "$PUBLISH_WEB" == "1" ]]; then
      printf " -> %s/%s\n" "$WEB_CONTENT_ROOT" "$(resolve_web_slug "$draft_dir" "$(resolve_target_dir "$draft_dir")")"
    else
      printf "\n"
    fi
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

sync_file_web() {
  local source_path="$1"
  local target_rel="$2"
  local web_root abs_target

  if ! git cat-file -e "$SOURCE_BRANCH:$source_path" 2>/dev/null; then
    echo "  skip file (missing): $source_path"
    return 0
  fi

  echo "  file: $source_path -> $WEB_REPO/$target_rel"
  [[ "$DRY_RUN" == "1" ]] && return 0

  web_root="$(web_repo_abs_path)"
  abs_target="$web_root/$target_rel"
  mkdir -p "$(dirname "$abs_target")"
  git show "$SOURCE_BRANCH:$source_path" > "$abs_target"
  web_git add "$target_rel"
}

sync_file_data() {
  local source_path="$1"
  local target_rel="$2"
  local data_root abs_target

  if ! git cat-file -e "$SOURCE_BRANCH:$source_path" 2>/dev/null; then
    echo "  skip file (missing): $source_path"
    return 0
  fi

  echo "  file: $source_path -> $DATA_REPO/$target_rel"
  [[ "$DRY_RUN" == "1" ]] && return 0

  data_root="$(data_repo_abs_path)"
  abs_target="$data_root/$target_rel"
  mkdir -p "$(dirname "$abs_target")"
  git show "$SOURCE_BRANCH:$source_path" > "$abs_target"
  data_git add "$target_rel"
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

sync_tree_web() {
  local source_dir="$1"
  local target_rel="$2"
  local web_root abs_target

  if ! git ls-tree -d "$SOURCE_BRANCH:$source_dir" >/dev/null 2>&1; then
    echo "  skip dir (missing): $source_dir/"
    return 0
  fi

  echo "  dir:  $source_dir/ -> $WEB_REPO/$target_rel/"
  [[ "$DRY_RUN" == "1" ]] && return 0

  web_root="$(web_repo_abs_path)"
  abs_target="$web_root/$target_rel"
  local tmp
  tmp="$(mktemp -d)"
  git archive "$SOURCE_BRANCH" "$source_dir" | tar -x -C "$tmp"
  mkdir -p "$(dirname "$abs_target")"
  rm -rf "$abs_target"
  mv "$tmp/$source_dir" "$abs_target"
  rm -rf "$tmp"
  web_git add "$target_rel"
}

sync_tree_data() {
  local source_dir="$1"
  local target_rel="$2"
  local data_root abs_target

  if ! git ls-tree -d "$SOURCE_BRANCH:$source_dir" >/dev/null 2>&1; then
    echo "  skip dir (missing): $source_dir/"
    return 0
  fi

  echo "  dir:  $source_dir/ -> $DATA_REPO/$target_rel/"
  [[ "$DRY_RUN" == "1" ]] && return 0

  data_root="$(data_repo_abs_path)"
  abs_target="$data_root/$target_rel"
  local tmp
  tmp="$(mktemp -d)"
  git archive "$SOURCE_BRANCH" "$source_dir" | tar -x -C "$tmp"
  mkdir -p "$(dirname "$abs_target")"
  rm -rf "$abs_target"
  mv "$tmp/$source_dir" "$abs_target"
  rm -rf "$tmp"
  data_git add "$target_rel"
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
    if is_course_pdf "$file_name"; then
      sync_file "$source_dir/$file_name" "$target_dir/$file_name"
      copied=1
    fi
  done < <(git ls-tree --name-only "$SOURCE_BRANCH:$source_dir")

  if [[ "$copied" == "0" ]]; then
    echo "  skip pdfs (none found): $source_dir/"
  fi
}

sync_pdfs_data() {
  local source_dir="$1"
  local target_rel="$2"
  local copied=0 file_name

  if ! git ls-tree "$SOURCE_BRANCH:$source_dir" >/dev/null 2>&1; then
    echo "  skip pdfs (missing source dir): $source_dir/"
    return 0
  fi

  while IFS= read -r file_name; do
    [[ -z "$file_name" ]] && continue
    if is_course_pdf "$file_name"; then
      sync_file_data "$source_dir/$file_name" "$target_rel/$file_name"
      copied=1
    fi
  done < <(git ls-tree --name-only "$SOURCE_BRANCH:$source_dir")

  if [[ "$copied" == "0" ]]; then
    echo "  skip pdfs (none found): $source_dir/"
  fi
}

sync_manifest_data() {
  local source_path="$1"
  local target_rel="$2"
  local data_root abs_target

  if ! git cat-file -e "$SOURCE_BRANCH:$source_path" 2>/dev/null; then
    echo "  skip file (missing): $source_path"
    return 0
  fi

  echo "  file: $source_path -> $DATA_REPO/$target_rel"
  [[ "$DRY_RUN" == "1" ]] && return 0

  data_root="$(data_repo_abs_path)"
  abs_target="$data_root/$target_rel"
  mkdir -p "$(dirname "$abs_target")"
  git show "$SOURCE_BRANCH:$source_path" \
    | python3 -c 'import json, sys
data = json.load(sys.stdin)
data["entry"] = "slides/markdown.md"
print(json.dumps(data, ensure_ascii=False, indent=2))' > "$abs_target"
  printf '\n' >> "$abs_target"
  data_git add "$target_rel"
}

sync_slides_data() {
  local source_dir="$1"
  local target_rel="$2"

  sync_tree_data "$source_dir/slides" "$target_rel/slides"

  if git cat-file -e "$SOURCE_BRANCH:$source_dir/slides/markdown.md" 2>/dev/null; then
    return 0
  fi

  if git cat-file -e "$SOURCE_BRANCH:$source_dir/slides/manual.md" 2>/dev/null; then
    sync_file_data "$source_dir/slides/manual.md" "$target_rel/slides/markdown.md"
  fi
}

find_source_pdf() {
  local source_dir="$1"
  local kind="$2"
  local file_name fallback=""

  if ! git ls-tree "$SOURCE_BRANCH:$source_dir" >/dev/null 2>&1; then
    return 1
  fi

  while IFS= read -r file_name; do
    [[ -z "$file_name" ]] && continue
    case "$kind:$file_name" in
      estudiante:*manual_estudiante*) printf '%s' "$file_name"; return 0 ;;
      maestro:*manual_maestro*) printf '%s' "$file_name"; return 0 ;;
    esac
    if [[ "$kind" == "estudiante" ]] && is_student_pdf "$file_name"; then
      fallback="$file_name"
    elif [[ "$kind" == "maestro" ]] && is_teacher_pdf "$file_name"; then
      fallback="$file_name"
    fi
  done < <(git ls-tree --name-only "$SOURCE_BRANCH:$source_dir")

  if [[ -n "$fallback" ]]; then
    printf '%s' "$fallback"
    return 0
  fi

  return 1
}

sync_web_pdf() {
  local source_dir="$1"
  local web_slug="$2"
  local kind="$3"
  local target_name="$4"
  local source_file

  source_file="$(find_source_pdf "$source_dir" "$kind" || true)"
  if [[ -z "$source_file" ]]; then
    echo "  skip web pdf (no ${kind} pdf): $source_dir/"
    return 0
  fi

  sync_file_web "$source_dir/$source_file" "$WEB_CONTENT_ROOT/$web_slug/$target_name"
}

sync_web_images() {
  local source_dir="$1"
  local web_slug="$2"

  sync_tree_web "$source_dir/images" "$WEB_CONTENT_ROOT/$web_slug/images"
}

sync_web_index() {
  local draft_dir="$1"
  local web_slug="$2"
  local index_rel="$WEB_CONTENT_ROOT/$web_slug/_index.md"
  local index_path title subtitle

  index_path="$(web_repo_abs_path)/$index_rel"
  if [[ -f "$index_path" ]]; then
    echo "  keep existing: $index_rel"
    return 0
  fi

  title="$(manifest_field_for "$draft_dir" "title")"
  subtitle="$(manifest_field_for "$draft_dir" "subtitle")"
  [[ -z "$title" ]] && title="$(strip_draft_prefix "$draft_dir")"
  [[ -z "$subtitle" ]] && subtitle="Curso bíblico CGV"

  echo "  create: $index_rel"
  [[ "$DRY_RUN" == "1" ]] && return 0

  mkdir -p "$(dirname "$index_path")"
  cat > "$index_path" <<EOF
---
title: "$title"
description: "$subtitle"

weight: 1
orden: 1

tipo: "Manual bíblico"
duracion: "Curso intensivo"

audiencia: "Iglesias locales y Centros de Capacitación"

proposito: "Capacitar hacedores de discípulos mediante el estudio bíblico."

materiales:
  - "Manual del Alumno"
  - "Manual del Maestro"
---
EOF
  web_git add "$index_rel"
}

build_web_site() {
  [[ "$BUILD_WEB" != "1" ]] && return 0

  if [[ "$DRY_RUN" == "1" ]]; then
    echo "  would run: hugo --minify (in $WEB_REPO)"
    return 0
  fi

  if ! command -v hugo >/dev/null 2>&1; then
    echo "Warning: hugo not found; skipping site rebuild."
    return 0
  fi

  echo "Running hugo to rebuild docs/ in $WEB_REPO"
  (cd "$WEB_REPO" && hugo --minify)
  web_git add docs/
}

prepare_web_repo() {
  require_web_repo
  web_git fetch origin
  web_git checkout "$WEB_BRANCH"
  web_git pull origin "$WEB_BRANCH"
}

prepare_data_repo() {
  require_data_repo
  data_git fetch origin
  data_git checkout "$DATA_BRANCH"
  data_git pull origin "$DATA_BRANCH"
}

publish_draft_dir() {
  local draft_dir="$1"
  local target_dir

  target_dir="$(resolve_target_dir "$draft_dir")"

  echo "Publishing $draft_dir"
  echo "  from: $SOURCE_BRANCH:$draft_dir"
  echo "  to:   $DATA_REPO/$target_dir"

  sync_slides_data "$draft_dir" "$target_dir"
  sync_tree_data "$draft_dir/images" "$target_dir/images"
  sync_tree_data "$draft_dir/quizzes" "$target_dir/quizzes"
  sync_manifest_data "$draft_dir/manifest.json" "$target_dir/manifest.json"
  sync_pdfs_data "$draft_dir" "$target_dir"
}

publish_web_draft_dir() {
  local draft_dir="$1"
  local target_dir web_slug

  target_dir="$(resolve_target_dir "$draft_dir")"
  web_slug="$(resolve_web_slug "$draft_dir" "$target_dir")"

  echo "Publishing web $draft_dir"
  echo "  from: $SOURCE_BRANCH:$draft_dir"
  echo "  to:   $WEB_REPO/$WEB_CONTENT_ROOT/$web_slug/"

  sync_web_index "$draft_dir" "$web_slug"
  sync_web_images "$draft_dir" "$web_slug"
  sync_web_pdf "$draft_dir" "$web_slug" "estudiante" "alumno.pdf"
  sync_web_pdf "$draft_dir" "$web_slug" "maestro" "maestro.pdf"
}

commit_branch() {
  local branch="$1"
  local message="$2"

  if git diff --cached --quiet; then
    echo "No changes to publish on $branch."
    return 0
  fi

  git commit -m "$message"
  if [[ "$PUSH" == "1" ]]; then
    git push origin "$branch"
  else
    echo "Committed locally on $branch. PUSH=0, so not pushing."
  fi
}

commit_web_repo() {
  local message="$1"

  if web_git diff --cached --quiet; then
    echo "No changes to publish on cgv-web ($WEB_BRANCH)."
    return 0
  fi

  web_git commit -m "$message"
  if [[ "$PUSH" == "1" ]]; then
    web_git push origin "$WEB_BRANCH"
  else
    echo "Committed locally on cgv-web. PUSH=0, so not pushing."
  fi
}

commit_data_repo() {
  local message="$1"

  if data_git diff --cached --quiet; then
    echo "No changes to publish on cgv-data ($DATA_BRANCH)."
    return 0
  fi

  data_git commit -m "$message"
  if [[ "$PUSH" == "1" ]]; then
    data_git push origin "$DATA_BRANCH"
  else
    echo "Committed locally on cgv-data. PUSH=0, so not pushing."
  fi
}

publish_web_changes() {
  local draft_dir

  prepare_web_repo

  while IFS= read -r draft_dir; do
    [[ -z "$draft_dir" ]] && continue
    publish_web_draft_dir "$draft_dir"
    echo
  done <<< "$1"

  build_web_site
  commit_web_repo "Publish course materials for web from en-borrador"
}

collect_draft_dirs() {
  local selector="${1:-}"
  local draft_dir published=0

  while IFS= read -r draft_dir; do
    [[ -z "$draft_dir" ]] && continue
    is_publishable_draft_dir "$draft_dir" || continue
    if [[ -n "$selector" ]]; then
      matches_selector "$selector" "$draft_dir" || continue
      published=1
    fi
    printf '%s\n' "$draft_dir"
  done < <(git ls-tree -d --name-only "$SOURCE_BRANCH")

  if [[ -n "$selector" && "$published" == "0" ]]; then
    echo "No draft course matched: $selector"
    echo "Try: ./scripts/publish-course.sh --list"
    exit 1
  fi
}

main() {
  require_repo

  if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
    usage
  fi

  if [[ "${1:-}" == "--list" ]]; then
    require_data_repo
    list_mappings
    exit 0
  fi

  git fetch origin
  require_data_repo

  local current_branch draft_dirs web_only=0
  current_branch="$(git branch --show-current)"

  if [[ "${1:-}" == "--web-only" ]]; then
    web_only=1
    shift
  fi

  draft_dirs="$(collect_draft_dirs "${1:-}")"

  if [[ "$DRY_RUN" == "1" ]]; then
    if [[ "$PUBLISH_WEB" == "1" ]]; then
      require_web_repo
    fi
    while IFS= read -r draft_dir; do
      [[ -z "$draft_dir" ]] && continue
      publish_draft_dir "$draft_dir"
      if [[ "$PUBLISH_WEB" == "1" ]]; then
        publish_web_draft_dir "$draft_dir"
      fi
      echo
    done <<< "$draft_dirs"
    if [[ "$PUBLISH_WEB" == "1" ]]; then
      build_web_site
    fi
    echo "Dry run complete."
    exit 0
  fi

  if [[ "$web_only" == "1" ]]; then
    publish_web_changes "$draft_dirs"
    echo "Done."
    exit 0
  fi

  prepare_data_repo

  while IFS= read -r draft_dir; do
    [[ -z "$draft_dir" ]] && continue
    publish_draft_dir "$draft_dir"
    echo
  done <<< "$draft_dirs"

  commit_data_repo "Publish course content from curriculo"

  if [[ "$PUBLISH_WEB" == "1" ]]; then
    publish_web_changes "$draft_dirs"
  fi

  if [[ -n "$current_branch" && "$current_branch" != "$(git branch --show-current)" ]]; then
    git checkout "$current_branch"
  fi

  echo "Done."
}

main "$@"
