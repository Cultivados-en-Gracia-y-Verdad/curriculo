# Apocalipsis — clause spans to repair in Observer

Generated from the Observer export. Repair here, never in the skeleton — it regenerates.

1165 clauses · 3 blocking · 15 leaners · 17 single-word

---

## BLOCKING — fix before any Generate

- **`4:8:35`** (4:8) — all 3 indices past end of verse — renders EMPTY
- **`8:7:23`** (—) — no span at all
- **`14:13:32`** (14:13) — all 6 indices past end of verse — renders EMPTY

## Spans ending on a leaner

The postposed *pues* cases (2:5:1, 3:3:1, 3:19:8) are **correct** and excluded — «Recuerda, pues» is a complete imperative.

| Clause | ends on | span text |
|---|---|---|
| `3:19:5` | `los` | Yo reprendo a todos los |
| `12:16:8` | `y` | tierra abrió su boca y |
| `13:15:18` | `no` | y haga que todos los que no |
| `14:7:5` | `y` | a Dios y |
| `14:7:9` | `porque` | denle gloria porque |
| `14:9:13` | `una` | adora a la bestia y a su imagen y recibe una |
| `14:11:10` | `y` | y el humo de su tormento sube por siglos de siglos y |
| `14:11:13` | `si` | día ni noche los que adoran a la bestia y a su imagen y si |
| `14:13:8` | `los` | Dichosos los |
| `14:13:19` | `sus` | Espíritu para que descansen de sus |
| `14:14:2` | `su` | o sentado semejante a un hijo de hombre que tenía sobre su |
| `14:15:4` | `tu` |  con gran voz al que estaba sentado sobre la nube Envía tu |
| `14:15:22` | `ha` | porque te ha |
| `19:10:12` | `no` | Mira no |
| `22:9:4` | `no` | Mira no |

## Single-word spans — confirm each

Often a mis-click, sometimes a real one-word clause.

| Clause | word |
|---|---|
| `1:19:1` | Escribe |
| `2:5:6` | arrepiéntete |
| `2:16:1` | Arrepiéntete |
| `2:20:15` | enseñar |
| `3:3:8` | guárdalo |
| `3:11:3` | Retén |
| `10:8:15` | Ve |
| `10:9:15` | Tómalo |
| `11:1:8` | Levántate |
| `16:1:12` | Vayan |
| `18:2:7` | Cayó |
| `18:6:1` | Devuélvanle |
| `19:7:1` | Alegrémonos |
| `19:9:4` | Escribe |
| `21:5:14` | Escribe |
| `22:17:8` | Ven |
| `22:17:13` | Ven |

---

## Already fixed at source — do not repair by hand

`deriveSpanishSpanFromGreekRange` (clause-data.ts) now clamps derived word indices to the
verse length. That removed the cause of the 2 empty spans and the 15 surplus-index spans.
**Re-derive or re-save those clauses in the Observer and the surplus disappears**; the 2
blocking ones need their Greek range checked, since clamping alone leaves them empty.
