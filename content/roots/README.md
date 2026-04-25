---
title: ROOTS Verb + Connector Alignment Specification
version: 1.1
date: 2026-04-22
---

# ROOTS VERB + CONNECTOR ALIGNMENT SPECIFICATION

(SBLGNT + MorphGNT + NBLA)

------

## 1. PURPOSE

This document defines the rules for creating a **fully consistent, auditable dataset** that maps:

- Greek text (**SBLGNT via MorphGNT**)
- Morphology (**RMAC-style codes embedded in MorphGNT**)
- Spanish text (**NBLA**)

The dataset must be:

- ✔ mechanically reproducible
- ✔ strictly text-bound (Greek-driven)
- ✔ structurally reliable for ROOTS

------

## 2. CORE PRINCIPLE

> ❗ The dataset is not created — it is extracted
>  ❗ If it is not in the Greek, it does not exist
>  ❗ The dataset exposes data — it does not interpret structure

------

## 3. SOURCE REQUIREMENT

### Greek Source (MANDATORY)

MorphGNT / SBLGNT file:

```
content/roots/SBLGTN/MorphGNT/{book}-morphgnt.txt
```

This provides:

- Greek text
- full morphology (RMAC-style codes)

------

### Source Priority

1. Greek (SBLGNT / MorphGNT) → absolute authority
2. Morphology (RMAC-style) → grammatical data only
3. NBLA → alignment only (never drives decisions)

------

## 4. EXTRACTION WORKFLOW

```
Greek (MorphGNT)
→ extract verbs and connectors
→ preserve morphology
→ align to NBLA
→ validate
```

NOT:

```
Spanish → reasoning → generate structure
```

------

## 5. VERSE FORMAT (LOCKED)

Each verse must follow this exact structure:

```
### Book Chapter:Verse {#id}

[Greek text exactly from SBLGNT]

[NBLA text with connectors inserted]

- GreekVerb (Morphology) ==Spanish== [F/NF]

- GreekConnector → (Spanish)
```

A Spanish word can only be marked == == [F] if it is a finite verb.

If it cannot:
- be conjugated
- carry person/number
- function as the predicate of a clause

→ it is INVALID

# 6. NBLA SOURCE RULE

The NBLA text must be taken exclusively from the controlled NBLA source:

Local:
content/roots/NBLA/{book}.nbla.md

Published:
https://discipuladocgv.org/roots/nbla/{book}.nbla/

The local file is the authoritative source.

The published version must match the local file exactly.

No external or reconstructed NBLA text may be used.

## 7. VERB MORPHOLOGY RULE (MANDATORY)

All verbs present in the Greek text must be listed.

Each verb must include:

- Greek form
- full morphology code (unchanged)
- Spanish mapping
- classification tag:
  - `[F]` → finite
  - `[NF]` → non-finite

------

### Finite Identification (RMAC-based)

A verb is **finite** if:

- V-??I- → indicative
- V-??S- → subjunctive
- V-??M- → imperative

All others:

- participles (V-P…) → `[NF]`
- infinitives (V-N…) → `[NF]`

------

### Format

```
- ἠδυνήθην (V-ADI-1S) ==pude== [F]
- λαλῆσαι (V-AAN) hablar [NF]
```

------

### Critical Rule

> ❗ The morphology code must never be altered or removed
>  ❗ [F]/[NF] does not replace morphology—it supplements it

------

## 8. CONNECTOR RULE (MANDATORY)

Only connectors present in the Greek text may be included.

Each connector must be:

- extracted from Greek
- mapped to Spanish
- inserted into the NBLA line

------

## 9. CONNECTOR PLACEMENT RULE (CRITICAL)

All connectors must appear **inside the NBLA text** at the position corresponding to their location in the Greek sequence.

------

### Notation

| Symbol | Meaning             |
| ------ | ------------------- |
| `( )`  | explicit in NBLA    |
| `[ ]`  | inserted from Greek |

------

### Example

```
[(y) yo, hermanos, no pude hablarles como a espirituales, [pero] como a carnales...]
```

------

### Critical Constraint

> ❗ If placement cannot be determined from Greek order, the connector must not be included

------

## 10. CONNECTOR LIST FORMAT

```
- καί → (y)
- ἀλλʼ → [pero]
- γάρ → (porque)
```

------

### Important

> ❗ All connectors are listed uniformly
>  ❗ No classification (dependent / independent) is allowed

------

## 11. DATASET PURITY RULE

The dataset must contain **only observable elements**.

It must NOT include:

- interpretation
- clause decisions
- structural labeling
- connector classification
- probability markers (*, ^, etc.)
- inferred or reconstructed elements

------

## 12. TRACEABILITY TEST (MANDATORY)

Every element must pass:

> “Can this be directly pointed to in the Greek text?”

If **NO** → remove it

Applies to:

- verbs
- connectors
- inserted elements

------

## 13. VALIDATION RULES

Before finalizing a verse:

- Every verb exists in the Greek
- Every morphology code matches the source
- Every verb is correctly marked [F] or [NF]
- Every connector exists in the Greek
- Every connector is correctly placed in NBLA
- No additional words have been introduced

------

## 14. ROOTS EXECUTION NOTE

The dataset contains **data only**.

ROOTS steps operate as follows:

- Paso 2 → uses verbs ([F] only)
- Paso 4 → marks connectors
- Paso 5 → determines connection
- Paso 6 → determines structure
- Paso 8 → uses morphology (person/number) for [S] and [M]

------

## FINAL PRINCIPLE

> ❗ The dataset preserves ALL morphology
>  ❗ The dataset makes NO decisions
>  ❗ The method (ROOTS) performs all decisions later 