file creation process:

1. ./generate.awk -v book=tito > tito.md
2. \# edit (add verbs)
3. gawk -f verify.awk SBLGNT/text/tito.txt tito.md
4. 