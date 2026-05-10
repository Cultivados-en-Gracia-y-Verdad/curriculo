awk '
BEGIN{blank=0}
{
  if ($0 ~ /^[[:space:]]*$/) {
    blank++
    if (blank==2) print "\n---"
  } else {
    blank=0
    print
  }
}' input.md > slides.md