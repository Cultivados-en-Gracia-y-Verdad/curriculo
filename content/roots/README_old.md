---
title: ROOTS Verb + Connector Alignment Specification
version: 1.0
date: 2026-04-21
---
# ROOTS VERB + CONNECTOR ALIGNMENT SPECIFICATION

(SBLGNT + RMAC + NBLA)

---

## PURPOSE

This document defines the rules for creating a **fully consistent, auditable dataset** that maps:

- Greek text (**SBLGNT**)
- Morphology (**RMAC**)
- Spanish text (**NBLA**)

The dataset must be:

- ✔ mechanically reproducible  
- ✔ text-bound (Greek-driven)  
- ✔ structurally reliable for ROOTS  

---

## CORE PRINCIPLE

👉 **The dataset is not created — it is extracted**

👉 **If it is not in the Greek, it does not exist**

👉 **The dataset exposes structure — it does not interpret it**

---

## ABSOLUTE PROHIBITIONS

- ❌ No implied verbs  
- ❌ No supplied copulas (e.g., ἐστίν)  
- ❌ No reconstruction  
- ❌ No normalization before entry  
- ❌ No inference from Spanish  
- ❌ No structural decisions (clauses, connections, roles)  
- ❌ No connector classification  

---

## SOURCE REQUIREMENT

### Greek Source (MANDATORY)


SBLGNT/text/{book}.txt


This is the **only authoritative Greek source**

---

### Source Priority

1. Greek (SBLGNT) → absolute authority  
2. RMAC → classification only  
3. NBLA → alignment only (never drives decisions)  

---

## EXTRACTION WORKFLOW


SBLGNT → extract → assign RMAC → align to NBLA → validate


NOT:


Spanish → reasoning → generate Greek


---

## OUTPUT FORMAT (LOCKED)

Each verse must follow this structure:

Book Chapter:Verse {#id}

[Greek verse exactly from SBLGNT]
[NBLA verse in brackets]

```
- Greek (RMAC) ==Spanish== [F]
- Greek (RMAC) Spanish [NF]
   - Greek → Spanish
```

---

## BULLET SYSTEM (MANDATORY)

### Verb Lines

Greek (RMAC) ==Spanish== [F]
Greek (RMAC) Spanish [NF]

### Connector Lines

Greek → Spanish

---

## RULES

- `-` is used for **all extracted elements**  
- No alternative symbols allowed  
- Connectors must NEVER include RMAC  
- Connectors must NEVER include [F] or [NF]  
- Connectors must NEVER include [c]  

---

## ORDER (MANDATORY)

Each verse block must appear in this exact order:

1. Header  
2. Greek verse line  
3. NBLA verse line (in brackets)  
4. Extracted lines  

---

## GREEK VERSE LINE

- Must be copied exactly from SBLGNT  
- No normalization  
- No edits  
- No reconstruction  

---

## NBLA VERSE LINE

- Must reflect NBLA wording  
- Must appear inside `[ ]`  
- Serves as alignment reference only  

---

## GREEK–NBLA ALIGNMENT (CRITICAL)

### CORE PRINCIPLE

Greek determines structure.  
NBLA reflects surface wording.

When NBLA does not explicitly express a Greek element:

👉 the element must still be represented.

---

### MISSING ELEMENT RULE

If a Greek element (verb or connector) is not explicitly visible in NBLA:

- insert a **minimal bracketed Spanish equivalent**

---

### VERBS NOT EXPLICIT IN NBLA

#### Finite


ἐστίν (V-PAI-3S) ==[es]== [F]


#### Non-finite


εἶναι (V-PAN) [ser] [NF]


---

### CONNECTORS NOT EXPLICIT IN NBLA


ἀλλά → [pero]


---

### CONSTRAINTS

- Must be minimal  
- Must not expand meaning  
- Must not alter NBLA wording  
- Must only reflect the presence of the Greek element  

---

### ABSOLUTE RULE

Do NOT:

- omit the element  
- interpret meaning  
- restructure the sentence  

Always:

✔ preserve Greek structure  
✔ preserve NBLA surface  
✔ represent missing elements with brackets  

---

## PLACEMENT OF SUPPLIED ELEMENTS (MANDATORY)

### CORE RULE

A supplied bracketed element must be placed at the closest point where its Greek counterpart functions structurally.

---

### CONNECTOR PLACEMENT

- Place the connector at the beginning of the clause it links  
- Position it immediately before the clause’s finite verb  

---

### VERB PLACEMENT

- Place the verb at the position required for the clause to exist in Spanish  
- Typically:
  - after the subject  
  - before the predicate or complement  

---

### CONSISTENCY RULE

- The same Greek structure must produce the same placement pattern  
- No variation is allowed between entries  

---

### ABSOLUTE PROHIBITIONS

Do NOT:

- place based on stylistic preference  
- adjust for readability  
- move elements freely  
- insert more than one option  

---

## VERB IDENTIFICATION

### Finite Verbs `[F]`

A verb is finite if it contains:

- person  
- number  

Example:


εἰσίν (V-PAI-3P) ==son== [F]


---

### Non-Finite Verbs `[NF]`

Includes:

- infinitives  
- participles  
- verbal adjectives  

Example:


ὄντες (V-PAP-NPM) siendo [NF]


---

## VERB RULES

- Greek must match SBLGNT exactly  
- RMAC is required  
- `[F]` or `[NF]` is required  
- Only finite verbs use `== ==`  
- Non-finite verbs NEVER use `== ==`  

---

## CONNECTOR EXTRACTION (CRITICAL)

### CORE PRINCIPLE

👉 Connectors are extracted **only from the Greek text**

👉 Connectors are **not interpreted or classified**

---

### EXTRACTION RULE (MANDATORY)

A connector must be extracted if:

- it appears explicitly in the Greek text  

Do NOT:

- filter during extraction  
- evaluate function  
- classify  
- determine clause relationships  

👉 If it is in the Greek → it must be listed  

---
### CONNECTOR DEFINITION (MANDATORY)

Not every Greek word is a connector.

Only Greek words that function as **clause-level connective elements** are extracted as connector lines.

This includes words that operate between clauses (e.g., γάρ, ἀλλά).

This does NOT include:

- negation particles (οὐ, μή)
- adverbs (e.g., οὔπω)
- modifiers of meaning

👉 If a word does not function at the clause level, it is NOT listed as a connector.

### καί CLARIFICATION (MANDATORY)

καί is not automatically included as a connector.

It is listed only if it establishes a structural relationship between two clauses defined by finite verbs.

If καί joins words, phrases, modifiers, participles, or other non-clausal elements, it is excluded.

Only clause-linking uses of καί are listed.

### STRUCTURAL CONNECTOR TEST (FINAL)

A word is included as a connector only if it can be placed between two clauses, each containing a finite verb, such that the clause structure remains intact.

Procedure:

1. Identify finite verbs
2. Identify clause boundaries based on those verbs
3. Test whether the word can function between those clauses

If the structure remains valid → include  
If not → exclude

### CONNECTOR LINE FORMAT (LOCKED)

Greek → Spanish

---
### CONNECTOR DISPLAY RULE (MANDATORY)

Connectors are displayed differently depending on whether they are explicit in NBLA.

Each connector line must represent exactly one Greek connector.

#### Case 1 — Explicit in NBLA

If the connector is explicitly present in NBLA:

- display only the connector in parentheses

Example:

γάρ → (porque)

- Do not include additional NBLA text
- Do not repeat the clause

---

#### Case 2 — Not Explicit in NBLA

If the connector is not explicitly present in NBLA:

- display the connector in brackets
- include the NBLA clause it introduces

Example:

ἀλλʼ → [pero] ni aun ahora pueden

- The connector must be placed immediately before the clause
- The clause must be included to show placement

### LANGUAGE HIERARCHY (CRITICAL)

Greek → determines existence  
Spanish → reflects alignment only 

- Greek controls identification  
- Spanish NEVER creates or replaces a connector  

---

## WHAT THE DATASET DOES NOT DO

The dataset does NOT:

- identify clauses  
- determine relationships between clauses  
- mark connectors as active  
- assign [c]  
- distinguish types of connectors  
- interpret structure  

---

## HOW ROOTS USES THIS DATA

### Paso 2 — Verbos finitos

- Finite verbs define clauses  

---

### Paso 3 — Cláusulas

- One clause per finite verb  

---

### Paso 4 — Conectores

- Connectors are tested in the text  

A connector is marked as **[c] only during analysis**, if:

1. Two finite verbs are present  
2. The word establishes a structural relationship between those verbs  

---

## FINAL PRINCIPLE

> The dataset contains no decisions.  
> All structure must be demonstrated from the text.