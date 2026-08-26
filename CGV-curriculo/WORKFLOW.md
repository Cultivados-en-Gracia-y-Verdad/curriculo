# CGV — Production Workflow

The objective production, verification, and release process for **every** CGV manual.

This document is universal. It never becomes book-specific. Anything true only of Daniel, or
only of 1 Juan, belongs in that book's spec — see [Scope boundary](#scope-boundary).

```
WORKFLOW.md              universal production standard  (this file)
    ↓
specs/{libro}.md         book-specific specification
manifests/{libro}.json   book-specific machine-readable contract
```

---

## 1. Purpose

To produce manuals whose correctness can be **demonstrated**, not asserted.

> **A CGV manual is not complete because an AI says it is complete. It is complete only when
> it satisfies the applicable specification and passes all required verification gates.**

This replaces the question "what do we think this agent should do?" with "what does the CGV
production standard authorize this agent to do?"

---

## 2. Universal principles

1. **Preserve source material.** Scripture and technical data are never edited in place.
2. **Never invent information.** No fact, gloss, date, or telos without a source.
3. **Never silently reconcile conflicting evidence.** Report both; choose neither.
4. **Distinguish observation from interpretation.** The manual shows how to observe.
5. **Distinguish generation from verification.** No agent verifies its own claims.
6. **No agent is authoritative outside its assigned role.**
7. **Uncertainty must be surfaced, not hidden.** "I could not confirm this" is a result.
8. **A polished manuscript is not necessarily a verified manuscript.**

### The two-witness rule

A script and a reading are two different witnesses. **Neither is the gate alone.** Run the
script for evidence, then read the surface. Report both. If they disagree, the verdict is
blocked. Never report a script PASS as a verdict.

This rule exists because a packaging gate once returned PASS on a skeleton whose hinge verse
was absent from every line of the manual. The script was not lying; its rules did not cover
the case. Every gate has an uncovered case.

---

## 3. Universal CGV structure

### Hierarchy

| Level | Role | Rule |
|---|---|---|
| `#` H1 | major development | an unbroken run of consecutive H2s |
| `##` H2 | continuous development | an unbroken run of consecutive H3s; top and small |
| `###` H3 | section context title | orientation only; never teaches |
| `####` H4 | **textual anchor** | the exact independent clause; Scripture only |

H1–H3 orient. They never teach, argue, or conclude. H1 and H2 spans must **tile the book** —
each ends the verse before the next begins; a gap or overlap means a verse is lost.

`#####` and `######` never appear in a CGV manual.

### Markers

| Marker | Content | Editable by |
|---|---|---|
| `####` | independent clause — **Scripture only** | nobody |
| `-` | dependent clause — **Scripture only** | nobody |
| `+` | phrase — **Scripture only** | Escriba may split; no word may be lost |
| `*` | mechanical / evidence (actors, grammar, Def/XRef) | nobody |
| `>` | writer commentary | Escriba |

`-` and `+` are reserved for Scripture. A line such as `Actores principales: …` must start
with `*`. Every scriptural word appears exactly once across `####` / `-` / `+`.

Indentation left→right is structural depth. A dependent nests under the clause it actually
depends on; a hanging participle or relative sits under its noun host with no blank line
between host and hanger.

### Clause structure

Structure is **observed, not imposed**. An anchor clause is an independent clause not
introduced by a subordinator — it is the structural controller, not the theological centre.
Coordinators (*y, pero, o, mas, sino*) join equals and do not subordinate; do not assume one
anchor per sentence.

A clause that opens with a subordinator is dependent however it was coded. A nominal clause —
where the source predicates without a verb and the target supplies one — is a real independent
clause and stands in the trunk exactly as a verbal one does.

### Commentary and `<u>`

- Each `>` paragraph carries **exactly one** short `<u>word</u>`.
- Never underline a heading, a `+`, a `-`, a `####`, or any Scripture. Never a long word.
- A `>` may be a developed paragraph; slides count `>` blocks, not sentences.
- Never leave an actor triple (`*X* → *Y* → *Z*`) unexplained.

### Slides

Blank line = new slide. About four lines per slide. Never blank after every line. **Never put
a line on the same slide that outdents from the line above** — an outdent starts a slide.

### Footnotes and identifiers

- Every `[^tag]` reference has a definition; every definition is referenced.
- One canonical tag set per book, applied in a single place. A tag renamed by hand is undone
  by the next regeneration — fix it at the emitter.
- Clause identifiers (`{chapter}:{verse}:{token}`) are protected data. An identifier that
  disappears between two versions is a defect regardless of how the text reads.

### Protected content

Never altered by any agent, in any mode:

- Scripture text and references
- source-language text, morphology, glosses
- clause identifiers and spans
- `*` mechanical/evidence lines
- footnote definitions

Problems in protected content are **flagged upstream to Observer/Compiler**, never repaired in
the manuscript. Repairing a symptom in place hides the defect and it regenerates.

---

## 4. Content standard

A CGV manual **guides the reader through the text**, phrase by phrase. Explanation always
follows the text; it never precedes it.

Forbidden in commentary: interpretation, application, theological teaching, imported
conclusions from later in the book, invented questions, fabricated telos, workshop hypotheses
presented as headings.

Ask of every line: **would the original reader know this yet, here?**

**The final test:** does the reader meet the words of the text first, or your words about the
text? If the answer is unclear, the passage needs correction.

Language: Latin American Spanish, around 8th grade — never dumbed down, never cut for brevity.

---

## 5. Roles and authority

Each agent has a job description **and a clearance**. Authority is enforced mechanically by
`scripts/check-authority.py`, which diffs before/after and fails any change outside clearance.
**The agent does not get to explain itself.** The diff is the verdict.

| Agent | Can | Cannot |
|---|---|---|
| **Arquitecto** | telos, H1/H2/H3 naming, architecture | verify its own claims; alter technical source data |
| **Escriba** | write prose, split `+`, refine `###` | verify its own historical/theological claims; touch `####` or `-` |
| **Editor** | whitespace, markdown corruption, structural damage | add facts, rewrite interpretation, change Scripture, fix languages, correct theology |
| **Verificador** | identify problems | rewrite anything; approve anything |
| **Specialists** | adjudicate within one domain | rewrite; adjudicate outside their domain |
| **Human** | everything | — |

This prevents the helpful-AI failure: an agent deciding to improve something it was not
authorized to touch.

---

## 6. Model tiering

Assign tier by the **risk and type of judgment** an agent may make — never by how hard its job
sounds.

> **Editor is allowed to be stupid. Verificador is not allowed to be trusting.**

| Tier | For |
|---|---|
| **Python** | anything provable: counts, coverage, balance, before/after diffs |
| **Small local (≈4B)** | deterministic anomalies — blank lines, malformed markers, duplication, identifier counts |
| **Mid local (≈9B)** | triage — inspect only suspicious passages, route what it cannot settle |
| **Strong model** | claims requiring real judgment: interpretation boundaries, disputed history, prose, architecture |
| **Human** | release approval |

A small model must **detect and route**, never adjudicate. "I cannot confirm this" is the
correct output when the data does not settle it. Guessing to appear decisive is the failure.

---

## 7. Report protocol

Agents communicate through **short reports**, never by rewriting each other's work.

```
reports/{libro}/
  PYTHON_REPORT.md   EDITOR_REPORT.md   TEXTO_REPORT.md   ESTRUCTURA_REPORT.md
  VERIFIER_REPORT.md HEBREW_REPORT.md   HISTORY_REPORT.md OBSERVATION_REPORT.md
  ARQUITECTO_REPORT.md   RELEASE_CHECK.md
```

Rules:

- A downstream agent reads the **reports**, not the manuscript.
- Only the cheapest agent reads the whole file. Specialists receive a **ref list** and load
  only those passages. If handed a whole book when the input should be a ref list, ask for it.
- Every finding **quotes text and gives a reference**. A finding with no quote is not a
  finding.
- Zero findings is a claim and needs its own evidence: say what was checked and how.

---

## 8. Verification gates

```
        Python deterministic checks
                  ↓
        Editor            (mechanical anomalies)
                  ↓
        Verificador       (triage, challenge claims)
                  ↓
   ┌──────────────┼──────────────┬──────────────┐
 Textual      Languages      Historical     Observation
   └──────────────┼──────────────┴──────────────┘
                  ↓
        Escriba           (prose repair)
                  ↓
        Arquitecto        (architecture, telos)
                  ↓
        Release gate → HUMAN APPROVAL
```

Authoring a new book runs Arquitecto → Escriba first, then the gates. Repairing an existing
manuscript runs the order above. The gates are the same either way.

After **every** agent modification, run the authority check against the previous version.

---

## 9. Release

`scripts/release-gate.py` evaluates the manuscript against its manifest.

**The default is NOT RELEASED.** The manuscript earns FINAL; it is never presumed to have it.

A requirement that cannot be demonstrated counts as **not met** — never as absent. A gate that
cannot prove something reports it unproven.

Release requires: structure matches the manifest · markdown integrity · every required review
complete · no unresolved blocking finding · no unauthorized change in any before/after diff ·
declared open debt resolved or explicitly accepted by a human.

---

## Scope boundary

**This file never becomes book-specific.**

| Belongs here | Belongs in `specs/{libro}.md` |
|---|---|
| marker meanings, hierarchy, authority | which source texts and spines the book uses |
| the two-witness rule, release definition | language switches, chapter ranges |
| report protocol, model tiering | structural and architectural decisions taken |
| content standard | terminology, known debt, per-book gotchas |

If a rule mentions a book name, it is in the wrong file.
