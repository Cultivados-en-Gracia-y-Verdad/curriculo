```
# MORPH-NBLA ALIGNMENT (MNA)

## PURPOSE

This project creates a strict, token-level alignment between:

- MorphGNT (Greek + morphology)
- NBLA (Spanish translation)

The goal is to produce an objective source layer for:

- ROOTS dataset
- verb identification
- connector identification
- interlinear display
- lexical extraction

This layer contains **no interpretation**.

---

## CORE PRINCIPLE

Each Greek token must map to:

→ the exact NBLA word(s), OR  
→ a minimal Spanish equivalent if no NBLA word exists

Every Greek token must be classified as:

1. direct
2. merged-forward
3. merged-backward
4. missing
5. expanded

No token is left unclassified.

If one Greek token maps to one Spanish token:

→ alignment = direct

Even if:
- participle → finite verb
- adjective → clause
- noun → phrase

Form change ≠ expansion

EXPANDED = ONLY when one Greek token maps to multiple Spanish words

FORM SHIFT ≠ EXPANDED
PARTICIPLE → finite verb = still DIRECT
---

## ALIGNMENT RULES

### 1. NBLA PRIORITY

If the NBLA expresses the word:

- Use the NBLA wording exactly
- Preserve multi-word expressions

Example:

ἡγιασμένοις → han sido santificados

---

### 2. SUPPLIED EQUIVALENTS

If no Spanish word exists in NBLA:

- Provide a minimal equivalent in parentheses

Example:

μέν → (por un lado)  
δέ → (pero)

---

### 3. NO COMPRESSION

Do not reduce expressions.

❌ Incorrect:
ἡγιασμένοις → santificados

✔ Correct:
ἡγιασμένοις → han sido santificados

---

### 4. NO INTERPRETATION

Do not:
- smooth grammar
- reorder meaning
- add theological interpretation

Only align.

---

## DATA FORMAT

Each token is represented as:
```

- greek: ἡγιασμένοις
   lemma: ἁγιάζω
   morph: V-PPP-DPM
   type: NF
   spanish: han sido santificados
   source: NBLA

```
If supplied:
```

- greek: μέν
   lemma: μέν
   morph: CONJ
   type: connector
   spanish: (por un lado)
   source: supplied

```
---

## TYPES

- F → finite verb  
- NF → non-finite verb  
- connector → clause-level connector  
- other → all remaining tokens  

---

## NON-NEGOTIABLES

- Greek determines structure
- Morph determines verb status
- Spanish does not define grammar
- Alignment must be reproducible

---

## OUTPUT USAGE

This dataset feeds:

- ROOTS Step 2 (finite verbs)
- ROOTS Step 4 (connectors)
- ROOTS Step 7 (phrases)
- interlinear tools
- lexical extraction tools

---

## DIRECTORY STRUCTURE
```

mna/
 ├── README.md
 ├── data/
 ├── sources/
 └── scripts/

```
---

## PHILOSOPHY

This is not a translation project.

This is a **structural alignment layer**.

Everything downstream depends on its accuracy.
```