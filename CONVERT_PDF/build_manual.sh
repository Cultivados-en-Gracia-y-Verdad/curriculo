#!/bin/bash
set -euo pipefail

# ================================
# configure these:
# ================================
MANUAL_NAME="Navegando el Texto"
FILE_LOCATION="../08.Navegando-el-texto"
FILENAME="/Navegando-el-Texto.md"
# ==================================

FILE="${FILE_LOCATION}${FILENAME}"
NORMALIZED_FILE="temp/manual_normalized.md"
OUTPUT_DIR="output"
TEX_TEMPLATE="tex/manual_template.tex"
COVER_TEMPLATE="cover-template.tex"
FIXED="temp/manual.space_fixed.md"

rm -f temp/*

# ==== DO NOT TOUCH BELOW THIS LINE ==========
TITLE=$(pandoc "$FILE" -t json | jq -r '[.meta.title.c[] | if .t == "Str" then .c else " " end] | join("")')
SUBTITLE=$(pandoc "$FILE" -t json | jq -r '[.meta.subtitle.c[] | if .t == "Str" then .c else " " end] | join("")')
VERSION=$(pandoc "$FILE" -t json | jq -r '[.meta.version.c[] | if .t == "Str" then .c else " " end] | join("")')
COVER=$(pandoc "$FILE" -t json | jq -r '[.meta.cover.c[] | if .t == "Str" then .c else " " end] | join("")')
AUTHOR=$(pandoc "$FILE" -t json | jq -r '[.meta.author.c[] | if .t == "Str" then .c else " " end] | join("")')
ABS_COVER=$(cd "$FILE_LOCATION" && pwd)/$COVER
# Build cover for student
sed -e "s|<<COVER_IMAGE>>|$ABS_COVER|" \
    -e "s|<<MANUAL_EDITION>>|Alumno|" \
    "$COVER_TEMPLATE" > temp/cover_student.tex

TEXINPUTS="$FILE_LOCATION//:" xelatex -output-directory=temp temp/cover_student.tex

# Build cover for teacher
sed -e "s|<<COVER_IMAGE>>|$ABS_COVER|" \
    -e "s|<<MANUAL_EDITION>>|Maestro|" \
    "$COVER_TEMPLATE" > temp/cover_teacher.tex

TEXINPUTS="$FILE_LOCATION//:" xelatex -output-directory=temp temp/cover_teacher.tex

# ---------- STEP 1: Remove quotes/italics replace with latex ----------
awk -f include/quotes-to-latex.awk "$FILE" > temp/step1-manual.md
awk -f include/footnotes.awk temp/step1-manual.md > temp/processed.md

# ---------- STEP 2: Normalize Markdown ----------
awk -f include/clean_fills.awk temp/processed.md > "$NORMALIZED_FILE"

echo "/////// DEBUG BUILD $(date) ///////"
head -n 10 "$NORMALIZED_FILE"

# ---------- STEP 2A: Teacher manual ----------
pandoc \
  include/pagebreak.md \
  include/CGV.md \
  include/pagebreak.md \
  include/proposito-del-manual.md \
  include/pagebreak.md \
  include/toc.md \
  "$NORMALIZED_FILE" \
  --quiet \
  --from markdown+fancy_lists+footnotes+raw_tex+hard_line_breaks \
  --to latex \
  --no-highlight \
  --template=teacher_template.tex \
  --resource-path=".:$FILE_LOCATION:$FILE_LOCATION/images" \
  --lua-filter=filters/inline_scripture.lua \
  --lua-filter=filters/scripturefont.lua \
  --lua-filter=filters/headingfive.lua \
  --lua-filter=filters/scripture-quotes.lua \
  --lua-filter=filters/title_blocks.lua \
  --lua-filter=filters/definitionbox.lua \
  --lua-filter=filters/header_paragraph_env.lua \
  --lua-filter=filters/toc.lua \
  --number-sections=false \
  -M title="$TITLE" \
  -M version="$VERSION" \
  -M subtitle="$SUBTITLE" \
  -M author="$AUTHOR" \
  -o temp/teacher_manual.tex

TEXINPUTS="$FILE_LOCATION//:" xelatex -output-directory=temp -interaction=nonstopmode -halt-on-error temp/teacher_manual.tex
TEXINPUTS="$FILE_LOCATION//:" xelatex -output-directory=temp -interaction=nonstopmode -halt-on-error temp/teacher_manual.tex
# ---------- STEP 2B: Student manual ----------
pandoc \
  include/pagebreak.md \
  include/CGV.md \
  include/pagebreak.md \
  include/proposito-del-manual.md \
  include/pagebreak.md \
  include/toc.md \
  "$NORMALIZED_FILE" \
  --quiet \
  --from markdown+fancy_lists+footnotes+raw_tex+hard_line_breaks \
  --to latex \
  --no-highlight \
  --template=student_template.tex \
  --resource-path=".:$FILE_LOCATION:$FILE_LOCATION/images" \
  --lua-filter=filters/inline_scripture.lua \
  --lua-filter=filters/scripturefont.lua \
  --lua-filter=filters/headingfive.lua \
  --lua-filter=filters/scripture-quotes.lua \
  --lua-filter=filters/title_blocks.lua \
  --lua-filter=filters/definitionbox.lua \
  --lua-filter=filters/header_paragraph_env.lua \
  --lua-filter=filters/toc.lua \
  --number-sections=false \
  -M title="$TITLE" \
  -M version="$VERSION" \
  -M subtitle="$SUBTITLE" \
  -M author="$AUTHOR" \
  -o temp/student_manual.tex

TEXINPUTS="$FILE_LOCATION//:" xelatex -output-directory=temp -interaction=nonstopmode -halt-on-error temp/student_manual.tex
TEXINPUTS="$FILE_LOCATION//:" xelatex -output-directory=temp -interaction=nonstopmode -halt-on-error temp/student_manual.tex

pdfunite temp/cover_teacher.pdf temp/teacher_manual.pdf "${FILE_LOCATION}/${MANUAL_NAME}_manual_maestro(V.${VERSION}).pdf"
echo "▶ ${FILE_LOCATION}/${MANUAL_NAME}_manual_maestro(V.${VERSION}).pdf"

pdfunite temp/cover_student.pdf temp/student_manual.pdf "${FILE_LOCATION}/${MANUAL_NAME}_manual_estudiante(V.${VERSION}).pdf"
echo "▶ ${FILE_LOCATION}/${MANUAL_NAME}_manual_estudiante(V.${VERSION}).pdf"

#rm -f temp/*