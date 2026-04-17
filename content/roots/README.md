# ROOTS Verb Alignment Specification (SBLGNT + RMAC + NBLA)

## PURPOSE

This document defines the rules for creating a **fully consistent, auditable mapping** between:

- Greek text (**SBLGNT**)
- Morphology (**RMAC**)
- Spanish translation (**NBLA**)

The dataset must be:

- ✔ mechanically reproducible
- ✔ text-bound (Greek-driven)
- ✔ structurally reliable for ROOTS

------

# CORE PRINCIPLE

👉 **The dataset is not created — it is extracted.**

👉 **If it is not in the Greek, it does not exist**

- ❌ No implied verbs
- ❌ No supplied copulas (e.g., ἐστίν)
- ❌ No backfilling from Spanish
- ❌ No inferred or reconstructed forms

------

# SBLGNT SOURCE REQUIREMENT

## Rule

All Greek verb data must be derived exclusively from:

```
SBLGNT/text/{book}.txt
```

This is the **single authoritative source**.

------

## Source Priority

1. **SBLGNT Greek text** → absolute authority
2. **RMAC morphology** → classification only
3. **NBLA Spanish** → mapping only (never drives decisions)

------

# EXTRACTION REQUIREMENT (NON-NEGOTIABLE)

## Definition

A verb is valid only if:

- It is **visibly present** in the SBLGNT verse
- It is **copied exactly** from the source text
- It matches the exact Unicode surface form as it appears in the SBLGNT file (no normalization, no alteration)

------

## Forbidden Process

- ❌ Reconstructing Greek from memory
- ❌ Using “expected” or standard forms
- ❌ Normalizing before entry
- ❌ Inferring from Spanish
- ❌ Completing the sentence artificially
- ❌ Using tools (lexicons/interlinears) as a source

------

## Required Workflow

```
SBLGNT text → extract verb → assign RMAC → map to NBLA
```

NOT:

```
NBLA / reasoning → generate Greek → format output
```

------

## Zero-Tolerance Rule

If any verb:

- is not present in SBLGNT
- is altered
- is inferred

👉 The verse is invalid and must be corrected.

------

# VERB IDENTIFICATION

## Finite Verbs `[F]`

A verb is finite if it has:

- person
- number

Example:

```
εἰσίν (V-PAI-3P) ==son== [F]
```

------

## Non-Finite Verbs `[NF]`

Includes:

- infinitives
- participles
- verbal adjectives

Example:

```
ὄντες (V-PAP-NPM) siendo [NF]
```

------

# FORMATTING RULES

## Verb Line Format

```
Greek (RMAC) ==Spanish== [F]
Greek (RMAC) Spanish [NF]
```

------

## Rules

- Greek form first (exact SBLGNT form)
- RMAC code required
- Spanish:
  - ✔ inside `== ==` ONLY for finite verbs
  - ❌ never for non-finite verbs
- Tag required:
  - `[F]` or `[NF]`

------

# VERSE STRUCTURE

## Format

```
### Book Chapter:Verse {#id}

[NBLA verse text]

- verb lines
```

------

## Example

```
### Tito 1:10 {#tit-1-10}

Porque hay muchos rebeldes, habladores vanos y engañadores, especialmente los de la circuncisión,

- εἰσίν (V-PAI-3P) ==son== [F]
```

------

# STRUCTURE RULES

## Verse Separation

- ✔ Exactly **one blank line between verses**
- ❌ No missing separation
- ❌ No multiple blank lines

------

## Verses With No Verbs

- ✔ Always print the verse
- ✔ Do not add any lines under it

Example:

```
### Tito 1:1 {#tit-1-1}
[text]

### Tito 1:2 {#tit-1-2}
[text]
- verb
```

------

## No Artificial Content

- ❌ No non-verbs
- ❌ No comments
- ❌ No explanations
- ❌ No placeholders
- ❌ No “filtered out” or “omitted” lines (only include actual verb entries)

------

# ALIGNMENT RULES

- Spanish must reflect **NBLA wording**
- Mapping must correspond to the Greek verb
- Do not force 1:1 mapping
- Do not invent translations

------

# VERIFICATION PROCEDURE (MANDATORY)

Every verse must pass all steps.

------

## Step 1 — Greek Presence

- Extract only verbs present in SBLGNT
- Every verb must be directly visible

------

## Step 2 — RMAC Classification

- Verify morphology
- Assign `[F]` or `[NF]` correctly

------

## Step 3 — NBLA Alignment

- Map verb to Spanish
- Do not introduce new verbs

------

## Step 4 — Output Integrity

Verify:

- ✔ Correct format
- ✔ RMAC present
- ✔ Correct `[F]/[NF]`
- ✔ Exactly one blank line between verses
- ✔ No extra content
- ✔ Only Greek verbal forms

------

## Step 5 — Final Validation

Ask:

> “Can every verb be directly pointed to in the SBLGNT text?”

- If NO → reject
- If YES → accept

------

# HARD REJECTION RULES

Reject immediately if:

- Verb not in SBLGNT
- Supplied verb inserted
- Misclassified verb
- Spanish drives structure
- Formatting is incorrect
- Non-verbs appear

------

# ERROR EXAMPLE

## Incorrect

```
### Tito 1:1
[text]
- ἐστίν (V-PAI-3S) ==es== [F]
```

❌ Not in Greek

------

## Correct

```
### Tito 1:1
[text]
```

✔ No verbs listed

------

# FUNCTIONAL PURPOSE (ROOTS)

This dataset feeds:

- Paso 2 — Verbos finitos
- Paso 3 — Cláusulas
- Paso 4+ — Estructura

Therefore:

- Finite verbs define structure
- Non-finite verbs remain for audit

------

# FINAL CHECKLIST

Before accepting:

- ✔ Greek matches SBLGNT
- ✔ RMAC correct
- ✔ F/NF correct
- ✔ No implied verbs
- ✔ NBLA mapping correct
- ✔ Exactly one blank line between verses
- ✔ No comments or placeholders
- ✔ Only verbs included
- ✔ Every verb traceable

------

# STATUS

👉 This specification is **LOCKED**

👉 The dataset must be:

- reproducible
- verifiable
- text-bound

Any deviation breaks:

- ROOTS structure
- data integrity
- downstream use

------

This version removes:

- contradictions
- scattered authority
- loopholes that allowed generation

And it enforces one thing clearly:

👉 **Extraction over everything**
