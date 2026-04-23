---
title: ROOTS Verb + Connector Alignment Specification
version: 1.1
date: 2026-04-22
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