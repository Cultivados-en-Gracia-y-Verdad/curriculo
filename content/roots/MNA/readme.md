```
# MNA — Morph-NBLA Alignment

MNA is a reference project that creates a strict, token-level alignment between:

- SBLGNT (Greek text)
- MorphGNT (morphology)
- NBLA (Spanish translation)
- OSHB (Hebrew, future phase)

This is the **base layer** for all downstream systems.

It is:

- not a commentary tool  
- not a ROOTS dataset  
- not interpretive  

It is a **structural alignment system**.

---

## PURPOSE

The goal is to align **every Greek token** to its corresponding expression in NBLA.

This produces a dataset that enables:

- morphology tagging
- verb identification
- connector identification
- interlinear display
- lexical extraction
- ROOTS-based analysis

This layer contains **zero interpretation**.

---

## CORE PRINCIPLE

Each Greek token must map to:

→ the exact NBLA word(s), OR  
→ a minimal supplied Spanish equivalent

Every token must be classified.

No exceptions.

---

## ALIGNMENT TYPES

Each Greek token must be assigned one of the following:

1. direct  
2. merged-forward  
3. merged-backward  
4. missing  
5. expanded  

### Definitions

- **direct**  
  One Greek token → one Spanish unit (even if form changes)

- **expanded**  
  One Greek token → multiple Spanish words

- **merged-forward / merged-backward**  
  Multiple Greek tokens → one Spanish expression

- **missing**  
  No NBLA equivalent → must be supplied

---

## CRITICAL DISTINCTION

Form change does NOT equal expansion.

Examples:

- participle → finite verb = **direct**
- adjective → clause = **direct**
- noun → phrase = **direct**

Expansion ONLY occurs when:

→ one Greek token maps to multiple Spanish words

---

## ALIGNMENT RULES

### 1. NBLA PRIORITY

If NBLA expresses the word:

- use it exactly  
- preserve full expression  

✔ Correct:
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