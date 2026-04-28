# MNA — ALIGNMENT WORKFLOW

This document defines the exact procedure for aligning SBLGNT (Greek) to NBLA (Spanish).

This process is:

- mechanical  
- repeatable  
- non-interpretive  

Do not deviate from these steps.

---

## STEP 1 — SELECT VERSE

Work on **one verse at a time**.

Do not batch verses.  
Do not anticipate later context.

---

## STEP 2 — TOKENIZE GREEK

Split the SBLGNT text into individual tokens.

Each token must remain exactly as written in the source.

Example:

Παῦλος  
κλητὸς  
ἀπόστολος  
Χριστοῦ  
Ἰησοῦ  
διὰ  
θελήματος  
θεοῦ  
καὶ  
Σωσθένης  

Do not merge tokens.  
Do not reorder tokens.

---

## STEP 3 — IDENTIFY SPANISH UNITS

Read the NBLA verse and group words into **units of expression**.

These are not necessarily single words.

Examples:

Pablo  
llamado a ser  
apóstol  
de Jesucristo  
por  
la voluntad  
de Dios  
y  
Sóstenes  

Do not force 1:1 correspondence.  
Do not reduce phrases.

---

## STEP 4 — ALIGN TOKENS

Map each Greek token to a Spanish unit.

Format:

Greek → Spanish

Example:

Παῦλος → Pablo  
κλητὸς → llamado a ser  
ἀπόστολος → apóstol  
Χριστοῦ Ἰησοῦ → de Jesucristo  
διὰ → por  
θελήματος → la voluntad  
θεοῦ → de Dios  

Work strictly from Greek to Spanish.

Every Greek token must be mapped.

---

## STEP 5 — CLASSIFY ALIGNMENT

Each mapping must be classified:

- direct  
- expanded  
- merged-forward  
- merged-backward  
- missing  

Definitions are in README.md.

Do not skip classification.

---

## STEP 6 — HANDLE MISSING ELEMENTS

If NBLA does not express a Greek token:

- supply a minimal Spanish equivalent  
- wrap it in parentheses  

Example:

μέν → (por un lado)

Do not invent meaning.  
Do not expand beyond necessity.

---

## STEP 7 — VERIFY COMPLETENESS

Confirm:

- every Greek token is mapped  
- no Greek token is skipped  
- no extra Spanish is introduced  

If any token is unaccounted for:

→ alignment is invalid

---

## STEP 8 — VERIFY CONSISTENCY

Check:

- same type of structure is treated the same way  
- no compression has occurred  
- no interpretation has been introduced  

If inconsistency exists:

→ stop and resolve before continuing

---

## STEP 9 — FLAG EDGE CASES

Mark any uncertain mapping.

Do not resolve by intuition.

Move unresolved cases to:

ALIGNMENT_EDGE_CASES.md

---

## STEP 10 — LOCK VERSE

Once verified:

- consider the verse complete  
- do not revisit unless rules change  

---

# RULES (APPLY AT ALL TIMES)

- Greek determines structure  
- Spanish reflects expression  
- No interpretation  
- No smoothing  
- No theological decisions  
- No skipped tokens  

---

# FAILURE CONDITIONS

The alignment fails if:

- any Greek token is unmapped  
- classification is missing  
- Spanish is compressed  
- mapping is guessed  
- interpretation is introduced  

---

# OUTPUT FORMAT (STANDARD)

Example:

Παῦλος → Pablo [direct]  
κλητὸς → llamado a ser [expanded]  
ἀπόστολος → apóstol [direct]  
Χριστοῦ Ἰησοῦ → de Jesucristo [merged-forward]  
διὰ → por [direct]  
θελήματος → la voluntad [expanded]  
θεοῦ → de Dios [expanded]  

---

This workflow must be followed exactly for all alignment work.

No shortcuts.

# ALIGNMENT EDGE CASES

## Case 1 — Proper Name Merge
Χριστοῦ Ἰησοῦ → de Jesucristo

## Case 2 — Missing Article
ὁ → (el)

## Case 3 — Added Possessive
ἀδελφὸς → nuestro hermano

## Case 4 — Adjective Expansion
κλητὸς → llamado a ser

## Case 5 — Structural Expansion
θελήματος → la voluntad