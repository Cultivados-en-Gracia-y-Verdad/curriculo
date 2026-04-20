# file creation process:

1. Create file from SBLGNT text: 
```
 ./generate.awk -v book=tito > tito.md
```
2. Create a new file from the newly created file in step 1 and add in NBLA Spanish text:
```
awk -f scripts/add_nbla.awk NBLA/tito.nbla.md SBLGNT/tito.md > roots-output/tito.out.md
```
3.  \# edit (add verbs)
3. gawk -f verify.awk SBLGNT/text/tito.txt tito-verbos.md
4. 