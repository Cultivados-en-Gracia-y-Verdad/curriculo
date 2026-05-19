#!/bin/bash
set -e

COURSE="$1"

if [ -z "$COURSE" ]; then
  echo "Usage: ./scripts/publish-course.sh 1corintios"
  exit 1
fi

MAP_FILE="publish-map.tsv"

LINE=$(awk -F'\t' -v course="$COURSE" '$1 == course { print }' "$MAP_FILE")

if [ -z "$LINE" ]; then
  echo "Course not found in publish-map.tsv: $COURSE"
  exit 1
fi

SOURCE_MD=$(echo "$LINE" | cut -f2)
TARGET_MD=$(echo "$LINE" | cut -f3)

SOURCE_IMAGES=$(echo "$LINE" | cut -f4)
TARGET_IMAGES=$(echo "$LINE" | cut -f5)

SOURCE_QUIZZES=$(echo "$LINE" | cut -f6)
TARGET_QUIZZES=$(echo "$LINE" | cut -f7)

SOURCE_MANIFEST=$(echo "$LINE" | cut -f8)
TARGET_MANIFEST=$(echo "$LINE" | cut -f9)

echo "Publishing $COURSE"

git fetch origin

CURRENT_BRANCH=$(git branch --show-current)

git checkout main
git pull origin main

mkdir -p "$(dirname "$TARGET_MD")"
mkdir -p "$(dirname "$TARGET_IMAGES")"
mkdir -p "$(dirname "$TARGET_QUIZZES")"
mkdir -p "$(dirname "$TARGET_MANIFEST")"

echo "Publishing markdown..."
git show "origin/en-borrador:$SOURCE_MD" > "$TARGET_MD"

echo "Publishing manifest..."
git show "origin/en-borrador:$SOURCE_MANIFEST" > "$TARGET_MANIFEST"

echo "Publishing images..."
rm -rf "$TARGET_IMAGES"
mkdir -p "$TARGET_IMAGES"

git archive origin/en-borrador "$SOURCE_IMAGES" | tar -x

cp -R "$SOURCE_IMAGES"/. "$TARGET_IMAGES"/
rm -rf "$(echo "$SOURCE_IMAGES" | cut -d/ -f1)"

echo "Publishing quizzes..."
rm -rf "$TARGET_QUIZZES"
mkdir -p "$TARGET_QUIZZES"

git archive origin/en-borrador "$SOURCE_QUIZZES" | tar -x

cp -R "$SOURCE_QUIZZES"/. "$TARGET_QUIZZES"/
rm -rf "$(echo "$SOURCE_QUIZZES" | cut -d/ -f1)"

git add "$TARGET_MD"
git add "$TARGET_IMAGES"
git add "$TARGET_QUIZZES"
git add "$TARGET_MANIFEST"

if git diff --cached --quiet; then
  echo "No changes to publish."
else
  git commit -m "Publish $COURSE from en-borrador"
  git push origin main
fi

git checkout "$CURRENT_BRANCH"

echo "Done."