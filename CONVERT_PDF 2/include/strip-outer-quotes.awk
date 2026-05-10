#!/usr/bin/awk -f
# Remove surrounding double quotes ONLY if the entire line is exactly "\scripture{...}"

{
  line = $0

  # Match full-line: begins and ends with a double quote, and inside has \scripture{...}
  if (line ~ /^"\s*\\scripture\{[^}]*\}\s*"$/) {
    # Strip outer double quotes
    sub(/^"/, "", line)
    sub(/"$/, "", line)
  }

  print line
}
