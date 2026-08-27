# Apocalipsis — G2_MECHANICAL, skeleton packaging

**Artifact:** `skeleton/apocalipsis-manual-skeleton.md` · 803 H4 in the student body
**Script:** `verify-skeleton-h4-packaging.py` → **FAIL** (15 dangling, 1 overlap)
**Reading:** performed. Script and reading **disagree on 4 of the 16 findings.**

> Evidence, not verdict. Each finding is classified below before anything is repaired.
> Clause structure is Observer's. Nothing here is to be fixed in the manuscript.

---

## CONFIRMED_DEFECT — 12 H4s cut inside a phrase

Nine of the twelve are in **chapter 14**. That concentration is the finding: this is one
localized span problem, not scattered noise.

| Ref | H4 ends on | Why it cannot be a clause end |
|---|---|---|
| 14:13:8 | `los` | `Dichosos los` — cut inside the noun phrase *los muertos* |
| 14:13:19 | `sus` | `descansen de sus` — cut before the noun |
| 14:14:2 | `su` | `que tenía sobre su` — cut before the noun |
| 14:15:4 | `tu` | `Envía tu` — cut before *hoz* |
| 14:15:22 | `ha` | `porque te ha` — cut inside the verb, auxiliary with no participle |
| 14:7:5 | `y` | `a Dios y` — cut at the coordinator |
| 14:7:9 | `porque` | `denle gloria, porque` — leans into the reason clause |
| 14:11:10 | `y` | cut at the coordinator |
| 14:11:13 | `si` | leans into the condition |
| 12:16:8 | `y` | `tierra abrió su boca y` — cut at the coordinator |
| 19:10:12 | `no` | `Mira, no` — cut before *lo hagas* |
| 22:9:4 | `no` | `Mira, no` — same shape, same defect |

**Owner: the Compiler — see the root cause below.** My first pass assigned these to Observer on
the assumption that a broken Spanish clause means a broken span. It does not. Jason's Greek spans
are sound in 11 of 12 cases.

---

## FALSE_POSITIVE — 3 postposed *pues*

| Ref | H4 | LBF |
|---|---|---|
| 2:5:1 | `Recuerda, pues` | *Recuerda, pues, de dónde has caído* |
| 3:3:1 | `Recuerda, pues` | — |
| 3:19:8 | `Sé celoso, pues` | *Sé celoso, pues, y arrepiéntete* |

*Pues* here is a postposed particle (Greek οὖν, postpositive), not a forward-leaning
conjunction. The imperative clause is complete. The word list cannot tell the two uses apart
and should not try — this needs a reading.

No change to the script. Recorded so the next pass does not re-raise it.

---

## FALSE_POSITIVE — 1 adjacent overlap

```
shared 3: persiguió a la mujer ‖ a la mujer le fueron dadas dos alas del gran águila
```

12:13 ends *persiguió a la mujer*; 12:14 opens *y a la mujer le fueron dadas*. **The text
repeats the phrase**; the spans are correct. The rule fails any ≥3-word seam repeat and cannot
distinguish a span error from Scripture repeating itself across a verse boundary.

---

## Defect found in the checker itself — fixed

`fold()` strips diacritics, so **`más` folded onto `mas`**, a conjunction in the dangling list.
*No tendrán hambre nunca más* was reported as a clause ending on *but*. Four findings, all
false.

The file already handled this class for `Él`/`él` without generalizing. Added
`TONIC_NOT_DANGLING` — `más · sí · qué · aún · cómo · dónde · quién · cuál · cuándo · él · tú
· mí`. Deliberately an explicit list and not "accented ⇒ not dangling": **`según` carries an
accent, folds onto a list word, and really is a leaner.**

Dangling count 19 → 15 on the same artifact.

---

## Second witness — `run-manual-checks.py`

Broader scope (whole file, 1264 H4 including appendices, against 803 in the student body) and a
different rule set. It found more, which is the point of running it:

| Finding | Count |
|---|---|
| One-word H4 | 83 |
| Atonic tails | 31 |
| Seam overlaps ≥6 words | 3 |
| **Scripture lines with no italics** | **461** |
| Footnote reference with no definition | 1 |
| Repeated H4 | 19 |

Full detail in `PYTHON_REPORT.md`. That script never prints PASS by design.

The two witnesses do not agree on magnitude — 15 dangling against 31 atonic tails, 1 overlap
against 3 — because they use different rules over different scopes. **Neither number is the
truth.** Both point at the same conclusion.

**461 Scripture lines without italics** is the largest single finding and was invisible to the
packaging gate. It is a marking convention, not a span error, but it is Compiler emission debt
and will propagate into every downstream pass if it is not fixed at the emitter.

---

## Root cause — the clause spans, not the emitter

> **Correction.** An earlier revision of this report blamed the Compiler's Spanish projection and
> called for rewriting the emitter. **That was wrong**, and acting on it would have meant rewriting
> correct code. The finding below replaces it.

`selectedSpan` holds **Spanish word indices** (`chapter:verse:wordIndex`, 0-based) — not Greek
token ids. `formatClauseSpanAcrossVerses` reproduces them **exactly**. Verified against the export:

| Clause | span idx | Spanish words at those indices | H4 in the skeleton |
|---|---|---|---|
| 14:13:8 | 10–11 | `Dichosos los` | `Dichosos los` |
| 14:15:22 | 22–24 | `porque te ha` | `porque te ha` |
| 14:7:5 | 5–7 | `a Dios y` | `a Dios y` |
| 19:10:12 | 11–12 | `Mira no` | `Mira, no` |

The emitter is faithful. **The spans are what they are: the words selected in the Observer are the
words that came out.** Owner: Observer.

### Why the misdiagnosis happened — worth recording

`wordId(chapter, verse, index)` and `finiteAlignmentId(chapter, verse, token)` both return
`` `${chapter}:${verse}:${n}` ``. **Two different id spaces, one string shape.** Reading a Spanish
word index as a Greek token id and looking it up in the alignment returns real-looking output —
`los muertos`, `ha llegado` — which is far more dangerous than an error that looks like one.

Anything consuming these ids should carry the distinction in its variable names, and any future
analysis crossing the two must state which space it is in before it starts.

### Prevention — a pre-Generate gate

`scripts/verify-clause-spans.py` runs on the Observer export **before** the Compiler, and finds
more than the skeleton gate can:

| | pre-Generate | post-Generate |
|---|---|---|
| spans ending on a leaner | 18 | 15 |
| single-word spans | 17 | — |
| **non-contiguous spans** | **24** | invisible |
| unusable / missing | 18 | — |

Non-contiguous spans are the ones worth the whole exercise: `10:3:11` selects words
`9, 12, 13, 14 …`, skipping 10 and 11. The H4 reads as continuous Scripture with words silently
missing, and no downstream check can see it — the words are present elsewhere in the file, so
coverage passes.

---

## Verdict

**Bloqueado.** Twelve confirmed defects exceed the threshold of ten, and they are upstream
packaging debt of exactly the kind that locks into weeks of downstream work.

Do not start Arquitecto naming.

**Fix the emitter, not the data.** Eleven of twelve are one defect in the Spanish projection.
One (`14:11:10`) is a real span question for Jason. Then re-Generate, re-record the compile
(`cgv compile record`), and re-run this gate.

The 461 unitalicised Scripture lines are also emitter debt and should go in the same change.

Four of sixteen script findings were false. The script was not wrong to raise them — its rules
do not cover these cases. That is why the reading is the second witness.
