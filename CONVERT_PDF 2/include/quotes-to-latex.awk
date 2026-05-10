#!/usr/bin/awk -f
# Converts:
#   **bold**     → \textbf{...}
#   *scripture*  → \scripture{...}
# Avoids nested conversion

{
  line = $0

  # First: replace all **bold** safely
  while (match(line, /\*\*[^*][^*]*\*\*/)) {
    inner = substr(line, RSTART + 2, RLENGTH - 4)
    pre = substr(line, 1, RSTART - 1)
    post = substr(line, RSTART + RLENGTH)
    line = pre "\\textbf{" inner "}" post
  }

  # Then: replace *scripture* only if it's not bold
  while (match(line, /(^|[^*])\*[^*][^*]*\*([^*]|$)/)) {
    start = RSTART
    len = RLENGTH
    match_text = substr(line, start, len)

    star1 = index(match_text, "*")
    star2 = match(match_text, /\*[^*][^*]*\*/)

    if (star2 > 0) {
      inner = substr(match_text, star2 + 1, RLENGTH - 2)
      before = substr(line, 1, start + star2 - 2)
      after  = substr(line, start + star2 + RLENGTH - 1)
      line = before "\\scripture{" inner "}" after
    } else {
      break
    }
  }

  print line
}
