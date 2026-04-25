CURRENT STATE:

Pass3:
- working
- lexical override functioning (ἡγιασμένοις fixed)

Pass4:
- still positional (broken)
- needs to switch from "consume" → "search"

Problem:
- Greek and NBLA word order diverge
- alignment drift occurs after expansions

Next step:
- implement semantic search using map[]
- stop sequential consumption





Goal: Fix Pass4 only



first command on return (from /roots/scripts/):

gawk -f scripts/mna-pass4.awk \
../MNA/passes/1corintios.p3.md \
\> ../MNA/passes/1corintios.p4.md