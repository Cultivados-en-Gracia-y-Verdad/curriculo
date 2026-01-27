#!/bin/bash

# === CONFIGURATION ===
MANUAL_NAME="manual_del_estudiante"  # change this to match manual prefix
COVER_IMAGE="${MANUAL_NAME}_cover.png"
MARKDOWN_FILE="manual.md"
TEX_TEMPLATE="../shared-latex/manual_template.tex"
COVER_TEMPLATE="../shared-latex/cover-template.tex"

# === Generate cover.tex dynamically ===
sed "s|<<COVER_IMAGE>>|$COVER_IMAGE|" "$COVER_TEMPLATE" > cover.tex

# === Compile cover.pdf ===
xelatex cover.tex

# === Generate body.pdf ===
pandoc "$MARKDOWN_FILE" \
  --pdf-engine=xelatex \
  --template="$TEX_TEMPLATE" \
  -o body.pdf

# === Merge cover + body into final manual ===
pdfunite cover.pdf body.pdf "${MANUAL_NAME}_final.pdf"

echo "✅ Build complete: ${MANUAL_NAME}_final.pdf"
