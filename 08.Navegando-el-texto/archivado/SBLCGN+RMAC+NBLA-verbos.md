---
title: SBLCGN+RMAC+NBLA verbos
---

# ROOTS VERB ALIGNMENT — README (UPDATED)

## PURPOSE

Produce a **fully consistent, auditable mapping** between:

- Greek text (SBLGNT)
- Finite verbs (based strictly on Greek morphology)
- Non-finite verbs (explicitly preserved)
- Spanish gloss (for readability, not interpretation)
- Structured Markdown for ROOTS processing and navigation

------

## OUTPUT FORMAT (LOCKED)

Each verse must follow this structure:

```
### Tito 1:1 {#tit-1-1}

<texto en español siguiendo el orden griego>

- <Greek> (RMAC) <Spanish gloss> [F/NF]
```

------

## VERSE REFERENCE RULE

- Every verse must include the **full reference**:
  - ✅ `Tito 1:1`
  - ❌ `1:1`
- Every verse must include a **unique anchor ID**:

```
{#tit-1-1}
```

### ID FORMAT (STRICT)

```
<book>-<chapter>-<verse>
```

Examples:

- `{#tit-1-1}`
- `{#gal-3-2}`
- `{#rom-8-1}`

------

## VERB DISPLAY FORMAT (FINAL — LOCKED)

```
- ἐστίν (V-PAI-3S) ==es== [F]
- λέγειν (V-PAN) decir [NF]
```

------

## ORDER RULE (STRICT)

Each verb line must follow this exact order:

```
Greek → (RMAC) → Spanish gloss → [F/NF]
```

No variation allowed.

------

## COMPONENT RULES

### 1. Greek Form

- Must match SBLGNT exactly
- No normalization or alteration

------

### 2. RMAC Code

- Must always be present
- Must be full RMAC morphology
- Must immediately follow Greek in parentheses

Example:

```
(V-PAI-3S)
```

------

### 3. Spanish Gloss (UPDATED RULE)

#### Finite verbs `[F]`

- Must be enclosed in:

```
==gloss==
```

#### Non-finite verbs `[NF]`

- Must be plain text (no markers)

```
gloss
```

------

### 4. Verb Classification

- `[F]` = finite verb
- `[NF]` = non-finite verb

------

## FINITE VERB RULE

Finite verbs include:

- Indicative
- Imperative
- Subjunctive
- Optative

Determined strictly by Greek morphology.

------

## NON-FINITE VERB RULE

Must always be included (never omitted):

- Infinitives
- Participles

------

## SPECIAL CASES (SIMPLIFIED)

### Infinitives of purpose / necessity

Do NOT label function.

```
- ἐπιστομίζειν (V-PAN) callar [NF]
```

------

### Participles

Always:

```
- διδάσκοντες (V-PAP-NPM) enseñando [NF]
```

------

## ORDER OF VERBS

- Must follow **Greek text order**
- Not reordered for Spanish readability

------

## PROHIBITIONS (STRICT)

Do NOT include:

- ❌ arrows (`→`)
- ❌ written labels like “finite / non-finite”
- ❌ highlighting non-finite verbs
- ❌ interpretive notes
- ❌ grammatical explanations
- ❌ functional labels (purpose, result, etc.)

------

## TEXT RULE

- Spanish must:
  - follow Greek structure
  - remain readable
  - avoid interpretation
  - avoid restructuring clauses

------

## PURPOSE OF THIS FORMAT

This dataset feeds directly into:

- ROOTS Paso 2 (finite verb identification)
- Paso 3 (clause segmentation)
- Paso 4–6 (connector logic)
- Structural pattern detection
- Automation pipelines

------

## DESIGN PRINCIPLES (LOCKED)

- Observation over interpretation
- Greek governs all decisions
- Visibility over explanation
- Consistency over flexibility
- Machine-readable + human-readable

------

# STATUS

✅ Format locked
 ✅ Visual distinction (F vs NF) enforced
 ✅ Ready for full NT generation
 ✅ Fully aligned with ROOTS workflow
