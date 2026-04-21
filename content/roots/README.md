# ROOTS VERB + CONNECTOR ALIGNMENT SPECIFICATION

(SBLGNT + RMAC + NBLA)

------

# PURPOSE

This document defines the rules for creating a **fully consistent, auditable dataset** that maps:

- Greek text (**SBLGNT**)
- Morphology (**RMAC**)
- Spanish text (**NBLA**)
- Clause-level connectors (**ROOTS**)

The dataset must be:

- ✔ mechanically reproducible
- ✔ text-bound (Greek-driven)
- ✔ structurally reliable for ROOTS

------

# CORE PRINCIPLE

👉 **The dataset is not created — it is extracted**

👉 **If it is not in the Greek, it does not exist**

------

# ABSOLUTE PROHIBITIONS

- ❌ No implied verbs
- ❌ No supplied copulas (e.g., ἐστίν)
- ❌ No reconstruction
- ❌ No normalization before entry
- ❌ No inference from Spanish
- ❌ No use of lexicons/interlinears as sources

------

# SOURCE REQUIREMENT

## Greek Source (MANDATORY)

```
SBLGNT/text/{book}.txt
```

This is the **only authoritative Greek source**

------

## Source Priority

1. Greek (SBLGNT) → absolute authority
2. RMAC → classification only
3. NBLA → alignment only (never drives decisions)

------

# EXTRACTION WORKFLOW

```
SBLGNT → extract → assign RMAC → align to NBLA → validate
```

NOT:

```
Spanish → reasoning → generate Greek
```

------

# OUTPUT FORMAT (LOCKED)

Each verse must follow this structure:

```text
### Book Chapter:Verse {#id}
[Greek verse exactly from SBLGNT]
[NBLA verse in brackets]

- Greek (RMAC) ==Spanish== [F]
- Greek (RMAC) Spanish [NF]
→ Greek = Spanish [Tag]

```

------

## BULLET SYSTEM (MANDATORY)

Two distinct line types must be used:

### Verb Lines

```
- Greek (RMAC) ==Spanish== [F]
- Greek (RMAC) Spanish [NF]
```

### Connector Lines

```
- Greek (Spanish)
```

------

### RULES

- `-` is reserved **only for verbs**
- `+` is reserved **only for connectors**
- No mixing allowed
- No alternative symbols allowed
- Connectors must NEVER include RMAC
- Connectors must NEVER include [F] or [NF]

-----

# ORDER (MANDATORY)

Each verse block must appear in this exact order:

1. Header
2. Greek verse line
3. NBLA verse line (in brackets)
4. Extracted lines

------

# GREEK VERSE LINE

- Must be copied exactly from SBLGNT
- No normalization
- No edits
- No reconstruction

------

# NBLA VERSE LINE

- Must reflect NBLA wording
- Must appear inside `[ ]`
- Serves as alignment reference

------

# VERB IDENTIFICATION

## Finite Verbs `[F]`

A verb is finite if it contains:

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

# VERB LINE FORMAT

## Finite

```
- Greek (RMAC) ==Spanish== [F]
```

## Non-Finite

```
- Greek (RMAC) Spanish [NF]
```

------

# VERB RULES

- Greek must match SBLGNT exactly
- RMAC is required
- `[F]` or `[NF]` is required
- Only finite verbs use `== ==`
- Non-finite verbs NEVER use `== ==`

------

## EXTRACTION RULE

A connector must be extracted if it appears in the Greek text.

- Do not filter during extraction
- Do not evaluate function during extraction
- Do not exclude based on structure at this stage

👉 If it is in the Greek → it must be listed

------

# CONNECTOR EXTRACTION AND CLASSIFICATION (LOCKED)

## CORE PRINCIPLE

👉 Connectors are extracted **only from the Greek text (SBLGNT)**

👉 Connectors are **not inferred, supplied, or promoted from Spanish**

---

## EXTRACTION RULE (MANDATORY)

A connector must be extracted if:

- it appears explicitly in the Greek text

Do NOT:

- filter during extraction
- evaluate meaning
- infer missing connectors
- add connectors from NBLA

👉 If it is in the Greek → it must be listed

---

## CONNECTOR LINE FORMAT (LOCKED)

- GreekConnector = SpanishConnector [Tag]
- add three spaces (   -) are used before connector lines. This helps to distinguish between connector lines and verb lines. 

---

## SYMBOL RULES (MANDATORY)

- `   -` is used for **all connector lines**
- `-` remains reserved **only for verbs**
- No mixing allowed
- No alternative symbols allowed

---

## LANGUAGE HIERARCHY (CRITICAL)

Greek → determines existence
Spanish → reflects alignment only

- Greek controls identification
- Spanish NEVER creates or replaces a connector

---

## CLASSIFICATION BASIS (STRUCTURE ONLY)

Connectors are classified using **structure only**, NOT meaning

---

# CONNECTOR CLASSIFICATION (FINAL — LOCKED)

## CORE PRINCIPLE

A connector is identified ONLY by its relationship between finite verbs.

👉 A connector ALWAYS connects a clause to another clause.

There is no distinction between "introduces" and "connects".

---

## SINGLE CLASSIFICATION

All structural connectors are labeled:

[c]

There are no other connector categories.

---

## STRUCTURAL REQUIREMENT (MANDATORY)

Before marking a connector:

1. Identify Verb A
2. Identify Verb B
3. Confirm the connector relates them

If two finite verbs cannot be identified:

→ the connector is NOT structural
→ do NOT assign [c]

---

## WHAT "CONNECTS" MEANS

A connector may:

- appear at the beginning of a clause
- appear between clauses

But in all cases:

👉 it links that clause to another clause

---

## POSITION IS IRRELEVANT

Do NOT classify based on:

- where the word appears
- whether it “introduces” a clause

Even if it appears at the start:

👉 it still CONNECTS to a previous clause

---

## EXAMPLE

γὰρ = porque [c]  
ἀλλʼ = pero [c]

Both:

- connect clauses
- depend on previous verbal units
- must be treated equally

---

## NBLA ALIGNMENT — EXTENDED RULE (CRITICAL)

The Spanish connector must align to NBLA, but NBLA may not always express it explicitly.

---

### CASE 1 — Explicit in NBLA

If the connector appears in NBLA:

- use the exact word

Example:

γάρ → porque

---

### CASE 2 — NOT explicit in NBLA (MANDATORY HANDLING)

If the connector does NOT appear in NBLA:

- insert the closest natural equivalent in brackets

Format:

[pero]

---

### PLACEMENT RULE (MANDATORY)

The supplied connector must be placed:

- at the closest logical point in the NBLA phrase
- where the clause transition occurs

---

### EXAMPLE (1 Corintios 3:2)

Greek:
ἀλλʼ οὐδὲ ἔτι νῦν δύνασθε

NBLA:
ni aun ahora pueden

Correct alignment:

ἀλλʼ = [pero] ni aun ahora [c]

---

### PRINCIPLE

Greek controls STRUCTURE  
NBLA reflects SURFACE

When NBLA does not show the connector:

👉 we preserve structure by supplying it in brackets

---

### ABSOLUTE RULE

Do NOT:

- omit the connector
- force incorrect Spanish
- distort NBLA wording

Always:

✔ preserve Greek structure  
✔ preserve NBLA wording  
✔ add bracketed connector when necessary

# CONNECTOR PRINCIPLE

👉 **Extraction over everything**

If you cannot point to it in the Greek text:

→ it does not belong in the dataset
