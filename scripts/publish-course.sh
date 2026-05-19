#!/bin/bash
set -e

COURSE="$1"

if [ -z "$COURSE" ]; then
  echo "Usage: ./scripts/publish-course.sh 1corintios"
  exit 1
fi

LINE=$(awk -F'\t' -v course="$COURSE" '$1 == course { print }' publish-map.tsv)

if [ -z "$LINE" ]; then
  echo "Course not found in publish-map.tsv: $COURSE"
  exit 1
fi

SOURCE_MD=$(echo "$LINE" | awk -F'\t' '{print $2}')
TARGET_MD=$(echo "$LINE" | awk -F'\t' '{print $3}')

SOURCE_IMAGES=$(echo "$LINE" | awk -F'\t' '{print $4}')
TARGET_IMAGES=$(echo "$LINE" | awk -F'\t' '{print $5}')

SOURCE_QUIZZES=$(echo "$LINE" | awk -F'\t' '{print $6}')
TARGET_QUIZZES=$(echo "$LINE" | awk -F'\t' '{print $7}')

SOURCE_MANIFEST=$(echo "$LINE" | awk -F'\t' '{print $8}')
TARGET_MANIFEST=$(echo "$LINE" | awk -F'\t' '{print $9}')

echo "Publishing $COURSE"

git fetch origin

CURRENT_BRANCH=$(git branch --show-current)

git checkout main
git pull origin main

mkdir -p "$(dirname "$TARGET_MD")"
mkdir -p "$TARGET_IMAGES"
mkdir -p "$TARGET_QUIZZES"
mkdir -p "$(dirname "$TARGET_MANIFEST")"

echo "Publishing markdown..."
git show "origin/en-borrador:$SOURCE_MD" > "$TARGET_MD"

echo "Publishing images..."
git checkout origin/en-borrador -- "$SOURCE_IMAGES"
rm -rf "$TARGET_IMAGES"
mv "$SOURCE_IMAGES" "$TARGET_IMAGES"

echo "Publishing quizzes..."

TEMP_QUIZZES=".publish-temp-quizzes"

rm -rf "$TEMP_QUIZZES"
mkdir -p "$TEMP_QUIZZES"

git archive origin/en-borrador "$SOURCE_QUIZZES" | tar -x -C "$TEMP_QUIZZES"

rm -rf "$TARGET_QUIZZES"
mkdir -p "$(dirname "$TARGET_QUIZZES")"

mv "$TEMP_QUIZZES/$SOURCE_QUIZZES" "$TARGET_QUIZZES"

rm -rf "$TEMP_QUIZZES"

echo "Publishing manifest..."
git show "origin/en-borrador:$SOURCE_MANIFEST" > "$TARGET_MANIFEST"

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