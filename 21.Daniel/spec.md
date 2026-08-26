# Daniel — manual specification

Book-specific. Universal rules live in [`WORKFLOW.md`](../WORKFLOW.md) and are not repeated
here. Machine-readable contract: [`manifests/daniel.json`](../manifests/daniel.json).

**Status: DRAFT.** Not released.

---

## 1. Sources

| What | Path |
|---|---|
| Manual | `data/lbf/ot/daniel-manual.md` |
| LBF Spanish text | `data/lbf/ot/daniel.md` |
| Alignment | `data/lbf/ot/daniel.alignment.json` |
| Observer progress | `data/lbf/ot/daniel-progress-filled.json` |
| Editorial notes (not student content) | `data/lbf/ot/daniel-editorial-notes.md` |

Spine: **OSHB**. Hand alignment chs. 1–12.

**Verify verbs against `daniel.alignment.json`, never against the LBF prose.** LBF renders one
root several different ways; the alignment is what maps a source token to its Spanish surface.

---

## 2. Language switch

Daniel is not one language. Any note calling an Aramaic form Hebrew is a defect even when the
morphology is otherwise right.

| Range | Language |
|---|---|
| 1:1 – 2:4a | Hebrew |
| **2:4b – 7:28** | **Aramaic** |
| 8:1 – 12:13 | Hebrew |

---

## 3. Consequences of being an OT book

- The purpose-frame detector runs over Greek. **Observer supplies no telos candidate for
  Daniel at all.** That is the expected result, not a gap to fill. Any telos must come from the
  movement, quoted with its reference, or be reported as absent.
- Greek connector appendices and `Revise el rango griego…` warnings (×485) are pipeline
  leakage into an OSHB book. Report the leak once; do not treat each instance as a finding.
- **OT density is not breakage.** One clause row per Hebrew finite verb where the Spanish has a
  single predicate. Daniel runs ≈1.4 H3 per verse; chapter 2 has 61, chapter 11 has 77.
  An H4 that cuts mid-sentence but ends on a full word is the dense trunk, not a defect.
- **An H3 is a candidate turn, never an obligatory boundary.** Cut H2 by pressure, never by
  every finite verb.

---

## 4. Structural decisions taken

Five H1 developments. The four-H1 frame was **discarded** because it failed the H1 test: the
proposed clause for `1:1–4:37` ("lleva al rey más alto de la tierra a confesar que el Altísimo
se enseñorea") is not true of the three H2s in chapter 1, where Nebuchadnezzar is not being led
anywhere — he takes, assigns, interviews. The rule applied: *if the clause is not true of every
H2 under it, the boundary is wrong.*

| H1 | Range |
|---|---|
| 1 | 1:1 – 2:49 |
| 2 | 3:1 – 4:37 |
| 3 | 5:1 – 6:28 |
| 4 | 7:1 – 9:27 |
| 5 | 10:1 – 12:13 |

Chapter 11 (77 H3s) remains open: one long major development with internal H2s, or a further
H1 cut. Not decided until the root set is firm.

---

## 5. Known open debt

Carried from Step 0 (2026-08-06) and confirmed by `run-manual-checks.py` on 2026-08-08.

**Blocking:**

- **Generate has not been re-run since the 2026-08-06 span repairs.** The repairs landed in
  `daniel-progress-filled.json`; the current manual still carries the pre-fix surface. The
  deterministic checker reproduces the documented "before" state exactly — 22 one-word H4s,
  30 atonic tails, 9 duplicated H4s. **Re-run Generate before any naming or commentary work.**

**Observer debt:**

- 95 degenerate clause rows in the book; 69 still live in `-` lines. One row per OSHB finite
  verb, collapsing onto a single Spanish token.
- 20 verses have no clause row at all — they reach the manual as `+` phrases, so students read
  them, but they have no clause of their own: 1:4, 1:10, 2:21, 2:22, 2:26, 2:27, 2:32, 2:33,
  3:4, 3:25, 4:3, 4:7, 4:23, 5:8, 5:9, 5:12, 7:3, 8:21, 9:20, 10:6.
- `roots:daniel:brick3:dependentThoughtIntroducers` is empty — no clause has been marked
  dependent by hand, so the root set is provisional in that sense.

**Export debt:**

- Workshop appendices (`## Actores`, `## Movimiento`, `## Definiciones`) use **117 `####` for
  non-Scripture headings** (`#### VARÓN`, `#### YO`). This breaks the H4 convention and must be
  stripped before any student export.

---

## 6. Resolved — do not re-open

Judged once. Listed so they are not investigated again.

| Item | Resolution |
|---|---|
| `9:25` body absent from every line | Fixed. Clause marked imperative, `expressed` link cut. Root cause was Compiler applying a Greek apodosis-bleed clip to OSHB books in `displaySpanText()`; `splitClaimAtFinite()` already had the OT exception, line emission did not. |
| `5:27` truncated at *Pesado has* | Fixed — same emission defect. |
| Seam overlaps (4:34, 12:4, 2:41, 3:29, 4:20, 5:10, 7:23) | Repaired in data: 24 → 0 between H4s. |
| Nominals `4:37:4`, `11:1:7` | Discarded — predicate inside their own clause. |
| *Levántate* 7:5:20 · *entiende* 10:11:1 | Discarded — inside quoted speech already in the H4. |
| `12:12:3` *Bienaventurado…* | Nominal, already a root. |

The 9:25 fix is the pattern to follow: the cause was corrected **in the Compiler**, not papered
over by promoting the clause to a root. Promoting it would have invented independence the text
does not have.

---

## 7. Observed evidence (Observer — not interpretation)

- Dominant actors: *Yo* 99 · *Daniel* 92 · *dios* 84 · *Nabucodonosor* 36 · *ellos* 25
- Tone: 931 declarations · 51 commands
- Returning words: *rey* 171 · *Daniel* 75 · *Dios* 67 · *reino* 65

The `Hilo de taller`, `Inicios H2 (taller)`, `Costuras de presión` and `Convergencia` lines in
`daniel-editorial-notes.md` are **workshop hypotheses of movement**. They are labels for
orientation and are never pasted as H1/H2 titles.

---

## 8. Open questions

- Chapter 11: one H1 or two?
- Frame gerunds (*hablando…*, *mirando…*, *Estando…*) — thinned in Observer alongside the
  packaging, or carried as a Note once the surface is clean?
- Footnote tags: Compiler emits `[^part]`/`[^inf]`; finished manuals carry `[^P]`/`[^I]`. Pick
  one canonical pair and apply it at the emitter — hand patches are undone by regeneration.
