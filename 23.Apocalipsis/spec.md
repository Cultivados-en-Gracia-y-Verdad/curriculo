# Apocalipsis — manual specification

Book-specific. Universal rules live in [`WORKFLOW.md`](../CGV-curriculo/WORKFLOW.md) and are not
repeated here. Literary units live in [`blocks.md`](blocks.md).

**Status: APPROVED** (G10). Gate surface enriched post-approval; **G7/G8 STALE** — rerun
`cgv verify-g7 apocalipsis` and `cgv verify-g8 apocalipsis` before RELEASE.

---

## 1. Sources

| What | Path |
|---|---|
| **Gate surface (student manual)** | `manual/manual.md` — G6–G10, verify-g7/g8, PDF export |
| Legacy workshop (inventory only) | `manual/apocalipsis-manual.md`, `manual/apocalipsis-manual-editor.md` |
| Manual (assembled / Presenter) | `slides/manual.md` |
| LBF Spanish text | `cgv-data/bibles/LBF/apocalipsis.lbf.md` |
| Alignment | `cgv-data/bibles/LBF/alignments/apocalipsis.alignment.json` |
| Observer progress | `observation/apocalipsis-progress-filled.json` |
| Compiler skeleton | `skeleton/apocalipsis-manual-skeleton.md` |
| Editorial notes (not student content) | `reports/apocalipsis-editorial-notes.md` |

Alignment spine: **SBLGNT** (done 2026-08-21; see the LBF file header). 404 verses, 22 chapters.

**Technical footnotes (Greek form / morphology / TR variants):** **Scrivener 1894**
(`cgv-data/bibles/TR1894/tr1894.txt`). Name that edition in the student note block; do not say
generic “Texto Recibido” alone. Where Scrivener and another TR print differ, Scrivener is cited;
critical-text alternatives are noted only when they affect the observation.

**Verify verbs against the alignment, never against the LBF prose.** LBF renders one root several
different ways; the alignment is what maps a source token to its Spanish surface.

---

## 2. Language

| Range | Language |
|---|---|
| 1:1 – 22:21 | Greek |

One language throughout. The Greek connector rules in `MANUAL_STANDARD.md` apply here; the
OT-leakage exemptions written for Daniel and Zacarías do not.

Any note calling a form by the wrong language is a defect even when the morphology is right.

---

## 3. Genre and form

The philosophy is explicit: *Dios eligió género. El género importa.* ROOTS asks *¿Respeta el
género?* — this section is what makes that question answerable.

**Book genre:** TO BE FILLED BY THE BLOCK INVENTORY. Name it in the book's own words. The book
calls itself *Revelación* (1:1) and *profecía* (1:3), and it opens with letters. Do not write
*apocalíptico* unless the text uses the word — see the naming rule below.

**Marker counts observed in LBF, not yet grouped** — raw counts only, no series claimed:

| String | Occurrences |
|---|---|
| *Y vi* | 47 |
| *Y oí* | 20 |
| *Escribe* | 11 |
| *Después de esto vi* | 5 |
| *en el Espíritu* | 2 |

These are string counts, nothing more. Which of them open units, which are internal, and how they
group into series is Arquitecto's Step 1 and requires a reading. A count is not a series.

**Recurring formulae that mark units** — quote them from LBF with references:

| Formula | Where it recurs | What it marks |
|---|---|---|

**Naming rule (Constitution §5.4 — category compression).** A form may be named **only from a
marker the unit actually contains** — the marker word itself, or a name built from the marker's own
verb, with the derivation declared in `blocks.md`.

- Permitted: the words the book itself uses — *visión*, *carga*, *palabra de Jehová*, *proverbio*.
- Forbidden: imported form-critical categories — *oráculo de salvación*, *pleito del pacto*, any
  Gattung name. They compress a development into a system category the text does not state.

Counting a repeated formula is observation, not interpretation: *octava visión* is a count of the
text's own marker.

---

## 4. Consequences of this book's genre and language

What the pipeline does differently here, and why. Examples of the kind of thing that belongs:

- Whether Observer supplies a telos candidate at all, and what stands in for it if not.
- Pipeline leakage from the other testament (Greek connector appendices on a Hebrew book, and the
  reverse). Report the leak once; do not treat each instance as a finding.
- Expected H3 density and whether density is breakage or the dense trunk.
- Whether an H3 is a candidate turn or an obligatory boundary here.

---

### Known risk — the convergence engine is tuned for 1 John

The Movement Explorer bar (`OPENS` / `INTENSIFIES`, `convergence-engine.ts`) is a weighted sum of
movement signals per verse, normalized against the book's own maximum. Its detectors were built on
1 Juan: writing-purpose statements, vocatives (*Hijitos*, *Amados*), discourse resets, assurance
formulas (*en esto sabemos*).

**They have not been validated on this genre.** One concrete misfit is already visible:
`writingPurpose` (weight 5) detects the author stating why *he* writes — *escribo* / *anunciamos* +
*para que*. In Apocalipsis 1:19 *Escribe* is a command **to** John from the speaker. The engine
cannot tell those apart.

Consequence for reading the chart: **a low bar is not evidence that a verse carries little weight,
and a high bar is not evidence that it is a structural boundary.** The engine ranks where signals
converge, and its own spec says it never names a section — the student places the H2.

Observed example: 1:17 carries a much longer bar than 1:19, which is customarily read as the
book's outline verse. That is a fact about detector convergence, not about the book's structure,
and it does not adjudicate the interpretation. Recover what actually fired from the Compiler's
hotspot line — `puntos {score} · {kinds}` — before drawing any conclusion.

Observable, and safe to carry: the command in 1:19 stands inside the same uninterrupted speech that
begins at 1:17 — *diciéndome: No tengas miedo. Yo soy el primero y el último… Escribe*. The
self-identification precedes the command, in one mouth. What that implies about the book's key is
interpretation and belongs in a finding, not in the manual.

---

## 5. Structural decisions taken

The H1 frame, with the ranges. **Record the frames that were tried and discarded, and why** — that
is the part a later reader cannot reconstruct.

| H1 | Range | What the author does across the whole span |
|---|---|---|

---

## 6. Terminology

Decisions locked for this book: how a recurring term is rendered, what is never used, what a
previous book did differently and why this one departs.

---

## 7. Known debt

Open questions, unresolved findings, and anything explicitly accepted by a human rather than fixed.
A requirement that cannot be demonstrated counts as **not met**, never as absent.
