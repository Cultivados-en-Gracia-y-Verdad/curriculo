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
+ Greek (Spanish)

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
+ Greek (Spanish)
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


→ GreekConnector = SpanishConnector [Tag]


---

## SYMBOL RULES (MANDATORY)

- `→` is used for **all connector lines**
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

## CLASSIFICATION TAGS

### `[I]` — Introduces a Clause

Use `[I]` if:

- the connector precedes a clause
- the clause contains a **finite verb**

---

### `[c]` — Connects Clauses

Use `[c]` if:

- the connector links two clause-level units
- each unit contains (or implies) a finite verb

---

### (no tag) — Non-Structural

Leave untagged if:

- it connects words or phrases only
- it does not operate at clause level
- it does not introduce a clause with a finite verb

---

## STRUCTURAL TEST (MANDATORY)

Before assigning `[I]` or `[c]`, ask:


Does this connector introduce or connect a unit that contains a finite verb?


- ✔ YES → assign `[I]` or `[c]`
- ❌ NO → leave untagged

---

## POSITIONAL RULE (IMPORTANT)

Classification is based ONLY on:

- position in the Greek sentence
- presence of finite verbs

Do NOT use:

- meaning (reason, contrast, result, etc.)
- translation nuance
- theological interpretation

---

## NBLA ALIGNMENT RULE

The Spanish connector must:

- reflect NBLA wording exactly
- appear in the NBLA verse line
- not be paraphrased
- not be replaced

Format:


→ γάρ = porque


---

## EXAMPLES

### Structural


→ γάρ = porque [I]
→ δέ = pero [c]


---

### Non-Structural


→ καί = y


---

## CRITICAL RESTRICTIONS

Do NOT:

- assign semantic labels (reason, contrast, etc.)
- infer clause relationships beyond structure
- override Greek with Spanish
- skip a Greek connector because it feels “weak”

---

## FINAL PRINCIPLE

👉 Connectors are **structural markers**, not meaning carriers

👉 Extraction is complete  
👉 Classification is minimal and mechanical

# CONNECTOR PRINCIPLE

👉 **Extraction over everything**

If you cannot point to it in the Greek text:

→ it does not belong in the dataset
