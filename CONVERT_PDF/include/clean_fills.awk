#!/usr/bin/awk -f
# clean_fills.awk — processes Markdown into LaTeX-friendly output
# PURPOSE: inline normalization only (no structural destruction)
BEGIN {
    in_yaml = 0
}

# --- Preserve YAML front matter verbatim ---
/^---[[:space:]]*$/ {
    print
    in_yaml = !in_yaml
    next
}

in_yaml {
    print
    next
}

BEGIN {
    in_verse = 0
}

# -----------------------------------------
# Helpers
# -----------------------------------------
function is_header(line) {
    return line ~ /^#{1,6}[[:space:]]/
}

function escape_latex_specials(text) {
    gsub(/#/, "\\#", text)
    gsub(/\$/, "\\$", text)
    gsub(/%/, "\\%", text)
    gsub(/&/, "\\&", text)
    gsub(/_/, "\\_", text)
    return text
}


function replace_fillin(line,    out, pre, mid, post) {
    out = line
    while (match(out, /<u>([^<]+)<\/u>/)) {
        pre  = substr(out, 1, RSTART - 1)
        mid  = substr(out, RSTART + 3, RLENGTH - 7)
        post = substr(out, RSTART + RLENGTH)
        out  = pre "\\fillin{" mid "}" post
    }
    return out
}

function replace_italics(line,    out, pre, mid, post) {
    out = line
    while (match(out, /\*([^*]+)\*/)) {
        pre  = substr(out, 1, RSTART - 1)
        mid  = substr(out, RSTART + 1, RLENGTH - 2)
        post = substr(out, RSTART + RLENGTH)
        out  = pre "\\textit{" mid "}" post
    }
    return out
}

# -----------------------------------------
# MAIN
# -----------------------------------------
{
    line = $0

    # -----------------------------------------
    # H5 → \headingfive{...}
    # -----------------------------------------
    if (line ~ /^##### /) {
        sub(/^##### /, "", line)

        # Convert <u> BEFORE escaping
        line = replace_fillin(line)

        heading = escape_latex_specials(line)
        print "\\headingfive{" heading "}"
        next
    }

    # -----------------------------------------
    # H6 → \headingsix{...}
    # -----------------------------------------
    if (line ~ /^###### /) {
        sub(/^###### /, "", line)

        # Convert <u> BEFORE escaping
        line = replace_fillin(line)

        heading = escape_latex_specials(line)
        print "\\headingsix{" heading "}"
        next
    }

    # -----------------------------------------
    # Detect H3 as verse reference header
    # -----------------------------------------
    if (line ~ /^### /) {
        print line
        in_verse = 1
        next
    }

    # -----------------------------------------
    # Verse block (consume contiguous non-empty lines ONLY)
    # -----------------------------------------
    if (in_verse == 1 && NF > 0) {
        verse = line

        while ((getline nextLine) > 0 && length(nextLine) > 0) {
            verse = verse " " nextLine
        }

        verse = replace_fillin(verse)
        verse = replace_italics(verse)

        print "\\begin{verseblock}"
        print verse
        print "\\end{verseblock}"

        in_verse = 0
        if (nextLine != "") print nextLine
        next
    }

    # -----------------------------------------
    # Inline replacements (CONTENT ONLY)
    # -----------------------------------------
    if (!is_header(line)) {
        line = replace_fillin(line)
        line = replace_italics(line)
    }

    # -----------------------------------------
    # Cleanup (NON-DESTRUCTIVE)
    # -----------------------------------------
    gsub(/\\[0-9]+/, "", line)   # remove stray \1 \2 etc
    sub(/[ \t]+$/, "", line)    # trim trailing whitespace

    print line
}
