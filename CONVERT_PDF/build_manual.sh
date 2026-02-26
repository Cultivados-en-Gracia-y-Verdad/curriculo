#!/bin/bash
set -euo pipefail
# ================================
# configure these:
# ================================
MANUAL_NAME="Habacuc"
FILE_LOCATION="../03.Habacuc/"
FILENAME="Habacuc-0.7.md"
# ==================================
FILE=${FILE_LOCATION}${FILENAME}
NORMALIZED_FILE="temp/manual_normalized.md"
OUTPUT_DIR="output"
TEX_TEMPLATE="tex/manual_template.tex"
TEACHER_COVER_TEMPLATE="cover-template-teacher.tex"
STUDENT_COVER_TEMPLATE="cover-template-student.tex"
FIXED="temp/manual.space_fixed.md"
rm -f temp/*

# ==== DO NOT TOUCH BELOW THIS LINE ==========
TITLE=$(pandoc "$FILE" -t json | jq -r '[.meta.title.c[] | if .t == "Str" then .c else " " end] | join("")')
SUBTITLE=$(pandoc "$FILE" -t json | jq -r '[.meta.subtitle.c[] | if .t == "Str" then .c else " " end] | join("")')
VERSION=$(pandoc "$FILE" -t json | jq -r '[.meta.version.c[] | if .t == "Str" then .c else " " end] | join("")')
COVER=$(pandoc "$FILE" -t json | jq -r '[.meta.cover.c[] | if .t == "Str" then .c else " " end] | join("")')
AUTHOR=$(pandoc "$FILE" -t json | jq -r '[.meta.author.c[] | if .t == "Str" then .c else " " end] | join("")')

#echo "TITLE: $TITLE"
#echo "SUBTITULO: $SUBTITLE"
#echo "VERSION: $VERSION"
#echo "TAPA: $COVER"


sed -e "s|<<COVER_IMAGE>>|${FILE_LOCATION}${COVER}|" \
    -e "s|<<MANUAL_EDITION>>|Alumno|" \
    "$STUDENT_COVER_TEMPLATE" > temp/cover_student.tex

xelatex -output-directory=temp temp/cover_student.tex

# Build cover for teacher
sed -e "s|<<COVER_IMAGE>>|${FILE_LOCATION}${COVER}|" \
    -e "s|<<MANUAL_EDITION>>|Maestro|" \
    "$TEACHER_COVER_TEMPLATE" > temp/cover_teacher.tex

xelatex -output-directory=temp temp/cover_teacher.tex
# ---------- STEP 1: Remove quotes/italics replace with latex ----------
awk -f include/quotes-to-latex.awk "$FILE" > temp/step1-manual.md
awk -f include/footnotes.awk temp/step1-manual.md > temp/processed.md

#awk -f include/footnotes.awk "$FILE" > temp/$$.foot && \
#awk -f include/quotes-to-latex.awk temp/$$.foot > temp/processed.md && \
#rm tmp/$$.foot

#awk -f include/quotes-to-latex.awk "$FILE" "$FILE" > temp/step1-manual.md
# ---------- STEP 2: Normalize Markdown ----------
awk -f include/clean_fills.awk temp/processed.md > "$NORMALIZED_FILE"

echo "/////// DEBUG BUILD $(date) ///////"
head -n 10 "$NORMALIZED_FILE"

# ---------- STEP 2A: Teacher manual ----------
pandoc \
  include/blank.md \
  include/pagebreak.md \
  include/CGV.md \
  include/pagebreak.md \
  include/proposito-del-manual.md \
  include/pagebreak.md \
"$NORMALIZED_FILE" \
  --quiet \
  --from markdown+fancy_lists+footnotes \
  --to latex \
  --no-highlight \
  --template=teacher_template.tex \
  --lua-filter=filters/inline_scripture.lua \
  --lua-filter=filters/scripturefont.lua \
  --lua-filter=filters/headingfive.lua \
  --lua-filter=filters/scripture-quotes.lua \
  --lua-filter=filters/title_blocks.lua \
  --lua-filter=filters/definitionbox.lua \
  --lua-filter=filters/header_paragraph_env.lua \
  --number-sections=false \
  -M title="$TITLE" \
  -M version="$VERSION" \
  -M cover="$COVER" \
  -M subtitle="$SUBTITLE" \
  -M keywords="discipulado, biblia, CGV, enseñanza, $TITLE"\
  -M author="$AUTHOR" \
  --pdf-engine=xelatex \
  -o "temp/teacher_manual.tex"

xelatex -interaction=nonstopmode -halt-on-error "temp/teacher_manual.tex"

# ---------- STEP 2B: Student manual ----------
pandoc \
  include/blank.md \
  include/pagebreak.md \
  include/CGV.md \
  include/pagebreak.md \
  include/proposito-del-manual.md \
  include/pagebreak.md \
  "$NORMALIZED_FILE" \
  --quiet \
  --from markdown+fancy_lists+footnotes \
  --to latex \
  --no-highlight \
  --template=student_template.tex \
  --lua-filter=filters/inline_scripture.lua \
  --lua-filter=filters/scripturefont.lua \
  --lua-filter=filters/headingfive.lua \
  --lua-filter=filters/scripture-quotes.lua \
  --lua-filter=filters/title_blocks.lua \
  --lua-filter=filters/definitionbox.lua \
  --lua-filter=filters/header_paragraph_env.lua \
  --number-sections=false \
  -M title="$TITLE" \
  -M version="$VERSION" \
  -M cover="$COVER" \
  -M subtitle="$SUBTITLE" \
  -M keywords="discipulado, biblia, CGV, enseñanza, $TITLE"\
  -M author="$AUTHOR" \
  --pdf-engine=xelatex \
  -o "temp/student_manual.tex"

xelatex -interaction=nonstopmode -halt-on-error "temp/student_manual.tex"
pdfunite temp/cover_teacher.pdf teacher_manual.pdf "${FILE_LOCATION}${MANUAL_NAME}_manual_maestro(V.${VERSION}).pdf"
echo "▶ ${FILE_LOCATION}${MANUAL_NAME}_manual_maestro(V.${VERSION}).pdf"
pdfunite temp/cover_student.pdf student_manual.pdf "${FILE_LOCATION}${MANUAL_NAME}_manual_estudiante(V.${VERSION}).pdf"

#rm -f temp/*