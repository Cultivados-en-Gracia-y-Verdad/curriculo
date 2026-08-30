# Clause map — Apocalipsis 1:9–20 (Arquitecto input)

**Status:** inventory for Arquitecto — relation-first. Not student content.
**Spanish:** LBF (capa de audición continua, `manual/manual.md`) · **Greek:** Scrivener 1894
**Greek source of record:** `Biblia-LBF/source/greek/TR1894/scrivener-textonly/RE.SCV` (beta-code,
transcrito a griego acentuado en este mapa).
**Greek source NOT used:** `cgv-data/bibles/TR1894/tr1894.txt` — defectuoso, ver
**Defecto de datos** abajo. No leer griego de ese archivo hasta que se repare.

**Instruction to Arquitecto:** Build literary movements and indent hierarchy from `governor` /
`relation` below. Verse numbers in `ref` locate only. Do not cut movements at verse boundaries
unless a governor edge ends there. Do not write `>` commentary.

**Continuidad con el piloto:** los ids continúan la numeración de `clause-map-1-1-8.md`
(c01–c31). Este tramo va de **c32 a c92** — **61 cláusulas**.

---

## Defecto de datos — griego (BLOQUEANTE para todo lo que lea cgv-data TR1894)

`cgv-data/bibles/TR1894/tr1894.txt` **omite sistemáticamente los tokens griegos de una sola letra
con espíritu áspero**: `ὁ`, `ἡ`, `ὃ`, `ἃ`. Los tokens de dos o más letras sobreviven.

Conteo de palabra completa en todo el NT de ese archivo:

| token | ocurrencias en el archivo | comparación |
|---|---|---|
| `ὁ` | 21 | `οἱ` = 978 |
| `ἡ` | 4 | `αἱ` = 132 |
| `ὃ` | 0 | `ἣν` = 90 |
| `ἃ` | 2 | `ὧν` = 72 |

Evidencia fuera de Apocalipsis (misma falla, luego no es una lectura de edición):

- Juan 1:1 — el archivo: «Ἐν ἀρχῇ ἦν λόγος, καὶ λόγος ἦν πρὸς τὸν Θεόν». Scrivener: **ὁ** λόγος ×2.
- Juan 3:16 — el archivo: «ἠγάπησεν Θεὸς τὸν κόσμον … πᾶς πιστεύων». Scrivener: **ὁ** Θεός,
  πᾶς **ὁ** πιστεύων.

Evidencia dentro de Apocalipsis 1 (Scrivener a la izquierda, archivo cgv-data a la derecha):

| ref | Scrivener 1894 (`RE.SCV`) | cgv-data `tr1894.txt` |
|---|---|---|
| 1:1 | ἣν ἔδωκεν αὐτῷ **ὁ** θεός … **ἃ** δεῖ γενέσθαι | …αὐτῷ Θεός … δεῖ γενέσθαι |
| 1:3 | μακάριος **ὁ** ἀναγινώσκων … **ὁ** γὰρ καιρός | μακάριος ἀναγινώσκων … γὰρ καιρός |
| 1:4 | ἀπὸ τοῦ **ὁ** ὢν καὶ **ὁ** ἦν καὶ **ὁ** ἐρχόμενος … πνευμάτων **ἃ** ἐστιν | …τοῦ ὢν καὶ ἦν καὶ ἐρχόμενος … πνευμάτων ἐστιν |
| 1:5 | **ὁ** μάρτυς **ὁ** πιστός, **ὁ** πρωτότοκος … καὶ **ὁ** ἄρχων | μάρτυς πιστός, πρωτότοκος … καὶ ἄρχων |
| 1:8 | λέγει **ὁ** κύριος, **ὁ** ὢν καὶ **ὁ** ἦν καὶ **ὁ** ἐρχόμενος, **ὁ** παντοκράτωρ | λέγει Κύριος, ὢν καὶ ἦν καὶ ἐρχόμενος, παντοκράτωρ |
| 1:11 | **ὁ** πρῶτος καὶ **ὁ** ἔσχατος· καὶ **Ὃ** βλέπεις γράψον | πρῶτος καὶ ἔσχατος· καὶ βλέπεις γράψον |
| 1:15 | καὶ **ἡ** φωνὴ αὐτοῦ | καὶ φωνὴ αὐτοῦ |
| 1:16 | καὶ **ἡ** ὄψις αὐτοῦ ὡς **ὁ** ἥλιος | καὶ ὄψις αὐτοῦ, ὡς ἥλιος |
| 1:17 | ἐγώ εἰμι **ὁ** πρῶτος καὶ **ὁ** ἔσχατος | ἐγώ εἰμι πρῶτος καὶ ἔσχατος |
| 1:18 | καὶ **ὁ** ζῶν | καὶ ζῶν |
| 1:19 | γράψον **ἃ** εἶδες, καὶ **ἃ** εἰσιν, καὶ **ἃ** μέλλει γίνεσθαι | γράψον εἶδες, καὶ εἰσὶ, καὶ μέλλει γινέσθαι |
| 1:20 | ἀστέρων **ὧν** εἶδες … λυχνίαι **ἃς** εἶδες | ἀστέρων **ὦν** εἶδες … λυχνίαι **ἅς** εἶδες (espíritu suave — error de aliento) |

Otras corrupciones del mismo archivo en este capítulo: `ὑιῷ` por `υἱῷ` (1:13), `ἐιμι` por `εἰμι`
(1:11), punto alto suelto en `τῶν ἑπτὰ· ἀστέρων` (1:20).

### Consecuencia para el tramo ya publicado 1:1–8 — requiere reparación humana

`clause-map-1-1-8.md` registró dos de estas omisiones **como si fueran lecturas de Scrivener**:

- c15 `variant`: «Scrivener without ὁ…ὁ…» — **falso**. Scrivener 1:5 lee ὁ μάρτυς ὁ πιστός, ὁ
  πρωτότοκος …, καὶ ὁ ἄρχων.
- c30 `variant`: «Scrivener without ὁ…» — **falso**. Scrivener 1:8 lee ὁ ὢν καὶ ὁ ἦν καὶ ὁ
  ἐρχόμενος.
- c13 (1:4) `el`: «ἀπὸ τοῦ ὢν καὶ ἦν καὶ ἐρχόμενος» — a Scrivener le faltan tres ὁ.
- c04 (1:1) `el`: «ἃ δεῖ γενέσθαι» está bien en el mapa, pero el archivo de datos no lo respalda.

Y la nota técnica del manual `[^ap-1-8-on-en-erchomenos]` afirma «Scrivener 1:8: **ὢν καὶ ἦν καὶ
ἐρχόμενος** (sin artículo ante cada miembro)» — esa afirmación es falsa y está en el manual del
estudiante. **No la corrijo aquí:** el manual es de Escriba y la corrección del archivo de datos
pertenece al dueño de cgv-data. Queda declarada, no oculta.

**Ruta del arreglo:** el emisor que produjo `tr1894.txt` pierde tokens de un carácter con espíritu
áspero. Reparar allí y reexportar; luego rehacer el griego de `clause-map-1-1-8.md` y de las notas
técnicas 1:1–8. Este mapa (1:9–20) no depende de ese archivo.

---

## Inventory

61 filas · c32–c92 · `discourse_order` = orden de lectura (1–61).

| id | ord | ref | es | el | level | governor | relation | connector | declares | unexpressed | certainty | variant |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| c32 | 1 | 1:9 | Yo, Juan, … estuve en la isla | Ἐγὼ Ἰωάννης … ἐγενόμην ἐν τῇ νήσῳ | independent | — | root | — | Juan se nombra y dice dónde estuvo | — | explicit | — |
| c33 | 2 | 1:9 | también hermano de ustedes y copartícipe | ὁ καὶ ἀδελφὸς ὑμῶν καὶ συγκοινωνός | embedded | c32 | apposition (articular) | ὁ καί | Cómo se sitúa Juan respecto de los oyentes | Sin verbo; artículo ὁ ausente en cgv-data | explicit | — |
| c34 | 3 | 1:9 | en la tribulación y en el reino y la perseverancia de Jesús Cristo | ἐν τῇ θλίψει καὶ ἐν τῇ βασιλείᾳ καὶ ὑπομονῇ Ἰησοῦ Χριστοῦ | embedded | c33 | sphere | ἐν ×2 | En qué es copartícipe | Tercer miembro sin ἐν propio | explicit | — |
| c35 | 4 | 1:9 | llamada Patmos | τῇ καλουμένῃ Πάτμῳ | embedded | c32 | participle-attributive | — | Nombra la isla | — | explicit | — |
| c36 | 5 | 1:9 | por causa de la palabra de Dios | διὰ τὸν λόγον τοῦ Θεοῦ | embedded | c32 | reason | διά | Primera causa del estar allí | — | explicit | — |
| c37 | 6 | 1:9 | y por el testimonio de Jesús Cristo | καὶ διὰ τὴν μαρτυρίαν Ἰησοῦ Χριστοῦ | embedded | c32 | reason (coordinate con c36) | καὶ διά | Segunda causa | — | explicit | — |
| c38 | 7 | 1:10 | Estuve en el Espíritu | ἐγενόμην ἐν Πνεύματι | independent | — | root | — | Segundo ἐγενόμην: en qué estado estuvo | Sin sujeto expreso (1ª sg) | explicit | — |
| c39 | 8 | 1:10 | en el día del Señor | ἐν τῇ Κυριακῇ ἡμέρᾳ | embedded | c38 | temporal-frame | ἐν | Marco temporal absoluto del estado | — | explicit | — |
| c40 | 9 | 1:10 | y oí detrás de mí una voz fuerte | καὶ ἤκουσα ὀπίσω μου φωνὴν μεγάλην | independent | c38 | coordinate | καί | Juan oye; la voz está detrás | Sin sujeto expreso | explicit | — |
| c41 | 10 | 1:10 | como de trompeta | ὡς σάλπιγγος | embedded | c40 | comparison | ὡς | Compara la voz | — | explicit | — |
| c42 | 11 | 1:11 | que decía | λεγούσης | embedded | c41 **o** c40 — **abierto** | participle-speech | — | Abre el discurso de la voz | — | **uncertain** | Genitivo: concuerda con σάλπιγγος (gen.), no con φωνήν (ac.) |
| c43 | 12 | 1:11 | Yo soy | Ἐγώ εἰμι | independent | — | root (discurso) | — | La voz se declara a sí misma | Hablante no nombrado en este punto | explicit | cgv-data: `ἐιμι` (errata) |
| c44 | 13 | 1:11 | el Alfa y la Omega | τὸ Α καὶ τὸ Ω | embedded | c43 | predicate | — | Primer par predicativo | — | explicit | — |
| c45 | 14 | 1:11 | el primero y el último | ὁ πρῶτος καὶ ὁ ἔσχατος | embedded | c43 | predicate | καί | Segundo par predicativo | Artículos ausentes en cgv-data | explicit | — |
| c46 | 15 | 1:11 | y lo que ves | καὶ Ὃ βλέπεις | dependent | c47 | relative-object (antepuesto) | Ὃ | Objeto adelantado del mandato | Relativo ausente en cgv-data | explicit | — |
| c47 | 16 | 1:11 | escríbelo en un libro | γράψον εἰς βιβλίον | independent | — | root (imperativo, discurso) | — | Primer mandato de escribir | LBF añade el pronombre *lo* | explicit | — |
| c48 | 17 | 1:11 | y envíalo a las siete iglesias | καὶ πέμψον ταῖς ἑπτὰ ἐκκλησίαις | independent | c47 | coordinate | καί | Segundo mandato: enviar | πέμψον no lleva objeto en griego; LBF añade *lo* | explicit | — |
| c49 | 18 | 1:11 | que están en Asia | ταῖς ἐν Ἀσίᾳ | embedded | c48 | attributive | — | Localiza las iglesias | Sin verbo | explicit | — |
| c50 | 19 | 1:11 | a Éfeso, a Esmirna, a Pérgamo, a Tiatira, a Sardis, a Filadelfia y a Laodicea | εἰς Ἔφεσον, καὶ εἰς Σμύρναν, καὶ εἰς Πέργαμον, καὶ εἰς Θυάτειρα, καὶ εἰς Σάρδεις, καὶ εἰς Φιλαδέλφειαν, καὶ εἰς Λαοδίκειαν | embedded | c48 | destination (7 frases εἰς coordinadas) | εἰς ×7 | Enumera los siete destinos | — | explicit | — |
| c51 | 20 | 1:12 | Y me volví | Καὶ ἐπέστρεψα | independent | — | root | καί | Juan gira | Sin sujeto expreso | explicit | — |
| c52 | 21 | 1:12 | para ver la voz | βλέπειν τὴν φωνήν | embedded | c51 | purpose-inf | — | Propósito del giro: **ver** una voz | LBF *para* | explicit | — |
| c53 | 22 | 1:12 | que hablaba conmigo | ἥτις ἐλάλησε μετ’ ἐμοῦ | dependent | c52 | relative | ἥτις | Identifica la voz por lo que hizo | — | explicit | Scrivener aoristo ἐλάλησε; LBF imperfecto *hablaba* |
| c54 | 23 | 1:12 | y al volverme | καὶ ἐπιστρέψας | embedded | c55 | participle | καί | Repite el giro antes de ver | — | explicit | — |
| c55 | 24 | 1:12 | vi siete candelabros de oro | εἶδον ἑπτὰ λυχνίας χρυσᾶς | independent | c51 | coordinate | καί | Primer objeto visto | Sin sujeto expreso | explicit | — |
| c56 | 25 | 1:13 | y en medio de los siete candelabros a alguien semejante a un hijo de hombre | καὶ ἐν μέσῳ τῶν ἑπτὰ λυχνιῶν ὅμοιον υἱῷ ἀνθρώπου | embedded | c55 | coordinate-object (2º objeto de εἶδον) | καί | Segundo objeto visto — **sin verbo propio**; el corte de versículo no crea cláusula | LBF añade *a alguien*; griego solo ὅμοιον | grammatical | cgv-data: `ὑιῷ` (errata) |
| c57 | 26 | 1:13 | vestido con una túnica hasta los pies | ἐνδεδυμένον ποδήρη | embedded | c56 | participle-attributive | — | Primera nota de atuendo | — | explicit | — |
| c58 | 27 | 1:13 | y ceñido alrededor del pecho con un cinturón de oro | καὶ περιεζωσμένον πρὸς τοῖς μαστοῖς ζώνην χρυσῆν | embedded | c56 | participle-attributive (coord. con c57) | καί | Segunda nota de atuendo | — | explicit | — |
| c59 | 28 | 1:14 | Pero su cabeza y sus cabellos eran blancos | ἡ δὲ κεφαλὴ αὐτοῦ καὶ αἱ τρίχες λευκαί | independent | — | root (**cláusula nominal**) | δέ | Abre la serie descriptiva con sujeto propio | Sin cópula; LBF suple *eran* | explicit | — |
| c60 | 29 | 1:14 | como lana blanca, como nieve | ὡσεὶ ἔριον λευκόν, ὡς χιών | embedded | c59 | comparison | ὡσεί; ὡς | Doble comparación del blanco | — | explicit | — |
| c61 | 30 | 1:14 | y sus ojos como llama de fuego | καὶ οἱ ὀφθαλμοὶ αὐτοῦ ὡς φλὸξ πυρός | independent | c59 | coordinate (nominal) | καί | Segunda nota descriptiva | Sin cópula; LBF suple *eran* | explicit | — |
| c62 | 31 | 1:15 | y sus pies semejantes al bronce bruñido | καὶ οἱ πόδες αὐτοῦ ὅμοιοι χαλκολιβάνῳ | independent | c59 | coordinate (nominal) | καί | Tercera nota descriptiva | Sin cópula | explicit | — |
| c63 | 32 | 1:15 | como refinado en un horno | ὡς ἐν καμίνῳ πεπυρωμένοι | embedded | c62 | comparison-participle | ὡς | Cómo es el bronce | Griego plural πεπυρωμένοι (concuerda con πόδες); LBF singular *refinado* | explicit | — |
| c64 | 33 | 1:15 | y su voz como el sonido de muchas aguas | καὶ ἡ φωνὴ αὐτοῦ ὡς φωνὴ ὑδάτων πολλῶν | independent | c59 | coordinate (nominal) | καί | Cuarta nota — reaparece φωνή | Sin cópula; ἡ ausente en cgv-data | explicit | — |
| c65 | 34 | 1:16 | y tenía en su mano derecha siete estrellas | καὶ ἔχων ἐν τῇ δεξιᾷ αὐτοῦ χειρὶ ἀστέρας ἑπτά | embedded | c56 — **anfitrión abierto** | participle-anacoluthon | καί | Quinta nota: qué sostiene | Participio **nominativo** sin verbo finito que lo hospede; el único candidato (ὅμοιον, c56) es **acusativo**. LBF suple el finito *tenía* | **uncertain** | — |
| c66 | 35 | 1:16 | y de su boca salía una espada afilada de dos filos | καὶ ἐκ τοῦ στόματος αὐτοῦ ῥομφαία δίστομος ὀξεῖα ἐκπορευομένη | independent | c59 | coordinate (nominal con predicado participial) | καί | Sexta nota | Sin cópula; ἐκπορευομένη concuerda con ῥομφαία | explicit | — |
| c67 | 36 | 1:16 | y su rostro era como el sol | καὶ ἡ ὄψις αὐτοῦ ὡς ὁ ἥλιος | independent | c59 | coordinate (nominal) | καί | Séptima nota, cierra la serie | Sin cópula; ἡ y ὁ ausentes en cgv-data | explicit | — |
| c68 | 37 | 1:16 | que resplandece con toda su fuerza | φαίνει ἐν τῇ δυνάμει αὐτοῦ | dependent | c67 | comparative-clause (finita) | — | Qué hace el sol de la comparación | Griego: φαίνει finito **sin relativo**; LBF suple *que* | grammatical | — |
| c69 | 38 | 1:17 | Y cuando lo vi | Καὶ ὅτε εἶδον αὐτόν | dependent | c70 | temporal | ὅτε | **Único enlace temporal explícito entre cláusulas del tramo** | Sin sujeto expreso | explicit | — |
| c70 | 39 | 1:17 | caí a sus pies | ἔπεσα πρὸς τοὺς πόδας αὐτοῦ | independent | — | root | — | Reacción de Juan | Sin sujeto expreso | explicit | — |
| c71 | 40 | 1:17 | como muerto | ὡς νεκρός | embedded | c70 | comparison | ὡς | Cómo cayó | — | explicit | — |
| c72 | 41 | 1:17 | Y puso su mano derecha sobre mí | καὶ ἐπέθηκε τὴν δεξιὰν αὐτοῦ χεῖρα ἐπ’ ἐμέ | independent | c70 | coordinate | καί | Cambia el que actúa: ahora obra la figura | **Sujeto no expresado** (3ª sg); el texto no lo nombra | explicit | Scrivener ἐπέθηκε |
| c73 | 42 | 1:17 | diciéndome | λέγων μοι | embedded | c72 | participle (habla) | — | Abre el discurso de la figura | Nominativo, hospedado por ἐπέθηκε | explicit | — |
| c74 | 43 | 1:17 | No tengas miedo | Μὴ φοβοῦ | independent | — | root (imperativo, discurso) | μή | Primera palabra dicha a Juan | — | explicit | — |
| c75 | 44 | 1:17 | Yo soy el primero y el último | ἐγώ εἰμι ὁ πρῶτος καὶ ὁ ἔσχατος | independent | — | root (discurso) | — | La figura repite la autodesignación oída en 1:11 | Artículos ausentes en cgv-data | explicit | — |
| c76 | 45 | 1:18 | y el que vive | καὶ ὁ ζῶν | embedded | c75 | predicate (coord. con c45/c75) | καί | Tercer miembro del predicado | ὁ ausente en cgv-data | explicit | — |
| c77 | 46 | 1:18 | Estuve muerto | καὶ ἐγενόμην νεκρός | independent | c75 | coordinate | καί | Mismo verbo ἐγενόμην que usó Juan en 1:9 y 1:10, ahora en boca de la figura | Sin sujeto expreso | explicit | — |
| c78 | 47 | 1:18 | y he aquí | καὶ ἰδού | embedded | c79 | attention-particle | ἰδού | Dirige la atención | — | explicit | — |
| c79 | 48 | 1:18 | vivo por los siglos de los siglos | ζῶν εἰμι εἰς τοὺς αἰῶνας τῶν αἰώνων | independent | c77 | coordinate | καί | Perífrasis: participio + εἰμι | — | explicit | — |
| c80 | 49 | 1:18 | Amén | ἀμήν | independent | — | affirmation | — | Cierra la declaración | Sin verbo | explicit | — |
| c81 | 50 | 1:18 | Y tengo las llaves del Hades y de la muerte | καὶ ἔχω τὰς κλεῖς τοῦ ᾅδου καὶ τοῦ θανάτου | independent | c75 | coordinate | καί | Última declaración de la figura antes del mandato | Sin sujeto expreso | explicit | Scrivener: ᾅδου **antes** de θανάτου (otras eds. invierten) |
| c82 | 51 | 1:19 | Escribe | γράψον | independent | — | root (imperativo, discurso) | — | Se reanuda el mandato abierto en 1:11 | Scrivener **sin** οὖν (otras eds. lo traen) | explicit | Sin οὖν |
| c83 | 52 | 1:19 | las cosas que has visto | ἃ εἶδες | dependent | c82 | relative-object | ἃ | Primer objeto de lo que hay que escribir | Relativo ausente en cgv-data | explicit | — |
| c84 | 53 | 1:19 | las que son | καὶ ἃ εἰσιν | dependent | c82 | relative-object (coord.) | καὶ ἃ | Segundo objeto | Relativo ausente en cgv-data | explicit | — |
| c85 | 54 | 1:19 | y las que están por suceder después de estas cosas | καὶ ἃ μέλλει γίνεσθαι μετὰ ταῦτα | dependent | c82 | relative-object (coord.) | καὶ ἃ | Tercer objeto. **μετὰ ταῦτα es contenido del discurso**, no un enlace temporal entre filas del mapa | Relativo ausente en cgv-data | explicit | — |
| c86 | 55 | 1:19 | suceder | γίνεσθαι | embedded | c85 | complementary-inf | — | Complemento de μέλλει | — | explicit | — |
| c87 | 56 | 1:20 | el misterio de las siete estrellas | τὸ μυστήριον τῶν ἑπτὰ ἀστέρων | embedded | c82 | apposition-object | — | Cuarto objeto del mandato — **sin verbo propio**; cruza el corte de versículo | Forma **ambigua** nom./ac.; si es nominativo sería un encabezado suelto, no objeto | **uncertain** | — |
| c88 | 57 | 1:20 | que viste en mi mano derecha | ὧν εἶδες ἐπὶ τῆς δεξιᾶς μου | dependent | c87 | relative | ὧν | Vincula las estrellas con lo visto en 1:16 | cgv-data escribe `ὦν` (espíritu suave — error) | explicit | — |
| c89 | 58 | 1:20 | y los siete candelabros de oro | καὶ τὰς ἑπτὰ λυχνίας τὰς χρυσᾶς | embedded | c82 | object (coord. con c87) | καί | Quinto objeto — acusativo inequívoco | — | explicit | — |
| c90 | 59 | 1:20 | las siete estrellas son ángeles de las siete iglesias | οἱ ἑπτὰ ἀστέρες ἄγγελοι τῶν ἑπτὰ ἐκκλησιῶν εἰσιν | independent | — | root (declaración explicativa) | — | Declara qué son las estrellas | εἰσιν finito, pospuesto | explicit | — |
| c91 | 60 | 1:20 | y los siete candelabros … son siete iglesias | καὶ αἱ ἑπτὰ λυχνίαι … ἑπτὰ ἐκκλησίαι εἰσίν | independent | c90 | coordinate | καί | Declara qué son los candelabros | — | explicit | — |
| c92 | 61 | 1:20 | que viste | ἃς εἶδες | dependent | c91 | relative | ἃς | Vincula los candelabros con lo visto en 1:12 | cgv-data escribe `ἅς` (aliento erróneo) | explicit | — |

---

## Verificación de independientes (interna al mapa)

**Raíces independientes en orden de lectura (25 seguras + 1 abierta):**
c32 · c38 · c40 · c43 · c47 · c48 · c51 · c55 · c59 · c61 · c62 · c64 · c66 · c67 · c70 · c72 ·
c74 · c75 · c77 · c79 · c80 · c81 · c82 · c90 · c91 — más **c65, abierta**.

### Cláusulas nominales que sí predican (cuentan como independientes)

c59, c61, c62, c64, c66, c67 — seis predicaciones sin cópula en 1:14–16. Cada una trae **sujeto
nominativo propio** (κεφαλή/τρίχες · ὀφθαλμοί · πόδες · φωνή · ῥομφαία · ὄψις) y un predicado
propio; LBF suple *eran / salía*. No son aposiciones dentro de otra cláusula: predican solas.

### Nominales que **no** cuentan como cláusula (van dentro de otra)

| id | por qué no es raíz |
|---|---|
| c33 | aposición articular al sujeto de ἐγενόμην (c32) |
| c44, c45, c76 | predicados dentro de ἐγώ εἰμι (c43 / c75) |
| c49 | atributivo dentro del complemento de πέμψον |
| c56 | segundo objeto acusativo de εἶδον (c55) |
| c80 | partícula de afirmación — sin sujeto ni predicado; se registra como raíz de discurso, no como predicación |
| c87, c89 | objetos del imperativo γράψον (c82) |

### Cortes de versículo que **no** son cortes de cláusula

- **1:12 → 1:13**: `ὅμοιον υἱῷ ἀνθρώπου` (c56) no tiene verbo; depende de `εἶδον` en 1:12.
- **1:19 → 1:20**: `τὸ μυστήριον … καὶ τὰς … λυχνίας` (c87, c89) no tiene verbo; depende de
  `γράψον` en 1:19.
- **1:17 → 1:18**: el discurso iniciado en `λέγων μοι` (1:17) corre hasta 1:20 sin nuevo marco.

Cobertura: 1:9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 — **ningún versículo queda fuera**.

---

## Relation graph (edges only)

```
c32
├── c33 → c34
├── c35
├── c36
└── c37

c38 → c39
c38 ‖ c40 → c41 → c42   (c42 anfitrión ABIERTO: σάλπιγγος por concordancia, φωνήν por sentido)

c43
├── c44
└── c45

c47 ← c46 (objeto relativo antepuesto)
c47 ‖ c48
        ├── c49
        └── c50

c51 → c52 → c53
c51 ‖ c55 ← c54 (participio)
        └── c56
             ├── c57
             └── c58

c59 → c60
c59 ‖ c61
    ‖ c62 → c63
    ‖ c64
    ‖ c66
    ‖ c67 → c68

c65 ?→ c56   (participio nominativo, anfitrión acusativo — ARISTA NO RESUELTA)

c70 ← c69 (temporal ὅτε)
c70 → c71
c70 ‖ c72 → c73 → c74

c75
├── c76
c75 ‖ c77 ‖ c79 ← c78
c75 ‖ c81
c80  (afirmación suelta)

c82
├── c83
├── c84
├── c85 → c86
├── c87 → c88
└── c89

c90 ‖ c91 → c92
```

`‖` = coordinate peers. Nesting = `governor` edge. `?→` = arista propuesta pero no resuelta.

---

## Participant continuity audit (internal)

| Clause(s) | Participant | actor_basis | Role | action | verb_tense | Continuity | temporal_relation | relation_to_previous |
|---|---|---|---|---|---|---|---|---|
| c32–c37 | Yo, Juan | actor_explicit | actor | estuve (en la isla) | aorist | new | unspecified | new (primera voz en 1ª persona del libro tras 1:1–2) |
| c33 | Juan (aposición) | actor_explicit | state-subject | hermano · copartícipe | nominal | same | unspecified | apposition — **no es un actor aparte** |
| c38–c39 | Juan | actor_implied_by_grammar | subject-of-state | estuve (en el Espíritu) | aorist | same | unspecified — ἐν τῇ Κυριακῇ ἡμέρᾳ es **marco absoluto interno**, no enlace con c32 | same_referent_new_declaration (repite ἐγενόμην) |
| c40–c41 | Juan | actor_implied_by_grammar | experiencer | oí | aorist | same | unspecified | coordinate |
| c42 | la voz | referent_continued_by_context | speaker | decía | participle | transition (de oyente a hablante) | unspecified | participle-speech, **anfitrión abierto** |
| c43–c45 | *(no nombrado — «una voz»)* | **actor_unresolved** | speaker | soy | present | new | unspecified | new declaration — el texto **no** nombra aún a quien habla |
| c46–c50 | *(el mismo hablante no nombrado)* | actor_unresolved | speaker | escribe · envía | aorist imperative | same | unspecified | coordinate commands |
| c51–c53 | Juan | actor_implied_by_grammar | actor | me volví | aorist | transition (vuelve el actor Juan) | unspecified | new action |
| c54–c55 | Juan | actor_implied_by_grammar | actor / experiencer | vi | aorist | same | unspecified | coordinate |
| c56–c58 | el semejante a un hijo de hombre | actor_explicit (como objeto visto) | *seen-object* | — | — | new (entra en escena) | unspecified | coordinate-object de εἶδον |
| c59–c60 | su cabeza y sus cabellos | actor_explicit | state-subject | eran blancos | nominal | new subject, **mismo referente** por αὐτοῦ | unspecified | new nominal predication about c56 |
| c61 | sus ojos | actor_explicit | state-subject | como llama | nominal | same referent (αὐτοῦ) | unspecified | coordinate |
| c62–c63 | sus pies | actor_explicit | state-subject | semejantes | nominal | same referent | unspecified | coordinate |
| c64 | su voz | actor_explicit | state-subject | como el sonido | nominal | same referent | unspecified | coordinate — **reaparece φωνή**, el término de 1:10–12 |
| c65 | *(sujeto del participio no resuelto)* | **actor_unresolved** | actor | tenía | participle (nom.) | same referent por sentido, **no por sintaxis** | unspecified | participio nominativo sin anfitrión |
| c66 | una espada | actor_explicit | state-subject | salía | participle (nom.) | same referente por αὐτοῦ | unspecified | coordinate |
| c67–c68 | su rostro / el sol | actor_explicit | state-subject | era como | nominal + finito | same referent | unspecified | coordinate; cierra la serie |
| c69–c71 | Juan | actor_implied_by_grammar | actor | caí | aorist | transition (vuelve Juan) | **explícito: ὅτε** — único del tramo | temporal subordination |
| c72–c73 | *(sujeto no expresado — la figura vista)* | **actor_implied_by_grammar** (referente por contexto, **no nombrado**) | actor | puso · diciendo | aorist + participle | transition | unspecified | coordinate, cambio de actor |
| c74 | la figura | referent_continued_by_context | speaker | no temas | present imperative | same | unspecified | speech opens |
| c75–c76 | Yo (la figura) | actor_explicit | speaker | soy | present | same | unspecified | **repite la autodesignación de c45** con hablante ahora visible |
| c77 | Yo (la figura) | actor_implied_by_grammar | speaker | estuve muerto | aorist | same | unspecified | coordinate — **mismo verbo ἐγενόμην de c32/c38** |
| c78–c79 | Yo (la figura) | actor_implied_by_grammar | speaker | vivo | present periphrastic | same | unspecified | coordinate |
| c80 | — | — | — | amén | — | — | unspecified | affirmation |
| c81 | Yo (la figura) | actor_implied_by_grammar | speaker | tengo | present | same | unspecified | coordinate |
| c82–c86 | la figura | referent_continued_by_context | speaker | escribe | aorist imperative | same | unspecified — **μετὰ ταῦτα (c85) es contenido dicho, no cronología del mapa** | **reanuda el mandato de c47** |
| c87–c89 | las estrellas / los candelabros | actor_explicit | *object* | — | — | new | unspecified | objects of c82 |
| c90–c92 | las siete estrellas / los siete candelabros | actor_explicit | state-subject | son | present | new | unspecified | declaración explicativa |

### Notas de continuidad (para Escriba, después de la aprobación)

- **c43 no tiene hablante nombrado.** En el orden del discurso, el que dice «Yo soy» en 1:11 es
  «una voz». El texto **no** lo identifica allí. No promover un antecedente plausible a sujeto
  explícito. La conexión con c75 («Yo soy el primero y el último», ahora dicho por alguien que
  Juan ve y que lo toca) es del texto; nombrar al hablante en 1:11 no lo es.
- **c72 no nombra sujeto.** «Y puso su mano derecha sobre mí» — 3ª singular sin sujeto expreso.
  El referente por contexto es la figura de 1:13; el texto no la nombra al actuar.
- **Un solo enlace temporal explícito entre cláusulas: ὅτε en c69.** Todo lo demás va
  `unspecified`. `μετὰ ταῦτα` (c85) está **dentro del discurso**: es lo que el hablante dice que
  se escribirá, no una relación temporal entre filas de este mapa. No convertirlo en pegamento
  cronológico (*después el texto…*, *a continuación ocurre…*).
- **`ἐγενόμην` tres veces** (c32 Juan en la isla · c38 Juan en el Espíritu · c77 la figura
  «estuve muerto»). Es un dato del texto, no una tesis. Registrado aquí para que la jerarquía lo
  vea; que aparezca o no en `>` lo decide Escriba tras la aprobación.
- **`φωνή` cuatro veces** (c40 la oye · c52 la quiere ver · c53 la que hablaba · c64 la voz de él
  como muchas aguas). El texto vuelve al mismo término; el mapa lo registra sin resolver si c64
  identifica la voz de c40.

---

## Open questions for Arquitecto (Dudas seed)

1. **c42 `λεγούσης` — ¿de quién cuelga?** El genitivo concuerda con `σάλπιγγος` (genitivo), no con
   `φωνήν` (acusativo). El sentido pide la voz. Registrado con anfitrión abierto. **No inventar la
   arista.** ¿Se resuelve por concordancia o por sentido, y se declara la discordancia?
2. **c65 `ἔχων` — participio nominativo sin anfitrión finito.** El único candidato en el entorno
   (`ὅμοιον`, c56) es acusativo. LBF lo resuelve con un verbo finito (*tenía*) que el griego no
   tiene. ¿Se registra como coordinado con las nominales de 1:14–16, o se deja como arista abierta
   en el árbol del estudiante?
3. **c87 `τὸ μυστήριον` — forma ambigua nominativo/acusativo.** Si es acusativo, es objeto de
   `γράψον` (así lo puntúa LBF con dos puntos). Si es nominativo, es un encabezado suspendido que
   ninguna cláusula rige. ¿Cuál lectura fija la jerarquía?
4. **¿1:9 abre movimiento propio, o va con 1:10–11?** A favor de unirlos: `ἐγενόμην` se repite
   (isla / Espíritu), mismo actor, sin marca de corte. A favor de separarlo: 1:9 dice *dónde y por
   qué* estuvo; 1:10 dice *en qué estado*, y de ahí sale todo lo demás.
5. **¿1:12–13 y 1:14–16 son un movimiento o dos?** Las aristas los unen (1:14–16 describen al de
   1:13 por `αὐτοῦ`), pero 1:14–16 son seis cláusulas nominales independientes con sujetos nuevos.
6. **¿c81 («tengo las llaves») merece `####` propio?** Es coordinada con `ἐγώ εἰμι`, pero es la
   última declaración antes de que se reanude el mandato.
7. **¿c90–c91 cierran el movimiento de 1:19, o abren uno propio?** Sintácticamente son raíces
   nuevas (`εἰσιν` finito); en el discurso explican los objetos que acaba de mandar escribir.
8. **Defecto de datos griego (arriba).** ¿Quién repara `cgv-data/bibles/TR1894/tr1894.txt` y
   rehace el griego de `clause-map-1-1-8.md` y la nota `[^ap-1-8-on-en-erchomenos]` del manual?
   Hasta entonces, el griego de 1:1–8 en el manual afirma algo falso sobre Scrivener.

Verse numbers must not answer these. Governor edges and continuity of thought must.
