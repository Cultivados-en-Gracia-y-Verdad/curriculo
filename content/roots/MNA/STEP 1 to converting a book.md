## STEP 1: to converting a book: 

## gawk -f mna-pass1.awk \

  ../SBLGNT/MorphGNT/1corintios-morphgnt.txt \

\> ../MNA/passes/1corintios.p1.md



## STEP 2

## STEP 3



## STEP 4

gawk -v book=1corintios -f mna-pass3.awk ../MNA/passes/1corintios.p2.md | \

gawk -v book=1corintios -f mna-pass4.awk > ../MNA/passes/1corintios.p4.md