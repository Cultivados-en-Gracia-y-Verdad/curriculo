# Clause map — Apocalipsis 2:1–7 (Arquitecto input)

**Status:** inventory for Arquitecto — relation-first. Not student content.
**Spanish:** LBF (capa de audición continua, `manual/manual.md` § *Apocalipsis 2:1–7*) ·
**Greek:** Scrivener 1894
**Greek source of record:** `Biblia-LBF/source/greek/TR1894/scrivener-textonly/RE.SCV` (beta-code,
transcrito a griego acentuado en este mapa), corroborado morfológicamente contra
`Biblia-LBF/source/greek/TR1894/robinson-parsed/RE.UTR`.
**Greek source NOT used:** `cgv-data/bibles/TR1894/tr1894.txt` — defectuoso, ver **Defecto de
datos** abajo. En este tramo la falla toca cuatro tokens.

**Instruction to Arquitecto:** Build literary movements and indent hierarchy from `governor` /
`relation` below. Verse numbers in `ref` locate only. Do not cut movements at verse boundaries
unless a governor edge ends there. Do not write `>` commentary.

**Continuidad de ids:** continúa `clause-map-1-9-20.md` (c32–c92). Este tramo va de **c93 a
c130** — **38 cláusulas**.

---

## Texto griego del tramo (Scrivener 1894, `RE.SCV`)

> **2:1** Τῷ ἀγγέλῳ τῆς Ἐφεσίνης ἐκκλησίας γράψον· Τάδε λέγει ὁ κρατῶν τοὺς ἑπτὰ ἀστέρας ἐν τῇ
> δεξιᾷ αὐτοῦ, ὁ περιπατῶν ἐν μέσῳ τῶν ἑπτὰ λυχνιῶν τῶν χρυσῶν·
> **2** Οἶδα τὰ ἔργα σου, καὶ τὸν κόπον σου, καὶ τὴν ὑπομονήν σου, καὶ ὅτι οὐ δύνῃ βαστάσαι
> κακούς, καὶ ἐπειράσω τοὺς φάσκοντας εἶναι ἀποστόλους καὶ οὐκ εἰσίν, καὶ εὗρες αὐτοὺς ψευδεῖς,
> **3** καὶ ἐβάστασας καὶ ὑπομονὴν ἔχεις, καὶ διὰ τὸ ὄνομά μου κεκοπίακας καὶ οὐ κέκμηκας.
> **4** ἀλλ᾽ ἔχω κατὰ σοῦ, ὅτι τὴν ἀγάπην σου τὴν πρώτην ἀφῆκας.
> **5** μνημόνευε οὖν πόθεν ἐκπέπτωκας, καὶ μετανόησον καὶ τὰ πρῶτα ἔργα ποίησον· εἰ δὲ μή,
> ἔρχομαί σοι ταχύ, καὶ κινήσω τὴν λυχνίαν σου ἐκ τοῦ τόπου αὐτῆς, ἐὰν μὴ μετανοήσῃς·
> **6** ἀλλὰ τοῦτο ἔχεις, ὅτι μισεῖς τὰ ἔργα τῶν Νικολαϊτῶν, ἃ κἀγὼ μισῶ.
> **7** ὁ ἔχων οὖς ἀκουσάτω τί τὸ Πνεῦμα λέγει ταῖς ἐκκλησίαις. Τῷ νικῶντι δώσω αὐτῷ φαγεῖν ἐκ
> τοῦ ξύλου τῆς ζωῆς, ὅ ἐστιν ἐν μέσῳ τοῦ παραδείσου τοῦ Θεοῦ.

### Dos lecturas verificadas (no son erratas)

- **2:2 `ἐπειράσω`** — aoristo **medio** indicativo 2ª sg (`V-AMI-2S` en `RE.UTR`). No es
  `ἐπείρασας`. Scrivener y el parseo concuerdan; otras ediciones traen la forma activa.
- **2:2 `τοὺς φάσκοντας`** — no `τοὺς λέγοντας`. Confirmado en ambos archivos de Biblia-LBF.
- **2:1 `τῆς Ἐφεσίνης ἐκκλησίας`** — no `τῆς ἐν Ἐφέσῳ ἐκκλησίας`. LBF *iglesia efesia* sigue esta
  lectura.
- **2:5 `ταχύ`** — `RE.UTR` marca unidad de variante: `| ταχεῖ (N-DSN) | ταχύ (ADV) |`. El texto
  de Scrivener trae el adverbio `ταχύ`; LBF *pronto*. Registrado en `variant` de c117.

### Asíndeton de 2:1 — dato duro del texto

**2:1 es la única de las siete cartas que abre sin `καί`.** Verificado en `RE.SCV`:

| ref | apertura |
|---|---|
| **2:1** | `Τῷ ἀγγέλῳ …` — **sin conector** |
| 2:8 · 2:12 · 2:18 · 3:1 · 3:7 · 3:14 | `καὶ τῷ ἀγγέλῳ …` |

LBF respeta la diferencia: 2:1 *Escribe al ángel…*, 2:12 *Y escribe al ángel…*. Es decir, el
`γράψον` de 2:1 se pega sin conector al `γράψον` de 1:19 (c82) — **tercer `γράψον` del libro**
(1:11 c47 · 1:19 c82 · 2:1 c93). Dato registrado, no tesis.

---

## Defecto de datos — griego (mismo emisor que en 1:9–20)

`cgv-data/bibles/TR1894/tr1894.txt` sigue omitiendo tokens griegos de una sola letra con espíritu
áspero. **En 2:1–7 la falla toca cuatro tokens** (Scrivener a la izquierda, archivo a la derecha):

| ref | Scrivener 1894 (`RE.SCV` + `RE.UTR`) | cgv-data `tr1894.txt` |
|---|---|---|
| 2:1 | λέγει **ὁ** κρατῶν … **ὁ** περιπατῶν | λέγει κρατῶν … περιπατῶν |
| 2:6 | τῶν Νικολαϊτῶν, **ἃ** κἀγὼ μισῶ | τῶν Νικολαϊτῶν, κἀγὼ μισῶ |
| 2:7 | τῆς ζωῆς, **ὅ** ἐστιν ἐν μέσῳ | τῆς ζωῆς, ἐστιν ἐν μέσῳ |

Consecuencia concreta para este tramo: sin `ὁ … ὁ` (2:1) desaparecen los dos participios
sustantivados que **son el sujeto de λέγει** — el archivo deja `λέγει κρατῶν` sin artículo, y el
sujeto del verbo se vuelve ilegible. Sin `ἃ` (2:6) y sin `ὅ` (2:7) desaparecen los dos relativos
que LBF traduce *las cuales* y *que está*. Es decir: **cuatro de las cinco aristas de dependencia
más visibles del tramo no tienen respaldo en ese archivo.**

Otras erratas del mismo archivo en este tramo, sin relación con el espíritu áspero: `Ἐφέσίνης`
(doble acento, 2:1), `ἐβὰστασας` por `ἐβάστασας` (2:3), `ἐν μέσῶ` por `ἐν μέσῳ` (2:7).

**Ruta del arreglo:** sin cambios respecto de lo declarado en `clause-map-1-9-20.md` — reparar el
emisor y reexportar. Este mapa no depende de ese archivo.

---

## Inventory

38 filas · c93–c130 · `discourse_order` = orden de lectura (1–38).

| id | ord | ref | es | el | level | governor | relation | connector | declares | unexpressed | certainty | variant |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| c93 | 1 | 2:1 | Escribe al ángel de la iglesia efesia | Τῷ ἀγγέλῳ τῆς Ἐφεσίνης ἐκκλησίας γράψον | independent | — | root (imperativo) | — | Manda escribir, y a quién | Sin sujeto expreso (2ª sg); el dativo va delante del verbo en griego | explicit | **Sin `καί`** — única carta que abre en asíndeton |
| c94 | 2 | 2:1 | Esto dice | Τάδε λέγει | independent | — | root (marco de discurso) | — | Abre el discurso citado; `Τάδε` es objeto antepuesto | — | explicit | — |
| c95 | 3 | 2:1 | el que sostiene las siete estrellas en su mano derecha | ὁ κρατῶν τοὺς ἑπτὰ ἀστέρας ἐν τῇ δεξιᾷ αὐτοῦ | embedded | c94 | participle-substantival (sujeto de λέγει) | ὁ | Primera descripción del que habla | Sin nombre propio: el sujeto se describe, no se nombra. `ὁ` ausente en cgv-data | explicit | — |
| c96 | 4 | 2:1 | el que camina en medio de los siete candelabros de oro | ὁ περιπατῶν ἐν μέσῳ τῶν ἑπτὰ λυχνιῶν τῶν χρυσῶν | embedded | c94 | participle-substantival (coord. con c95) | ὁ — **sin `καί`** | Segunda descripción del que habla | Griego **sin conector** entre las dos descripciones; LBF también (coma). `ὁ` ausente en cgv-data | explicit | — |
| c97 | 5 | 2:2 | Conozco tus obras, y tu trabajo, y tu perseverancia | Οἶδα τὰ ἔργα σου, καὶ τὸν κόπον σου, καὶ τὴν ὑπομονήν σου | independent | — | root (discurso) | — | Primera declaración del que habla: tres objetos coordinados | Sin sujeto expreso (1ª sg). `Οἶδα` es forma de perfecto (`V-RAI-1S`); LBF presente *Conozco* | explicit | — |
| c98 | 6 | 2:2 | y que no puedes soportar a los malos | καὶ ὅτι οὐ δύνῃ βαστάσαι κακούς | dependent | c97 | object (contenido `ὅτι`) | καὶ ὅτι | Cuarto objeto de *Conozco*, ahora una cláusula | Una cláusula `ὅτι` coordinada por `καί` con objetos nominales | explicit | — |
| c99 | 7 | 2:2 | soportar | βαστάσαι | embedded | c98 | complementary-inf | — | Complemento de `δύνῃ` | — | explicit | — |
| c100 | 8 | 2:2 | y has puesto a prueba a los que afirman ser apóstoles | καὶ ἐπειράσω τοὺς φάσκοντας εἶναι ἀποστόλους | independent | c97 coordinate — **o dependiente del `ὅτι` de c98 (ABIERTO)** | coordinate | καί | Cambia el sujeto: ahora obra el tú | Sin sujeto expreso (2ª sg). `ἐπειράσω` es **medio** | **uncertain** | Otras eds.: `ἐπείρασας` (activo) |
| c101 | 9 | 2:2 | a los que afirman | τοὺς φάσκοντας | embedded | c100 | participle-substantival (objeto) | — | A quiénes puso a prueba | — | explicit | Otras eds.: `τοὺς λέγοντας` |
| c102 | 10 | 2:2 | ser apóstoles | εἶναι ἀποστόλους | embedded | c101 | complementary-inf (discurso indirecto) | — | Qué afirman | — | explicit | — |
| c103 | 11 | 2:2 | y no lo son | καὶ οὐκ εἰσίν | independent | c100 coordinate | coordinate | καί | Niega la afirmación de c102 | Sujeto no expreso: es el grupo de c101. LBF añade el pronombre *lo* | explicit | — |
| c104 | 12 | 2:2 | y los hallaste falsos | καὶ εὗρες αὐτοὺς ψευδεῖς | independent | c100 coordinate | coordinate | καί | Resultado de la prueba | Sin sujeto expreso (2ª sg); `ψευδεῖς` es predicado del objeto | explicit | — |
| c105 | 13 | 2:3 | Y has soportado | καὶ ἐβάστασας | independent | c97 coordinate | coordinate | καί | Mismo verbo `βαστάζω` que c99, ahora cumplido por el tú | Sin sujeto expreso (2ª sg) | explicit | — |
| c106 | 14 | 2:3 | y tienes perseverancia | καὶ ὑπομονὴν ἔχεις | independent | c97 coordinate | coordinate | καί | Repite `ὑπομονή` de c97, ahora como verbo `ἔχεις` | Sin sujeto expreso | explicit | — |
| c107 | 15 | 2:3 | y por causa de mi nombre | καὶ διὰ τὸ ὄνομά μου | embedded | c108 | reason | καὶ διά | Causa del trabajo. **Primer `μου` del que habla** en la carta | — | explicit | — |
| c108 | 16 | 2:3 | has trabajado | κεκοπίακας | independent | c97 coordinate | coordinate | καί (en c107) | Verbo cognado de `κόπον` (c97), ahora perfecto | Sin sujeto expreso | explicit | — |
| c109 | 17 | 2:3 | y no te has cansado | καὶ οὐ κέκμηκας | independent | c97 coordinate | coordinate | καί | Cierra la cadena `καί` de 2:2–3 | LBF añade el reflexivo *te*; el griego no lo tiene | explicit | — |
| c110 | 18 | 2:4 | Pero tengo contra ti | ἀλλ᾽ ἔχω κατὰ σοῦ | independent | — | root (discurso) | ἀλλά | **Primer corte de conector del tramo**: vuelve la 1ª sg | Sin sujeto expreso; sin objeto expreso (a diferencia de 2:14 `ἔχω ὀλίγα`) | explicit | — |
| c111 | 19 | 2:4 | que has dejado tu primer amor | ὅτι τὴν ἀγάπην σου τὴν πρώτην ἀφῆκας | dependent | c110 | object (contenido `ὅτι`) | ὅτι | Qué es lo que tiene contra él | LBF lee `ὅτι` como contenido de *tengo contra ti*; la lectura causal (*porque*) también cabe | **grammatical** | — |
| c112 | 20 | 2:5 | Recuerda, pues | μνημόνευε οὖν | independent | — | root (imperativo) | οὖν | Primer mandato. `οὖν` **enlaza lógicamente** con c110–c111, no temporalmente | Sin sujeto expreso. Imperativo **presente** (`V-PAM-2S`) | explicit | — |
| c113 | 21 | 2:5 | de dónde has caído | πόθεν ἐκπέπτωκας | dependent | c112 | indirect-question (objeto) | πόθεν | Qué debe recordar | `πόθεν` es adverbio **interrogativo** (`ADV-I`), no relativo | explicit | — |
| c114 | 22 | 2:5 | arrepiéntete | καὶ μετανόησον | independent | c112 coordinate | coordinate | καί | Segundo mandato. Imperativo **aoristo** frente al presente de c112 | Sin sujeto expreso | explicit | — |
| c115 | 23 | 2:5 | y haz las primeras obras | καὶ τὰ πρῶτα ἔργα ποίησον | independent | c112 coordinate | coordinate | καί | Tercer mandato. `τὰ πρῶτα ἔργα` junta `ἔργα` (c97) y `τὴν πρώτην` (c111) | Sin sujeto expreso; objeto antepuesto al verbo | explicit | — |
| c116 | 24 | 2:5 | Pero si no | εἰ δὲ μή | dependent | c117 | condition (elíptica) | εἰ … δὲ … μή | Condición sin verbo: prótasis elidida | **Sin verbo en griego**; LBF mantiene la elipsis | explicit | — |
| c117 | 25 | 2:5 | voy a ti pronto | ἔρχομαί σοι ταχύ | independent | — | root (apódosis) | — | Consecuencia si no hay cambio | `ἔρχομαι` es **presente** (`V-PNI-1S`); LBF *voy*, no futuro. `ταχύ` es adverbio **interno** a la cláusula, no enlace con la fila anterior | explicit | `RE.UTR` marca variante `ταχεῖ` (dativo) / `ταχύ` (adverbio); Scrivener: `ταχύ` |
| c118 | 26 | 2:5 | y quitaré tu candelabro de su lugar | καὶ κινήσω τὴν λυχνίαν σου ἐκ τοῦ τόπου αὐτῆς | independent | c117 coordinate | coordinate | καί | Segunda consecuencia, en futuro. `λυχνία` vuelve de c96 | `κινέω` = *mover*; LBF *quitaré* (el `ἐκ τοῦ τόπου` precisa el sentido). Futuro `κινήσω` frente al presente `ἔρχομαι` | explicit | — |
| c119 | 27 | 2:5 | si no te arrepientes | ἐὰν μὴ μετανοήσῃς | dependent | c118 — **¿o c117 + c118? (ABIERTO)** | condition | ἐὰν μή | Segunda condición, **pospuesta a su apódosis**. Mismo verbo que c114, ahora subjuntivo | Sin sujeto expreso; LBF añade el reflexivo *te* | **uncertain** | — |
| c120 | 28 | 2:6 | Pero tienes esto | ἀλλὰ τοῦτο ἔχεις | independent | — | root (discurso) | ἀλλά | **Segundo `ἀλλά`**: hace par con c110 (`ἔχω` / `ἔχεις`) | Sin sujeto expreso; `τοῦτο` es objeto antepuesto que apunta a c121 | explicit | — |
| c121 | 29 | 2:6 | que odias las obras de los nicolaítas | ὅτι μισεῖς τὰ ἔργα τῶν Νικολαϊτῶν | dependent | c120 | object (contenido `ὅτι` = `τοῦτο`) | ὅτι | Qué es ese *esto*. Tercer `ἔργα` del tramo (c97 · c115 · aquí) | — | explicit | — |
| c122 | 30 | 2:6 | las cuales yo también odio | ἃ κἀγὼ μισῶ | dependent | c121 | relative | ἃ | El que habla se suma al mismo verbo `μισῶ` | `κἀγώ` = crasis `καὶ ἐγώ`: **único pronombre `ἐγώ` explícito del que habla en toda la carta**. `ἃ` ausente en cgv-data | explicit | — |
| c123 | 31 | 2:7 | El que tiene oído | ὁ ἔχων οὖς | embedded | c124 | participle-substantival (sujeto) | ὁ | Quién debe oír. Cuarto miembro de la familia `ἔχω` (c110 · c120 · c106 · aquí) | `οὖς` es **singular** (`N-ASN`); LBF *oído* singular | explicit | — |
| c124 | 32 | 2:7 | que oiga | ἀκουσάτω | independent | — | root (imperativo 3ª sg) | — | Mandato **en tercera persona**: no va dirigido solo al tú de 2:2–6 | Sin conector con lo anterior (asíndeton). `V-AAM-3S` | explicit | — |
| c125 | 33 | 2:7 | lo que el Espíritu dice a las iglesias | τί τὸ Πνεῦμα λέγει ταῖς ἐκκλησίαις | dependent | c124 | indirect-question (objeto) | τί | Qué hay que oír. **Nombra un hablante: el Espíritu** — y `λέγει` es el mismo verbo de c94 | `τί` es pronombre **interrogativo** (`I-ASN`), no relativo; LBF *lo que*. `ταῖς ἐκκλησίαις` es **plural** | explicit | — |
| c126 | 34 | 2:7 | Al que vence | Τῷ νικῶντι | embedded | c127 | participle-substantival (dativo antepuesto, resumido por `αὐτῷ`) | — | A quién va la promesa | Dativo delante del verbo y **repetido** por `αὐτῷ` dentro de la cláusula | explicit | — |
| c127 | 35 | 2:7 | le daré | δώσω αὐτῷ | independent | — | root (promesa) | — | Promesa en futuro. Sin conector con c124 | Sin sujeto expreso (1ª sg); `αὐτῷ` reanuda c126 | explicit | — |
| c128 | 36 | 2:7 | a comer | φαγεῖν | embedded | c127 | complementary-inf (objeto de `δώσω`) | — | Qué dará | — | explicit | — |
| c129 | 37 | 2:7 | del árbol de la vida | ἐκ τοῦ ξύλου τῆς ζωῆς | embedded | c128 | source (partitivo `ἐκ`) | ἐκ | De dónde comerá | — | explicit | — |
| c130 | 38 | 2:7 | que está en medio del paraíso de Dios | ὅ ἐστιν ἐν μέσῳ τοῦ παραδείσου τοῦ Θεοῦ | dependent | c129 | relative | ὅ | Ubica el árbol. **`ἐν μέσῳ` repite la frase de c96** | `ὅ` es `R-NSN` (neutro): concuerda con `ξύλου` (neutro), **no** con `ζωῆς` (femenino) — el antecedente es el árbol, no la vida. `ὅ` ausente en cgv-data | **grammatical** | — |

---

## Verificación de independientes (interna al mapa)

**Raíces independientes en orden de lectura (18 seguras + 1 abierta):**
c93 · c94 · c97 · c103 · c104 · c105 · c106 · c108 · c109 · c110 · c112 · c114 · c115 · c117 ·
c118 · c120 · c124 · c127 — más **c100, abierta** (raíz coordinada o contenido del `ὅτι` de c98).

### Cláusulas nominales que predican

**Ninguna en este tramo.** A diferencia de 1:14–16 (seis predicaciones sin cópula), 2:1–7 no tiene
ninguna cláusula nominal independiente: cada raíz trae verbo finito o imperativo. `εἰ δὲ μή`
(c116) carece de verbo pero es una **prótasis elidida**, no una predicación: depende de c117.

### Nominales / participios que **no** cuentan como cláusula independiente

| id | por qué no es raíz |
|---|---|
| c95, c96 | participios sustantivados que **son el sujeto** de `λέγει` (c94) |
| c101 | participio sustantivado, objeto de `ἐπειράσω` (c100) |
| c123 | participio sustantivado, **sujeto** de `ἀκουσάτω` (c124) |
| c126 | participio sustantivado en dativo, antepuesto y resumido por `αὐτῷ` dentro de c127 |
| c107 | frase preposicional de causa dentro de c108 |
| c116 | prótasis sin verbo, dentro de la condicional de c117 |

**Ningún participio de este tramo es candidato a cabeza de cláusula independiente.** Los cinco
(`κρατῶν`, `περιπατῶν`, `φάσκοντας`, `ἔχων`, `νικῶντι`) están sustantivados por artículo y ocupan
una casilla (sujeto u objeto) dentro de otra cláusula. No hay anacoluto como el `ἔχων` de 1:16
(c65).

### Cortes de versículo que **no** son cortes de cláusula

- **2:2 → 2:3**: la cadena `καί` de `Οἶδα` **no se interrumpe**. `καὶ ἐβάστασας` (c105) es el
  siguiente eslabón de la misma serie coordinada que arranca en c97; el punto de LBF entre 2:2 y
  2:3 no es un corte de cláusula ni de movimiento.
- **2:3 → 2:4**: aquí sí hay corte, pero lo hace `ἀλλά` (c110), no el número de versículo.
- **2:6 → 2:7**: `ὁ ἔχων οὖς ἀκουσάτω` abre sin conector; el corte es asindético y coincide con el
  versículo por casualidad, no por marca.
- **Dentro de 2:5**: el versículo contiene tres imperativos, una prótasis elidida, dos apódosis y
  una condicional pospuesta — **ocho cláusulas**. Es el versículo más denso del tramo y ninguna de
  sus divisiones internas viene del número.

Cobertura: 2:1, 2, 3, 4, 5, 6, 7 — **ningún versículo queda fuera**.

---

## Relation graph (edges only)

```
c93                          (γράψον — asíndeton; 3er γράψον del libro tras c47 y c82)

c94
├── c95
└── c96                      (SIN καί entre c95 y c96)

c97 → c98 → c99
c97 ‖ c100 → c101 → c102     (c100: ¿raíz coordinada, o contenido del ὅτι de c98? ABIERTO)
c97 ‖ c103                   (sujeto = τοὺς φάσκοντας de c101)
c97 ‖ c104
c97 ‖ c105
c97 ‖ c106
c97 ‖ c108 ← c107
c97 ‖ c109

c110 → c111                  (ἀλλά — primer corte de conector)

c112 → c113
c112 ‖ c114
c112 ‖ c115
c117 ← c116                  (prótasis elidida)
c117 ‖ c118 → c119           (¿c119 rige solo a c118, o a c117+c118? ABIERTO)

c120 → c121 → c122           (ἀλλά — segundo corte; par ἔχω/ἔχεις con c110)

c124 ← c123
c124 → c125

c127 ← c126
c127 → c128 → c129 → c130
```

`‖` = coordinate peers. Nesting = `governor` edge.

**Nota sobre la cadena de 2:2–3.** Las ocho raíces c97 · c100 · c103 · c104 · c105 · c106 · c108 ·
c109 forman **una sola cadena `καί` sin interrupción**. Los pares se apuntan al encabezado
compartido (c97), no unos a otros, porque `Οἶδα` es lo que abre la serie y ningún conector la
rompe hasta `ἀλλά` en 2:4.

---

## Participant continuity audit (internal)

| id | participant | actor_basis | role | action | verb_tense | continuity | temporal_relation | relation_to_previous |
|---|---|---|---|---|---|---|---|---|
| c93 | *(no nombrado — el que recibe el mandato)* | referent_continued_by_context | recipient-of-command | escribe | aorist imperative | transition (vuelve el mandato de c82) | unspecified | **reanuda `γράψον`** sin conector |
| c94 | el que sostiene / el que camina | actor_explicit **pero sin nombre** | speaker | dice | present | new | unspecified | new declaration |
| c95 | el que sostiene las siete estrellas | actor_explicit | speaker (sujeto) | sostiene | participle (nom.) | same | unspecified | participle-substantival |
| c96 | el que camina en medio de los candelabros | actor_explicit | speaker (sujeto) | camina | participle (nom.) | same | unspecified | coordinate sin conector |
| c97 | *(el mismo — 1ª sg, no nombrado)* | actor_implied_by_grammar | speaker | conozco | perfect (`Οἶδα`) | same | unspecified | speech opens |
| c98 | el ángel de la iglesia efesia | referent_continued_by_context | subject-of-state | no puedes | present | transition (de 1ª a 2ª persona, **dentro** del objeto de *Conozco*) | unspecified | object clause |
| c99 | — | — | — | soportar | infinitive | — | unspecified | complementary |
| c100 | el ángel de la iglesia efesia | referent_continued_by_context | actor | has puesto a prueba | aorist middle | same | unspecified | coordinate — **arista abierta** |
| c101 | los que afirman ser apóstoles | actor_explicit | *object* | afirman | participle | new | unspecified | participle-substantival |
| c102 | — | — | — | ser | infinitive | — | unspecified | complementary |
| c103 | los que afirman ser apóstoles | referent_continued_by_context | state-subject | no son | present | same (c101) | unspecified | coordinate |
| c104 | el ángel de la iglesia efesia | referent_continued_by_context | actor | hallaste | aorist | transition (vuelve el tú) | unspecified | coordinate |
| c105 | el ángel de la iglesia efesia | referent_continued_by_context | actor | has soportado | aorist | same | unspecified | coordinate — **mismo verbo `βαστάζω` de c99** |
| c106 | el ángel de la iglesia efesia | referent_continued_by_context | state-subject | tienes | present | same | unspecified | coordinate — **repite `ὑπομονή` de c97** |
| c107 | *(el que habla — `μου`)* | actor_explicit (genitivo) | — | — | — | — | unspecified | reason phrase |
| c108 | el ángel de la iglesia efesia | referent_continued_by_context | actor | has trabajado | perfect | same | unspecified | coordinate — **cognado de `κόπον` (c97)** |
| c109 | el ángel de la iglesia efesia | referent_continued_by_context | actor | no te has cansado | perfect | same | unspecified | coordinate; cierra la cadena |
| c110 | *(el que habla — 1ª sg, no nombrado)* | actor_implied_by_grammar | speaker | tengo contra ti | present | transition (vuelve la 1ª sg) | unspecified | **`ἀλλά` — corte de conector** |
| c111 | el ángel de la iglesia efesia | referent_continued_by_context | actor | has dejado | aorist | same referent, dentro del objeto | unspecified | object clause |
| c112 | el ángel de la iglesia efesia | referent_continued_by_context | recipient-of-command | recuerda | present imperative | transition (de declaración a mandato) | unspecified — **`οὖν` es enlace lógico, no temporal** | inferential |
| c113 | el ángel de la iglesia efesia | referent_continued_by_context | actor | has caído | perfect | same | unspecified | indirect question |
| c114 | el ángel de la iglesia efesia | referent_continued_by_context | recipient-of-command | arrepiéntete | aorist imperative | same | unspecified | coordinate command |
| c115 | el ángel de la iglesia efesia | referent_continued_by_context | recipient-of-command | haz | aorist imperative | same | unspecified | coordinate command |
| c116 | — | — | — | *(sin verbo)* | — | — | unspecified | elliptical condition |
| c117 | *(el que habla — 1ª sg, no nombrado)* | actor_implied_by_grammar | actor | voy | present | transition (vuelve la 1ª sg) | unspecified — **`ταχύ` es interno a la cláusula** | apodosis |
| c118 | *(el que habla)* | actor_implied_by_grammar | actor | quitaré | future | same | unspecified | coordinate — **`λυχνία` vuelve de c96** |
| c119 | el ángel de la iglesia efesia | referent_continued_by_context | actor | te arrepientes | aorist subjunctive | same referente que c114 | unspecified | condition **pospuesta a su apódosis** |
| c120 | el ángel de la iglesia efesia | referent_continued_by_context | state-subject | tienes | present | transition (vuelve el tú) | unspecified | **`ἀλλά` — segundo corte; par `ἔχω`/`ἔχεις` con c110** |
| c121 | el ángel de la iglesia efesia | referent_continued_by_context | experiencer | odias | present | same | unspecified | object clause |
| c122 | **yo** (el que habla) | actor_explicit — **`κἀγώ`, único `ἐγώ` de la carta** | experiencer | odio | present | transition | unspecified | relative |
| c123 | el que tiene oído | actor_explicit | actor (sujeto) | tiene | participle | **new — ya no es el tú de Éfeso** | unspecified | participle-substantival |
| c124 | el que tiene oído | actor_explicit | recipient-of-command | que oiga | aorist imperative 3ª sg | new | unspecified | **asíndeton**; mandato en 3ª persona |
| c125 | **el Espíritu** | actor_explicit | speaker | dice | present | **new — primer hablante nombrado de la carta** | unspecified | indirect question — **mismo verbo `λέγει` de c94** |
| c126 | el que vence | actor_explicit | recipient | vence | participle (dat.) | new | unspecified | dativo antepuesto |
| c127 | *(el que habla — 1ª sg, no nombrado)* | actor_implied_by_grammar | actor | daré | future | transition | unspecified | **asíndeton**; promesa |
| c128 | el que vence | referent_continued_by_context | actor | comer | infinitive | same (c126) | unspecified | complementary |
| c129 | — | — | — | — | — | — | unspecified | source phrase |
| c130 | el árbol de la vida | actor_explicit | state-subject | está | present | new | unspecified | relative — **`ἐν μέσῳ` repite c96** |

### Notas de continuidad (para Escriba, después de la aprobación)

- **El que habla nunca se nombra en 2:1–7.** Su sujeto **sí está expreso** (`ὁ κρατῶν … ὁ
  περιπατῶν`, c95–c96), pero por descripción, no por nombre. Las dos descripciones coinciden con lo
  que Juan vio en 1:16 (siete estrellas en la mano derecha, c65) y en 1:13 (en medio de los
  candelabros, c56): la coincidencia es del texto. **Nombrar al hablante aquí no lo es.** No
  promover a sujeto explícito ningún antecedente. `actor_basis` debe quedarse en
  `actor_explicit` para la frase participial y sin nombre propio en la superficie.
- **El único hablante nombrado de la carta es el Espíritu (c125).** El que dicta la carta queda
  descrito; el que habla a las iglesias queda nombrado. Dato del texto, registrado sin tesis.
- **El «tú» de 2:2–6 nunca se nombra tampoco.** Viene del dativo `τῷ ἀγγέλῳ` de c93 y de las
  desinencias de 2ª singular. Es `referent_continued_by_context`, **no** `actor_explicit`. Ver la
  bandera sobre el manual actual en *Open questions* #7.
- **Ningún enlace temporal explícito entre cláusulas en todo el tramo.** Las 38 filas van
  `unspecified`. Tres cosas que **no** son enlaces temporales:
  - `οὖν` (c112) es **inferencial**: el mandato se sigue del cargo, no viene *después* de él.
  - `ταχύ` (c117) es un adverbio **interno** a su cláusula: es lo que el hablante dice, no una
    relación entre filas del mapa.
  - `εἰ δὲ μή` (c116) y `ἐὰν μή` (c119) son **condicionales**, no cronología.
  No convertir nada de esto en *después*, *luego*, *ahora*, *a continuación ocurre*.
- **Orden del discurso ≠ orden lógico en 2:5.** La condicional `ἐὰν μὴ μετανοήσῃς` (c119) llega
  **al final**, después de su propia apódosis. En la lectura, la amenaza se oye antes que la
  condición que la gobierna. Nombrar eso como secuencia **textual**, nunca como cronología.
- **Cadena léxica del tramo, registrada sin interpretación:**
  - `ἔργα` tres veces — *tus obras* (c97) · *las primeras obras* (c115) · *las obras de los
    nicolaítas* (c121).
  - `βαστάζω` dos veces — *no puedes soportar a los malos* (c99) · *has soportado* (c105).
  - `ὑπομονή` dos veces — como objeto de *Conozco* (c97) · como lo que *tiene* (c106).
  - `κόπος` / `κοπιάω` — *tu trabajo* (c97) · *has trabajado* (c108).
  - `μετανοέω` dos veces — imperativo (c114) · subjuntivo en la condición final (c119).
  - `ἔχω` cuatro veces — *tengo contra ti* (c110) · *tienes perseverancia* (c106) · *tienes esto*
    (c120) · *el que tiene oído* (c123).
  - `μισέω` dos veces, con dos sujetos — *odias* (c121) · *yo también odio* (c122).
  - `πρῶτος` dos veces — *tu primer amor* (c111) · *las primeras obras* (c115).
  - `ἐν μέσῳ` dos veces, **abriendo y cerrando la carta** — *en medio de los siete candelabros*
    (c96) · *en medio del paraíso de Dios* (c130).
  - `λυχνία` — *los siete candelabros* entre los que camina (c96) · *tu candelabro* que quitará
    (c118). En 1:20 (c91) el texto ya declaró qué son los candelabros.
  - `λέγει` — *Esto dice* el que sostiene y camina (c94) · *lo que el Espíritu dice* (c125).
  Todo esto es **dato del texto, no tesis**. Que aparezca o no en `>` lo decide Escriba tras la
  aprobación.
- **Tres personas verbales se alternan sin marca**: 1ª sg (el que habla: `Οἶδα`, `ἔχω`,
  `ἔρχομαι`, `κινήσω`, `μισῶ`, `δώσω`), 2ª sg (el ángel), 3ª sg/pl (los que afirman, el Espíritu,
  el árbol). El cambio de persona **no** es corte de movimiento: ocurre dentro de la cadena `καί`
  de 2:2–3 sin ningún conector adversativo.

---

## Open questions for Arquitecto (Dudas seed)

1. **c100 `καὶ ἐπειράσω` — ¿raíz coordinada o contenido del `ὅτι`?** `Οἶδα` recibe tres objetos
   nominales, luego una cláusula `ὅτι` (c98), luego `καὶ ἐπειράσω` en 2ª sg finita. Puede seguir
   dentro del `ὅτι` (*y que pusiste a prueba…*) o abrir una aserción nueva coordinada con `Οἶδα`.
   LBF puntúa con comas y no decide. **No inventar la arista.** ¿Se fija una lectura o se declara
   abierta?
2. **c119 `ἐὰν μὴ μετανοήσῃς` — ¿qué rige?** ¿Solo a `κινήσω` (c118), o a `ἔρχομαι` + `κινήσω`
   (c117 + c118)? La coma de LBF la pega a `κινήσω`. La condición está **pospuesta a su apódosis**
   en los dos casos.
3. **c111 `ὅτι` — ¿contenido o causa?** *tengo contra ti **que** has dejado…* (contenido, la
   lectura de LBF) o *tengo contra ti **porque** has dejado…* (causa). Sin objeto expreso en
   `ἔχω κατὰ σοῦ`, la lectura de contenido es la que da al verbo su objeto.
4. **¿2:2 y 2:3 son un movimiento o dos?** A favor de uno: la cadena `καί` no se rompe en ningún
   punto entre c97 y c109, y el primer corte de conector es `ἀλλά` en 2:4. A favor de dos: 2:3
   vuelve a decir en verbos lo que 2:2 dijo en sustantivos (`κόπον`→`κεκοπίακας`,
   `ὑπομονήν`→`ὑπομονὴν ἔχεις`, `βαστάσαι`→`ἐβάστασας`) y pasa de aoristos a perfectos.
5. **¿2:6 es movimiento propio, o va con 2:4–5?** `ἀλλὰ τοῦτο ἔχεις` (c120) hace par explícito con
   `ἀλλ᾽ ἔχω κατὰ σοῦ` (c110) — mismo verbo, sujetos invertidos, mismo conector. Los dos `ἀλλά`
   enmarcan los imperativos de 2:5. ¿El par pesa más que el cierre de la condicional en c119?
6. **¿c124 y c127 van juntos?** `ἀκουσάτω` y `δώσω` son dos raíces **sin conector entre ellas**
   (asíndeton), y las dos rompen con el tú de 2:2–6: una habla en 3ª persona a cualquiera que
   tenga oído, la otra promete al que vence. ¿Un movimiento con dos `####`, o dos movimientos?
7. **El manual actual de 2:1–7 no sigue la plantilla de producción, y afirma un sujeto que el
   texto no expresa.** En `manual/manual.md` el tramo trae encabezados `###` por cláusula con
   referencias tipo `Apocalipsis 2:1:7` / `2:2:19` (forma de Compiler, no la de 1:1–8), líneas de
   tripleta `*` y, en la línea 418, `*Yo, Juan* → *Escribe* → *al ángel…*` — un sujeto **que el
   griego no expresa** (`γράψον` es imperativo sin sujeto). Además dos líneas de evidencia mal
   etiquetadas: la 443 llama *y* al conector `ὅτι`, y la 452 llama *a* al conector `καί`.
   Esa salida es **provisional** y debe reemplazarse por esta jerarquía tras la aprobación.
   Las líneas `*` de evidencia son de Compiler: **no las toco aquí.**
8. **Defecto de datos griego (arriba).** En este tramo la omisión de tokens de una letra con
   espíritu áspero borra `ὁ … ὁ` (2:1, los dos sujetos participiales de `λέγει`), `ἃ` (2:6) y `ὅ`
   (2:7) — cuatro de las cinco aristas más visibles del tramo. ¿Quién repara el emisor de
   `cgv-data/bibles/TR1894/tr1894.txt`? Sigue pendiente desde `clause-map-1-9-20.md`.

Verse numbers must not answer these. Governor edges and continuity of thought must.
