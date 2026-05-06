#  ROOTS — GENERATION SPEC (AWK PIPELINE)

------

## 1. PURPOSE

This document defines the **programmatic rules** for generating the ROOTS dataset from:

- SBLGNT (via MorphGNT)
- NBLA (controlled local file)

The system must:

- extract data deterministically
- preserve full morphology
- include all verbs and connectors
- fail on any inconsistency

------

## 2. CORE PRINCIPLE

> ❗ The script does not interpret
>  ❗ The script does not decide structure
>  ❗ The script extracts and enforces

------

## 3. INPUT REQUIREMENTS

### Greek Source

```
content/roots/SBLGTN/MorphGNT/{book}-morphgnt.txt
```

Must contain:

- verse references
- Greek words
- morphology codes

------

### NBLA Source

```
content/roots/NBLA/{book}.nbla.md
```

Must contain:

- exact verse text
- consistent verse references

------

## 4. OUTPUT FORMAT (LOCKED)

Each verse must be:

```
### Book Chapter:Verse {#id}

Greek text (exact)

[NBLA text (exact, unchanged)]

- GreekVerb (Morphology) Spanish [F/NF]

- GreekConnector → (Spanish)
```

------

## 5. VERSE STRUCTURE RULES

Each verse MUST contain:

- header line
- Greek line
- NBLA line
- one blank line after block

------

### FAILURE CONDITIONS

If any are missing:

```
ERROR: Missing structure → {reference}
exit 1
```

------

## 6. VERB RULE (MANDATORY)

### ALL verbs must be listed

No filtering. No exceptions.

------

### Each verb must include:

- Greek form
- full morphology (unchanged)
- Spanish mapping
- `[F]` or `[NF]`

------

### Finite classification (RMAC-based)

| Pattern | Type       |
| ------- | ---------- |
| V-??I-  | finite     |
| V-??S-  | finite     |
| V-??M-  | finite     |
| V-P…    | non-finite |
| V-N…    | non-finite |

------

### Format

```
- ἠδυνήθην (V-ADI-1S) ==pude== [F]
- λαλῆσαι (V-AAN) hablar [NF]
```

------

### Enforcement

```
if (morph ~ /^V-/) {
    if (morph ~ /^V-..[ISM]-/) {
        tag = "[F]"
    } else {
        tag = "[NF]"
    }
}
```

------

## 7. CONNECTOR RULE (MANDATORY)

### ALL connectors must be listed

- whether they function in the verse or not
- no filtering
- no structural decision

------

### Connector list is Greek-driven only

------

### Format

```
- καί → (y)
- ἀλλʼ → [pero]
- γάρ → (porque)
```

------

### Enforcement

```
if (word in connector_list) {
    print "- " word " → " mapping
}
```

------

## 8. CONNECTOR MAPPING RULE

### Notation

| Case             | Format |
| ---------------- | ------ |
| explicit in NBLA | `( )`  |
| not explicit     | `[ ]`  |

------

### Example

```
- γάρ → (porque)
- ἀλλʼ → [pero]
```

------

### Enforcement

```
if (spanish_present) {
    mapping = "(" spanish ")"
} else {
    mapping = "[" spanish "]"
}
```

------

## 9. NBLA RULE (CRITICAL)

> ❗ NBLA must be used exactly as provided
>  ❗ No reconstruction
>  ❗ No approximation

------

### Enforcement

- dataset NBLA line must match NBLA file exactly
- if mismatch → fail

```
if (nbla_line != source_line) {
    print "ERROR: NBLA mismatch → " ref
    exit 1
}
```

------

## 10. GREEK TRACEABILITY RULE

Every element must exist in Greek:

- verbs
- connectors

------

### Enforcement

```
if (!(word in greek_verse)) {
    print "ERROR: Greek not found → " word
    exit 1
}
```

------

## 11. VERSE MATCH RULE

Greek and NBLA must align:

```
if (greek_ref != nbla_ref) {
    print "ERROR: Verse mismatch → " ref
    exit 1
}
```

------

## 12. NO INTERPRETATION RULE

The script must NOT:

- classify connectors
- determine clause relationships
- infer meaning
- restructure text

------

## 13. HARD FAILURE CONDITIONS

The script must exit if:

- missing verse structure
- missing NBLA line
- Greek word not found
- morphology missing
- NBLA mismatch
- verse mismatch

------

## 14. PIPELINE MODEL

```
READ → VALIDATE → EXTRACT → CLASSIFY → OUTPUT
```

NOT:

```
READ → GUESS → FIX → VERIFY
```

------

## 15. FINAL PRINCIPLE

> ❗ The script guarantees data integrity
>  ❗ ROOTS determines structure later