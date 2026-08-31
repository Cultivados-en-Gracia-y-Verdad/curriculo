# Clause map — Apocalipsis 4:1 (Arquitecto input)

**Status:** inventory for Arquitecto — relation-first. Not student content.
**Spanish:** LBF (`manual/manual.md` § *Apocalipsis 4:1–5:14*) · **Greek:** Scrivener 1894
**Greek source of record:** `Biblia-LBF/…/RE.SCV` + `RE.UTR`. **NOT** `tr1894.txt`.

**Continuidad de ids:** continúa `clause-map-3-14-22.md` (c315–c358). Este tramo: **c359–c367** —
**9 cláusulas**.

**Subsection A** of H2 `4:1–5:14` — transición desde las siete cartas al mostrar.

---

## Texto griego (Scrivener 1894)

> **4:1** Μετὰ ταῦτα εἶδον, καὶ ἰδοὺ θύρα ἠνεῳγμένη ἐν τῷ οὐρανῷ, καὶ φωνὴ πρώτη ἣν ἤκουσα
> ὡς σάλπιγγος λαλούσης μετ’ ἐμοῦ, λέγουσα, Ἀνάβα ὧδε, καὶ δείξω σοι ἃ δεῖ γενέσθαι μετὰ
> ταῦτα.

### Lecturas verificadas

- **`Μετὰ ταῦτα`** abre el tramo de *mostrar* — no cronología entre eventos; marca textual tras 3:22.
- **`ἣν ἤκουσα`** — relativo sobre `φωνὴ` (Scrivener); no aislar la voz sin el relativo.
- **`ὡς σάλπιγγος λαλούσης μετ’ ἐμοῦ`** — compara la voz; `μετ’ ἐμοῦ` = con Juan.
- **`λέγουσα`** — participio en la voz; lleva `Ἀνάβα ὧδε` y `δείξω`.
- **`ἃ δεῖ γενέσθαι μετὰ ταῦτα`** — contenido de *mostraré*; segundo `μετὰ ταῦτα` dentro del
  discurso (cf. 1:19).
- Narrador: **Juan** como testigo (`εἶδον`, `ἤκουσα`) — no mandato `γράψον` de cartas.
- **`Μετὰ ταῦτα` (apertura):** `relation_to_previous: discourse_and_vision_sequence` ·
  `temporal_relation: explicitly_after_in_vision_report` — tras 3:22 por orden discursivo; no
  fecha de acontecimientos representados.
- **`ἃ δεῖ γενέσθαι μετὰ ταῦτα`:** dentro del discurso de la voz ·
  `temporal_relation: explicitly_after` · `referent_of_tauta: not_further_resolved_here` — cf. 1:19
  (`ἃ μέλλει`) sin colapsar esquema cronológico.
- **`φωνὴ πρώτη ἣν ἤκουσα`:** remite a 1:10; `λέγουσα` = `actor_basis: explicit_participial_agreement_with_voice`.
- **`Ἀνάβα`:** `actor_basis: addressee_in_command` (Juan).
- **`δείξω`:** `actor_basis: first_person_encoded_in_verb` (la voz).

---

## Inventory

| id | ord | ref | es | el | level | governor | relation | connector | declares | unexpressed | certainty | variant |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| c359 | 1 | 4:1 | Después de esto vi | Μετὰ ταῦτα εἶδον | independent | — | root | **μετὰ ταῦτα** | Juan ve | Sujeto: Juan (1ª sg) | explicit | — |
| c360 | 2 | 4:1 | y he aquí: una puerta abierta en el cielo | καὶ ἰδοὺ θύρα ἠνεῳγμένη ἐν τῷ οὐρανῷ | independent | c359 coordinate | coordinate | καί ἰδού | Puerta en el cielo | — | explicit | — |
| c361 | 3 | 4:1 | y la primera voz que oí | καὶ φωνὴ πρώτη ἣν ἤκουσα | independent | c359 coordinate | coordinate | καί | Juan oyó | — | explicit | — |
| c362 | 4 | 4:1 | que oí | ἣν ἤκουσα | embedded | c361 | relative | ἥν | Modifica φωνὴ | — | explicit | — |
| c363 | 5 | 4:1 | como de trompeta que hablaba conmigo | ὡς σάλπιγγος λαλούσης μετ’ ἐμοῦ | embedded | c361 | comparison (`ὡς`) | ὡς | Cualidad de la voz | — | explicit | — |
| c364 | 6 | 4:1 | decía: Sube aquí, y te mostraré lo que debe suceder después de esto | λέγουσα Ἀνάβα ὧδε καὶ δείξω σοι ἃ δεῖ γενέσθαι μετὰ ταῦτα | embedded | c361 | participle-speech | λέγουσα | Discurso de la voz | — | explicit | — |
| c365 | 7 | 4:1 | Sube aquí | Ἀνάβα ὧδε | embedded | c364 | direct-speech | — | Imperativo a Juan | — | explicit | — |
| c366 | 8 | 4:1 | y te mostraré lo que debe suceder después de esto | καὶ δείξω σοι ἃ δεῖ γενέσθαι μετὰ ταῦτα | embedded | c364 coordinate | coordinate | καί | Futuro 1ª sg voz | — | explicit | — |
| c367 | 9 | 4:1 | lo que debe suceder después de esto | ἃ δεῖ γενέσθαι μετὰ ταῦτα | embedded | c366 | relative-object | ἅ | Contenido de δείξω | — | explicit | — |

---

## Independientes

c359 · c360 · c361.

### Relation graph

```
c359 ‖ c360
c359 ‖ c361 ← c362, c363, c364 ← c365, c366 ← c367
```

---

## Participant notes (for Escriba after approval)

- **Juan** como narrador-testigo: *vi* / *oí* — no inventar `*Yo, Juan*` en imperativos de la voz.
- La **voz** habla (`λέγουσα`, `δείξω`); Juan es destinatario de *Sube* y *te mostraré*.
- Dos `μετὰ ταῦτα`: marco del tramo · contenido de lo que se mostrará — no colapsar.
- Sin cronología inventada entre cartas y visión.

---

## Open questions for Arquitecto

1. **¿Un solo movimiento para 4:1?** (recomendado: **sí** — unidad de transición)
2. ¿Dos `####` (vi/puerta · voz/mandato) o tres?
3. Manual provisional — reemplazar tras aprobación.

Verse numbers must not answer these.
