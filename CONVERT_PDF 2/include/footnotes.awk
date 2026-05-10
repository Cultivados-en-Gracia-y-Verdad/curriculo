#!/usr/bin/awk -f
# Inline Pandoc footnotes [^n] → ^[text]
# Single command, no temp files

{
  lines[NR] = $0

  # Capture footnote definitions
  if ($0 ~ /^\[\^[^]]+\]:/) {
    key = $0
    sub(/^\[\^/, "", key)
    sub(/\]:.*/, "", key)

    val = $0
    sub(/^\[\^[^]]+\]:[[:space:]]*/, "", val)

    notes[key] = val
  }
}

END {
  for (i = 1; i <= NR; i++) {
    line = lines[i]

    # Skip footnote definition lines
    if (line ~ /^\[\^[^]]+\]:/) continue

    # Replace references
    while (match(line, /\[\^[^]]+\]/)) {
      key = substr(line, RSTART + 2, RLENGTH - 3)
      if (key in notes) {
        pre  = substr(line, 1, RSTART - 1)
        post = substr(line, RSTART + RLENGTH)
        line = pre "^[" notes[key] "]" post
      } else {
        break
      }
    }

    print line
  }
}
