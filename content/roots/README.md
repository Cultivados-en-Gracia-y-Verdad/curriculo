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

# RULE (STRICT — ROOTS)

Connectors must be included ONLY when they operate at the **clause level**.

------

## INCLUDE ONLY:

A connector is included if it:

1. **Introduces a clause**
   - subordinating conjunctions (e.g., ἵνα, εἴ, ὅτι)
   - relative markers when they introduce a clause (ὃς, ὃ, οἵτινες)

   OR

1. **Connects two clauses**
   - coordinating conjunctions ONLY when they join two clauses
   - must be verifiable by the presence of:
     - two finite verbs
       OR
     - two clause structures

------

## DO NOT INCLUDE:

A connector must be EXCLUDED if it:

- operates only inside a phrase
- connects words, not clauses
- connects items in a list
- modifies tone but not structure
- appears without linking two clause-level units

------

## CRITICAL TEST

Before including a connector, ask:

> Does this connector link or introduce something that contains a finite verb?

- ✔ YES → include
- ❌ NO → exclude

------

## EXAMPLES

### INCLUDE

```text
ἵνα δυνατὸς ᾖ
→ introduces clause → include
ἐφανέρωσεν δὲ ... ἐπιστεύθην
→ connects two clauses → include
```

------

### EXCLUDE

```text
καὶ φιλάγαθον, σώφρονα, δίκαιον
→ list only → EXCLUDE
καὶ νοῦς καὶ συνείδησις
→ noun coordination → EXCLUDE
```

------

## FORMAT

Connectors must be formatted as:

```text
+ GreekConnector (SpanishConnector)
```

---

## RULES

* The Greek connector must match the SBLGNT exactly
* The Spanish connector must reflect the NBLA wording of the verse
* No paraphrasing
* No synonyms
* No interpretation

---

## VALIDATION TEST

> Does the Spanish connector appear in the NBLA verse line?

* ✔ YES → valid
* ❌ NO → reject

---

## FINAL PRINCIPLE

👉 A connector is included ONLY if it affects **clause structure**

If it does not affect clause structure:

→ it does not belong in the dataset

------

# ALIGNMENT RULE (NBLA)

- Spanish must reflect NBLA wording
- No paraphrasing
- No synonyms
- No interpretation

👉 This is **alignment**, not translation

------

# VERSE RULES

## Separation

- ✔ exactly ONE blank line between verses
- ❌ no extra lines
- ❌ no missing separation
- exactly ONE blank line IS allowed WITHIN a verse block
- There must be NO separator lines (-----)

------

## Empty Extraction

If no verbs or connectors qualify:

```
### Verse
Greek
[NBLA]
```

(no lines below)

------

# OUTPUT INTEGRITY

Allowed lines:

- ✔ verb lines (starting with -)
- ✔ connector lines (starting with +)

Forbidden:

- ❌ comments
- ❌ explanations
- ❌ placeholders
- ❌ omitted markers
- ❌ non-verbs

------

# VERIFICATION PROCEDURE

Every verse must pass all steps:

------

## Step 1 — Greek Presence

- Every verb must appear in SBLGNT
- Must match exact surface form

------

## Step 2 — RMAC

- Must be present
- Must be valid
- Must correctly classify `[F]/[NF]`

------

## Step 3 — NBLA Alignment

- Must reflect NBLA wording
- Must not introduce new verbs

------

## Step 4 — Connector Validation

- Must connect or introduce clauses
- Must not be phrase-level
- Connectors must follow '+' format
- Must NOT be validated as verbs

------

## Step 5 — Format Integrity

- ✔ correct structure
- ✔ correct ordering
- ✔ no extra content
- ✔ one blank line between verses

------

## Step 6 — Final Question

> Can every verb be pointed to directly in the Greek line?

- If NO → reject
- If YES → accept

------

# HARD REJECTION RULES

Reject immediately if:

- verb not in SBLGNT
- verb altered
- verb inferred
- Spanish drives extraction
- connector misidentified
- formatting incorrect

------

# FUNCTIONAL PURPOSE (ROOTS)

This dataset feeds:

- Paso 2 — Verbos finitos
- Paso 3 — Cláusulas
- Paso 4 — Conectores
- Paso 5+ — Estructura

------

## KEY STRUCTURAL PRINCIPLE

👉 Finite verbs define clause structure
👉 Connectors define clause relationships

------

# FINAL CHECKLIST

Before accepting:

- ✔ Greek matches SBLGNT
- ✔ RMAC correct
- ✔ F/NF correct
- ✔ connectors valid
- ✔ NBLA aligned
- ✔ format exact
- ✔ no extra content
- ✔ fully traceable

------

# STATUS

👉 This specification is **LOCKED**

👉 The dataset must be:

- reproducible
- verifiable
- text-bound

------

# FINAL PRINCIPLE

👉 **Extraction over everything**

If you cannot point to it in the Greek text:

→ it does not belong in the dataset
