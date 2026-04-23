# ROOTS LEXICON — README

------

## 1. PURPOSE

The ROOTS Lexicon is a **lemma-based, non-theological, text-driven lexical system** designed to support objective Bible study using the SBL Greek New Testament.

Its purpose is to:

- define words based on **language use**, not theology
- provide **consistent, controlled definitions**
- reflect **New Testament usage** within **first-century Greek (koiné)**
- integrate directly with the ROOTS method (Pasos 1–13)

------

## 2. CORE PRINCIPLE

> Greek determines meaning.
>  Spanish displays meaning.

- The **Greek lemma** is the source of truth
- The **Spanish gloss** is a controlled label
- The **definition** reflects usage, not interpretation

------

## 3. LEXICON STRUCTURE

Each entry follows this exact format:

```
### [lemma] — G####

**Glosa:** [single Spanish word]

**Definición (ROOTS):**  
[one concise definition]

**Rango semántico:**  
- ...
- ...
- ...

**Uso en el NT:**  
- ...
- ...
- ...

**Uso en griego del siglo I:**  
- ...
- ...
- ...

**Fundamento léxico:**  
- ...
- ...
- ...
```

------

## 4. FIELD DEFINITIONS

### 4.1 Header

```
### ζάω — G2198
```

- Lemma first (Greek)
- Strong’s number second (visible ID)
- Strong’s functions as a **reference key only**

------

### 4.2 Glosa

```
**Glosa:** vivir
```

Rules:

- One primary Spanish word
- Prefer NBLA alignment when accurate
- Must remain **consistent across all entries**
- Optional alternate only if strictly necessary

------

### 4.3 Definición (ROOTS)

```
Estar en estado de vida o continuar existiendo.
```

Rules:

- 6–12 words preferred
- Must describe **observable linguistic function**
- Must NOT include theology
- Must NOT be copied or translated from other lexicons

------

### 4.4 Rango semántico

Describes the **range of possible meanings within language use**

Rules:

- Based on attested usage
- No interpretation
- No doctrinal categories
- No speculative meaning

------

### 4.5 Uso en el NT

Describes **how the word functions in the New Testament**

Rules:

- No verse lists (initially)
- No interpretation
- Must describe **patterns of use**
- Must remain text-observable

------

### 4.6 Uso en griego del siglo I

Describes **historical-linguistic usage in koiné Greek**

Rules:

- Must be general and well-supported
- No speculative historical claims
- No theological framing
- Reflects language environment, not doctrine

------

### 4.7 Fundamento léxico

Summarizes **linguistic grounding behind the entry**

Rules:

- No naming of sources (BDAG, LSJ, etc.)
- Must reflect:
  - consistent usage
  - semantic stability
  - linguistic patterns
- Serves as internal justification, not citation

------

## 5. NON-THEOLOGICAL RULE (ABSOLUTE)

The lexicon must NOT include:

- doctrinal categories
- theological conclusions
- interpretive meaning
- system-based language

Allowed:

- linguistic function
- semantic range
- observable usage

------

## 6. SOURCE HIERARCHY (INTERNAL USE ONLY)

Entries are informed by:

- SBL Greek New Testament (primary)
- First-century koiné usage
- Lexical tradition (consulted but not quoted)

Sources must:

- inform wording
- NOT be reproduced
- NOT be cited explicitly

------

## 7. STRONG’S NUMBERS

Strong’s numbers:

- are included in every entry
- function as **universal identifiers**
- enable cross-platform compatibility

They do NOT:

- define meaning
- determine structure
- replace the Greek lemma

------

## 8. RMAC MORPHOLOGY

RMAC codes are:

- used in the **text dataset layer**
- NOT included in lexicon entries

Reason:

- RMAC describes **form**
- Lexicon describes **meaning**

------

## 9. CONSISTENCY RULES

Each lemma must:

- have ONE definition
- have ONE primary gloss
- maintain consistent wording across entries

No synonym expansion.
 No shifting definitions.

------

## 10. STYLE RULES

- Language must be clear, controlled, and neutral
- Avoid redundancy across sections
- Avoid vague wording (“something”, “various”, etc.)
- Avoid over-expansion

Each line must carry **meaningful distinction**

------

## 11. FORMAT COMPATIBILITY

The lexicon is designed to function across:

### Web

- headings provide anchors
- sections are parseable

### Application

- structured fields allow JSON conversion

### Pandoc → LaTeX → PDF

- Markdown-safe
- no HTML dependency
- clean rendering in print

------

## 12. FUTURE EXTENSIONS

The system supports:

- verse-level linking
- Strong’s-based search
- cross-referencing
- export to tools (e-Sword, etc.)

------

## 13. FINAL PRINCIPLE

> The ROOTS Lexicon does not explain theology.
>  It describes language.