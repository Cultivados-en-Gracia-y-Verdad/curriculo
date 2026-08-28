# TEXTO_REPORT — apocalipsis (G3_TEXTUAL)

**Who:** Escriba, by hand (Verificador has no agent file). Not an independent verifier.
**What was checked:** `verify-clause-spans.py` on the Observer export; a reading of the two empty spans, the six leaner endings, and sampled clause relationships at Apocalipsis 22:6–18. Not a reread of all 1165 clauses.

**Script (evidence, exit 1):** 1165 clauses. 0 empty renders. 0 words lost to no clause. 2 unusable (no `selectedSpan`). 6 spans ending on a leaner. 10 surplus out-of-range indices (hygiene).

## Findings

### 14:8:8 — empty Spanish span (absorbed)

Observer: `selectedSpan: []`; `isWhatWasExpressed: yes` of `14:8:7`; `outlineStanding: dependent`.
Skeleton H4: *Cayó, cayó Babilonia, la ciudad grande*.
The second ἔπεσεν has no Spanish slice of its own; both *cayó* sit on `14:8:7`. Not LBF loss. Step 0 already named this split.

### 14:9:21 — empty Spanish span (absorbed)

Observer: `selectedSpan: []`; expressed of `14:9:5`; dependent. Words `14:9:21`– sit inside `14:9:13`’s span (*Si alguien adora… y recibe…*).
Skeleton: one nested line under `14:9:5`, not a second H4. Not LBF loss.

### 3:19:5 — line ends on a leaner

Skeleton and student manual: `- *Yo reprendo a todos los*`.
LBF continues; *disciplino* is the next H3 (`3:19:7`). Truncated header, not a missing verse.

### Leaner endings that are complete clauses

*Recuerda, pues* (`2:5:1`, `3:3:1`); *Sé celoso, pues* (`3:19:8`); *Mira, no* (`19:10:12`, `22:9:4`). The word list cannot tell these from a leaner.

## Sampled relationships (Observer ↔ skeleton)

- `22:6:7` expressed of `22:6:2` — skeleton/manual nest *Estas palabras* as what was said.
- `22:14:8` / `22:14:20` purpose of `22:14:1` — both under *Dichosos*.
- `22:18:18` / `22:19:13` expressed of `22:18:1` — add / take away as the testimony.

## Compiler representation still on the skeleton

Wrong participle hosts, parked prefixes, and `[^hoste]` on εἰ at 14:11 remain on the generated skeleton. Escriba relocated hosts in the student file and did not rewrite generated Scripture. Repair of those emitters is Observer / Compiler, not a silent skeleton edit.

## Verdict for this reading

No unexplained loss of LBF words in the spans checked. The two empty `selectedSpan`s are absorbed dependents. Residual Compiler host/particle defects are named, not hidden.

This is not a book-wide Verificador pass.
