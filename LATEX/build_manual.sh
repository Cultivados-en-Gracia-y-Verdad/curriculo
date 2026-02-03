#!/bin/bash
set -euo pipefail

# === CONFIGURATION ===
MANUAL_NAME="manual_del_maestro"  # change this to match manual prefix
COVER_IMAGE="${MANUAL_NAME}_cover.png"
MARKDOWN_FILE="manual.md"
TEX_TEMPLATE="manual_template.tex"
COVER_TEMPLATE="cover-template.tex"
LUA_FILTER="definitionbox.lua"
QUOTE_FILTER="angle_quotes.lua"
FIXED="manual.space_fixed.md"

# === FIX THE EMPTY LINES issue with Pandoc ===
echo "▶ Fixing blank lines inside lists…"
#awk -f indent-blank-lines-in-lists.awk "$MARKDOWN_FILE" > "$FIXED"

# === Generate cover.tex dynamically ===
echo "▶ Generate cover IMAGE…"
sed "s|<<COVER_IMAGE>>|$COVER_IMAGE|" "$COVER_TEMPLATE" > cover.tex

# === Compile cover.pdf ===
echo "▶ Building COVER…"
xelatex cover.tex

# === Generate body.pdf ===
echo "▶ Building PDF…"
pandoc CGV.md \
  pagebreak.md \
  proposito-del-manual.md \
  pagebreak.md \
  "$MARKDOWN_FILE" \
  --lua-filter="$LUA_FILTER" \
  --lua-filter="$QUOTE_FILTER" \
  --lua-filter="outline_lists.lua" \
  --lua-filter="scripture_headers.lua" \
  --from markdown+fancy_lists \
  --number-sections \
  --template="$TEX_TEMPLATE" \
  --pdf-engine=xelatex \
  -o body.pdf

# === Merge cover + body into final manual ===
echo "▶ MERGE cover to body…"
pdfunite cover.pdf body.pdf "${MANUAL_NAME}_final.pdf"
#echo "remove "$FIXED" file" 
#trap 'rm -f "$FIXED"' EXIT
echo "✅ Build complete: ${MANUAL_NAME}_final.pdf"

