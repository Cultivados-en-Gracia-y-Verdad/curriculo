---
book: Daniel
title: "Daniel — El Dios del cielo sobre los reinos"
subtitle: "provisional · Arquitecto"
author: CGV
cover: images/portada.png
date: 2026-08-04
version: 1.0
---
> Escriba pass: completo (introducción + 11 H2). H4 intactos. Listo para revisión/Editor.

## Introducción

Daniel escribe en medio de un mundo donde otros reyes mandan. Judá ya no está en su tierra como antes: un rey de Babel llega a Jerusalén, y jóvenes de Israel terminan en la corte extranjera.

El libro no empieza con una explicación larga de por qué ocurre todo esto. Empieza con lo que pasa: un sitio, una entrega, unos nombres nuevos, una mesa del rey. Y muy pronto aparece una decisión que no se mezcla con esa mesa.

Vas a caminar dos tramos grandes. Primero, Dios muestra su dominio sobre los reinos mientras guarda a los suyos en la corte. Ahí irás de crisis en crisis: el sueño que nadie sabe, la imagen y el horno, el árbol del rey, la escritura en la pared, el foso de los leones.

Después, Dios muestra a Daniel el curso de los reinos hasta el fin sellado. Las escenas de la corte dan paso a visiones: bestias, cuernos, semanas, príncipes, y al final un libro que se cierra hasta el tiempo señalado.

El movimiento del libro apunta a esto: que se vea que el Dios del cielo señorea los reinos y guarda a los suyos hasta el fin que Él selló. Daniel no te entrega ese cierre en la primera línea. Te lleva por la presión hasta que el texto mismo lo pone delante.

Lee despacio. Nota quién actúa, qué queda abierto, y qué el autor todavía no resuelve. El manual te acompaña para observar; el texto es el que habla.

## Verificación de cláusulas independientes — Daniel

> Working copy from Generate `daniel-manual-skeleton (5).md` (2026-08-04). Skeleton left untouched.
> Re-gate after Step 0 JSON patch (promoted Entiende / sepas / santos / plantará / Anda / 8:19).

### Cobertura
- **Unidades:** 494 H3/H4 · H4 median ~14 palabras.
- **Bloqueadores previos ahora en tronco como H4:** `8:17:11` *Entiende…* · `3:18:4` *Y si no, sepas…* · `7:27:9` reino a los santos · `11:45:1` *Y plantará…* · `12:9:1` *Anda, Daniel…* · `8:19:1` *Y dijo: He aquí yo te enseñaré…*.
- **Versículos LBF sin H3 propio:** 35 de 357 — `1:4`, `1:13`, `1:15`, `1:18`, `2:9`, `2:21`, `2:22`, `2:26`, `2:27`, `2:32`, `2:33`, `3:4`, `3:25`, `4:3`, `4:7`, `4:17`, `5:8`, `5:9`, `5:27`, `6:21`, `6:26`, `6:27`, `7:3`, `7:12`, `7:15`, `8:2`, `8:15`, `8:18`, `8:21`, `8:23`, `9:20`, `9:25`, `10:3`, `10:6`, `11:29`. Varios viven como `+`/`-` bajo el vecino (p. ej. `1:4` bajo `1:3`); no hay ya hueco en los cierres 3:18 / 7:27 / 8:19 / 11:45 / 12:9.
- Truncaciones (~128 H4 que terminan en *y/se/de/…*) y ~31 overlaps adyacentes — deuda de span; no inventar cortes aquí.
- Participios hebreos *sin anfitrión* y notas «no se ve enlace» en `-` OT — attachment / demotion debt; no inventar hosts. Ignorar Apéndice A griego.

### Independientes que podrían faltar
| Ref | Qué veo en el manual | Por qué debería ser independiente | Palabra que marcar |
|---|---|---|---|
| 9:23 | Bajo `9:23:3`, `-` incluye *Entiende pues la palabra, y entiende la visión* | Segundo mandato de Gabriel en la visita; ahora embebido en content | **Entiende** (el del mandato; no el participio) |

*Apartados:* aposiciones / listas / comparaciones ya dentro de un H4 vecino; *Sepas pues* en 9:25 como cola de 9:24 si es el mismo discurso de Gabriel (revisar en Observer, no forzar ahora).

### Marcadas como independientes que no lo parecen
| Ref | H4 | Qué la subordina | Padre probable |
|---|---|---|---|
| 2:43:9 | *mezclado* | Stub / participio | 2:43 hierro y barro |
| 2:40:20 | *y quebrantará* | Fragmento + nota participio | 2:40 cuarto reino |
| 4:25:33 | *dará* | Stub | 4:25 |
| 4:27:15 | *tranquilidad* | Infinitivo/stub | 4:27 consejo |
| 5:19:34 | *humillaba* | Participio stub | 5:19 |
| 6:18:12 | *fue el sueño* | Eco / fragmento | 6:18 |
| 7:14:2 | *Y le fue* | Span cortado; dádiva en 7:14:11+ | Unir con 7:14 señorío |
| 7:23:19 | *despedazará* | Stub | 7:23 cuarta bestia |
| 7:24:17 | *derribará* | Stub | 7:24 |
| 10:16:21 | *quedó fuerza* | Stub | 10:16 |
| 11:34:5 | *lisonjas* | Stub | 11:34 |

### Banderas del Compilador que tocan la raíz
- Sin provisional/cycle listada en este MD.
- Notas OT «no se ve enlace» en dependientes demoted — esperable; no tratar como bandera griega.
- Apéndice A — **ignorar** (OT/OSHB).
- Nominales `4:37:4` / `11:1:7` siguen en tronco.

### Dudas (blando)
- 11 stubs arriba: demotar en Observer cuando se pueda; no vuelven a bloquear mandatos/cierres.
- Densidad ~494 raíces + truncaciones: afilar spans antes de H3 relabel fino.
- SVO ruidoso — corroboración solo.
- Sin trayectoria de propósito — normal en narrativa OT.
- 9:23 *Entiende pues* — único mandato residual dudoso; no bloquea el libro entero.

### Veredicto
**Puedo continuar.** Los bloqueadores duros del gate anterior (mandatos/cierres colgados) están en el tronco. Quedan stubs y spans truncados en *Dudas* — Observer puede afilarlos en paralelo; no detienen H1/H2.

---


## Estructura propuesta — Daniel (Step 1 · Arquitecto)

> Working copy from Step 0 (`skeleton (5)`). Generate left untouched. Step 0 verdict: **Puedo continuar**.
> **H1/H2 aplicados** al outline. **H3 relabel** → ver bloque Step 2 abajo.
> H3 relabel → Step 2. Sin trayectoria de propósito de escritura (narrativa OT).

### Flujo del libro
Dios coloca a los suyos en la corte de los reinos y, episodio tras episodio, muestra que el Altísimo señorea mientras guarda a quienes no se contaminan ni dejan de orar. Esa presión de la corte (fidelidad bajo imperio) corre de 1 a 6 y se cierra cuando Daniel prospera bajo Darío/Ciro. Luego el libro abre otra línea: Dios muestra a Daniel el curso de los reinos hasta el fin, con visiones que acumulan bestias, cuerno, santuario, semanas y conflicto de príncipes, y sella el libro hasta el tiempo del fin (7–12).

### Presiones abiertas y cerradas
| Presión | Se abre en | Se cierra en |
|---|---|---|
| Vivir fiel en la corte del imperio | 1:8 (no contaminarse) | 1:20–21 (sabiduría reconocida; permanece) |
| ¿Quién declara el misterio del rey? | 2:1–12 (crisis; amenaza de muerte) | 2:44–49 (reino de Dios; Daniel engrandecido) |
| Adorar la imagen o al Dios vivo | 3:1–6 (decreto / horno) | 3:28–30 (Dios los libró; engrandecidos) |
| Soberbia del rey vs dominio del Altísimo | 4:4–18 (sueño del árbol) | 4:34–37 (Nabucodonosor alaba) |
| Profanar lo de Dios / juicio sobre Babel | 5:1–5 (vasos; escritura) | 5:30–31 (cae Belsasar; entra Darío) |
| Decreto humano vs oración a Dios | 6:7–10 | 6:22–28 (leones; decreto a favor del Dios de Daniel) |
| Reinos bestiales hasta el dominio de los santos | 7:1–8 | 7:13–14, 27 (hijo de hombre / santos) |
| Cuerno, santuario, tiempo del fin | 8:1–12 | 8:25–26 (quebrantado; visión verdadera) |
| Culpa del pueblo y restauración determinada | 9:3–19 (oración) | 9:24–27 (setenta semanas) |
| Conflicto de príncipes / pueblo en los últimos días | 10:1–14 | 12:1–13 (Miguel; resurrección; sello) |

### H1 — Dios muestra su dominio sobre los reinos mientras guarda a los suyos en la corte · 1:1–6:28
Lo que el autor hace en todo el tramo: narra cómo el Dios del cielo gobierna a los imperios en la corte y preserva a Daniel y sus compañeros en cada crisis.
Por qué termina aquí: se cierra la serie de pruebas en la corte (contaminación, sueño, imagen, árbol, escritura, leones); el siguiente bloque ya no es episodio de corte sino visión del curso de los reinos hasta el fin.

  #### H2 — Daniel 1:1–21 · Fidelidad en la corte sin contaminarse · H3 run ch. 1
  #### H2 — Daniel 2:1–49 · El misterio del sueño y el reino que no se destruye · H3 run ch. 2
  #### H2 — Daniel 3:1–30 · La imagen, el horno y el Dios que libra · H3 run ch. 3
  #### H2 — Daniel 4:1–37 · El árbol; el Altísimo humilla al rey · H3 run ch. 4
  #### H2 — Daniel 5:1–31 · La escritura en la pared; cae Belsasar · H3 run ch. 5
  #### H2 — Daniel 6:1–28 · El decreto, la oración y el foso de los leones · H3 run ch. 6

### H1 — Dios muestra a Daniel el curso de los reinos hasta el fin sellado · 7:1–12:13
Lo que el autor hace en todo el tramo: revela a Daniel, en visiones sucesivas, el trayecto de los reinos y del pueblo hasta el tiempo del fin, y manda sellar el libro.
Por qué termina aquí: es el fin del libro; la presión del «hasta cuándo / sella» se cierra en 12:9–13.

  #### H2 — Daniel 7:1–28 · Cuatro bestias; dominio al hijo de hombre / santos · H3 run ch. 7
  #### H2 — Daniel 8:1–27 · Carnero, macho cabrío y cuerno; visión para muchos días · H3 run ch. 8
  #### H2 — Daniel 9:1–27 · Oración de Daniel; setenta semanas determinadas · H3 run ch. 9
  #### H2 — Daniel 10:1–11:45 · Visión del hombre de lino; reyes del norte y del sur · H3 run chs. 10–11
  #### H2 — Daniel 12:1–13 · Miguel, angustia, resurrección; el libro sellado · H3 run ch. 12

**Forma de encabezados (al aplicar):**
```
# DANIEL 1:1–6:28 DIOS MUESTRA SU DOMINIO SOBRE LOS REINOS MIENTRAS GUARDA A LOS SUYOS EN LA CORTE
## Daniel 1:1–21 Fidelidad en la corte sin contaminarse
…
# DANIEL 7:1–12:13 DIOS MUESTRA A DANIEL EL CURSO DE LOS REINOS HASTA EL FIN SELLADO
## Daniel 7:1–28 Cuatro bestias; dominio al hijo de hombre / santos
…
```
Spans enlosan 1:1→6:28 y 7:1→12:13 sin hueco ni solape.

### Telos
1. **Candidato de Observador:** no hay trayectoria de propósito de escritura en el evidence block (narrativa OT). N/A mecánico.
2. **Telos desde el flujo:** que se sepa que el Dios del cielo señorea los reinos y guarda a los suyos hasta el fin que Él selló.
3. **Comparación:** sin cláusula de propósito que citar; el telos sale del movimiento corte→visiones→sello, no de un *para que* de autor.

### Título / subtítulo (provisional — manual aún sin H3 relabel ni Escriba)
| Opción | Rationale |
|---|---|
| **Daniel — El Dios del cielo sobre los reinos** (recomendada) | Movimiento: dominio de Dios sobre imperios; cubre corte y visiones |
| Daniel — Hasta el fin sellado | Enfatiza 7–12 / 12:4–13; más débil para 1–6 |
| Daniel — Fieles en la corte, visiones del fin | Dos mitades nombradas; un poco tema/lista |

### Dudas Step 1
- ¿Mantener 10–11 como un solo H2 (propuesta) o partir aparición (10) / reyes (11)?
- Stubs/truncaciones del Step 0 no mueven estos cortes de H1/H2.
- Al aprobar: ¿aplico H1/H2 en `daniel-manual-step1.md`?

---


## H3 relabel — Daniel (Step 2 · Arquitecto)

> Working copy from Step 1. Generate skeleton untouched.
> **H1/H2 aplicados** (2 / 11). **H3 relabel aplicados** (494 unidades).
> **H4 (`####`) intacto.**

### Muestra
| Ref | Título |
|---|---|
| 1:1:7 | Nabucodonosor toma Jerusalén |
| 1:8:1 | Daniel decide no contaminarse |
| 2:44:5 | Dios levantará un reino eterno |
| 3:18:4 | Aunque no, no serviremos a tus dioses |
| 7:13:2 | Como un hijo de hombre |
| 8:17:11 | Entiende: al tiempo se cumplirá la visión |
| 9:24:3 | Setenta semanas determinadas |
| 12:9:1 | Anda, Daniel; el libro sellado |
| 12:13:5 | Daniel irá al fin; se levantará en su suerte |

### Dudas
- Algunos H3 vecinos comparten título de beat por verso; Escriba puede distinguir.
- Stubs del Step 0 pueden llevar título genérico — afilar en Observer si se demotan.

---

{Evidencia de Observador para nombrar desarrollo mayor (H1) y desarrollo continuo (H2) — no es comentario.}

* Actores dominantes del libro: *Daniel* — 50 acciones · *yo* — 43 acciones · *Dios* — 21 acciones · *Nabucodonosor* — 19 acciones · *ellos* — 10 acciones.

* Tono observado: 833 declaraciones · 42 mandatos.

* Hilo de taller (hipótesis de movimiento — no es título H1/H2): 1:1 Exile court ↓ 1:8 Resolve ↓ 2:1 Dream crisis ↓ 2:19 Mystery given ↓ 2:44 Kingdom not destroyed ↓ 3:1 Image / furnace ↓ 4:1 Tree / humbling ↓ 5:1 Writing on the wall ↓ 6:1 Lions ↓ 7:1 Beasts / saints ↓ 9:1 Seventy weeks ↓ 10:1 Final conflict ↓ 12:1 End sealed

* Inicios H2 (taller): after 1:8 · 2:1 · 2:19 · 3:1 · 4:1 · 5:1 · 7:1 · 8:1 · 9:1 · 10:1 · 12:1.

* Costuras de presión: after 1:8 · 2:12 · 3:6 · 4:31 · 5:5 · 6:7 · 12:1.

* Contrastes observados: 1:8 *manjares del rey* / *no contaminarse* · 1:20 *Daniel y compañeros* / *magos y encantadores* · 2:27 *sabios de Babel* / *Dios en el cielo* · 2:32 *oro* / *barro* · 2:44 *reinos de hombres* / *reino que no será destruido* · 3:18 *imagen de oro* / *servir a Dios* · 3:25 *horno de fuego* / *librados en medio* · 4:17 *soberbia del rey* / *dominio del Altísimo* · 5:23 *vasos de la casa de Dios* / *dioses de oro y plata* · 6:10 *decreto del rey* / *oración a Dios* · 6:22 *leones* / *ángel cerró su boca* · 7:14 *bestias* / *dominio eterno*.

* Convergencia (taller): 5:23 opens (75) · 3:7 intensifies (57) · 5:7 intensifies (54) · 10:1 intensifies (51) · 4:23 intensifies (48) · 11:13 intensifies (48) · 7:19 intensifies (45) · 12:1 intensifies (45).

* Definiciones investigadas: *dios* · *reino* · *sueño* · *interpretación* · *sabios* · *imagen* · *fuego* · *leones*.

* Palabras que regresan: *rey* (171) · *Daniel* (75) · *Dios* (67) · *reino* (66) · *delante* (48) · *dijo* (43) · *tierra* (41) · *será* (40).

# DANIEL 1:1–6:28 DIOS MUESTRA SU DOMINIO SOBRE LOS REINOS MIENTRAS GUARDA A LOS SUYOS EN LA CORTE

## Daniel 1:1–21 Fidelidad en la corte sin contaminarse

### Daniel 1:1:7 — *Nabucodonosor toma Jerusalén*

* Actores principales: *Nabucodonosor, rey de Babel* (2)

#### *En el año tercero del reino de Joacim, rey de Judá, vino Nabucodonosor, rey de Babel, a Jerusalén y la*

* *Nabucodonosor, rey de Babel* → *vino* → *a Jerusalén y la*
> La flecha resume quién actúa, qué hace y hacia dónde llega la acción. Quien viene no es Joacim: es <u>Nabucodonosor</u>, rey de Babel. El texto fija el año del reino de Judá y, en la misma línea, el movimiento hacia Jerusalén. Aquí no se explica todavía por qué viene ni qué pedirá después; solo se nombra el que llega y el lugar al que llega.

- *sitió*

* *Nabucodonosor, rey de Babel* → *sitió*
> El mismo actor completa el golpe: no solo vino, también <u>sitió</u>. La línea corta no añade motivo ni duración. Deja el cerco dicho, y el relato sigue.

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 1:2:1 — *El Señor entrega a Joacim y los utensilios*

* Actores principales: *el Señor* (1) · *su dios* (1)

#### *Y el Señor entregó en su mano a Joacim, rey de Judá, y parte de los utensilios de la casa de Dios; y los*

* *el Señor* → *entregó* → *a Joacim*
> Ahora el sujeto cambia. Quien entrega no es Babel: es el <u>Señor</u>. Joacim y parte de los utensilios de la casa de Dios pasan a la mano del invasor. En este punto el texto no discute la política del momento; dice quién entregó y qué entró en esa mano.

+ *llevó*
> La acción sigue con otro verbo: <u>llevó</u>. Todavía no se detiene el destino final; la línea deja el transporte abierto un instante.

- *a la tierra de Sinar, a la casa de su dios, y los utensilios llevó a la casa del tesoro de su dios*

* *su dios* → *llevó* → *a su dios*
> El destino se nombra con detalle: Sinar, la casa de su dios, el tesoro. Lo que era de la casa de Dios llega a la casa de <u>otro</u> dios. El contraste queda en el lugar, no en un comentario aparte.

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 1:3:1 — *Manda traer jóvenes de Judá*

* Actores principales: *Aspenaz* (1)

#### *Y el rey dijo a Aspenaz, jefe de sus eunucos, que trajera de los hijos de Israel y de la simiente real y de los nobles*

* *Aspenaz* → *dijo* → *a jefe de*
> El rey habla a Aspenaz, jefe de sus eunucos. La flecha marca a quién va la orden. Aspenaz no decide el plan aquí: recibe el mandato de <u>traer</u>. El texto todavía no nombra a Daniel; solo abre el círculo de donde saldrán los jóvenes.

* Infinitivo[^inf] *hijos* (לְ/הָבִ֞יא): completa a *dijo* (וַ/יֹּ֣אמֶר).

+ *jóvenes en los cuales no hubiera ninguna mancha,*
> Empieza el perfil: jóvenes sin <u>mancha</u>. En esta pieza no se explica aún para qué servirán en el palacio; primero se mira cómo deben ser.

+ *y de buena apariencia, e inteligentes en toda sabiduría,*
> Sigue la lista: apariencia y sabiduría. El texto acumula cualidades sin pausa larga. Todavía no llega la lengua de los caldeos.

+ *y conocedores de conocimiento, e entendidos en ciencia,*
> Otra capa del mismo perfil. Se repite la idea de entender, ahora como <u>ciencia</u>. No se desarrolla un programa de estudio; se nombra el tipo de persona buscada.

+ *y que tuvieran fuerza en ellos para estar en el palacio del rey,*
> Aparece el propósito de esa fuerza: estar en el <u>palacio</u>. Aquí el texto sí dice para qué deben servir físicamente. Todavía no dice qué comerán ni cómo se llamarán.

+ *y para enseñarles la escritura y la lengua de los caldeos*
> Cierra el encargo: escritura y lengua de los <u>caldeos</u>. El destino cultural queda dicho. Quiénes serán esos jóvenes por nombre todavía no aparece.

* Infinitivo[^inf] *caldeos* (וּֽ/לֲ/לַמְּדָ֥/ם): completa la acción del verbo principal.

* *escritura* (וּ/מַשְׂכִּילִ֣ים)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *caldeos* (וּ/מְבִינֵ֣י)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 1:5:1 — *Asigna ración y formación en la corte*

#### *Y el rey les asignó la porción del*

- *día en su día de los manjares del rey y del vino de su beber, y para criarlos tres años, y al cabo de ellos estarían delante del rey*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *rey* (וּֽ/לְ/גַדְּלָ֖/ם): completa a *rey* (יַֽעַמְד֖וּ).
> El rey fija la ración diaria: manjares y vino de su mesa, tres años de crianza, y al cabo estar delante de él. La presión de la corte empieza en la comida y en el plazo. En esta línea no se oye todavía ninguna objeción; solo la asignación.

### Daniel 1:6:1 — *Daniel y sus compañeros*

* Actores principales: *ellos* (1)

#### *Y hubo entre ellos, de los hijos de Judá, Daniel, Ananías, Misael y Azarías*

* *ellos* → *hubo* → *Daniel*
> Entre los llevados, el texto nombra cuatro: Daniel, Ananías, Misael y Azarías. La flecha marca que el relato se detiene en <u>Daniel</u> y sus compañeros. Aquí no se cuenta aún su decisión; solo se identifican.

### Daniel 1:7:1 — *Les ponen nombres de Babel*

* Actores principales: *Daniel* (1) · *el jefe de los eunucos* (1)

#### *Y el jefe de los eunucos les puso nombres*

* *el jefe de los eunucos* → *puso*
> Quien pone nombres es el jefe de los eunucos. El acto es de la corte sobre ellos. En esta línea corta todavía no se oyen los nombres nuevos.

- *puso a Daniel Beltsasar, y a Ananías Sadrac*

* *Daniel* → *puso* → *a Beltsasar*
> Ahora sí: Daniel pasa a llamarse Beltsasar, Ananías Sadrac. El texto registra el cambio sin explicar el sentido de cada nombre. Queda el hecho: la corte <u>renombra</u>.

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 1:8:1 — *Daniel decide no contaminarse*

* Actores principales: *Daniel* (1)

#### *Y Daniel puso en su corazón que no se*

* *Daniel* → *puso*
> Aquí actúa Daniel. Lo que pone no es una queja en voz alta primero: lo pone en su <u>corazón</u>. El relato llega al punto de presión de este desarrollo. Todavía no se completa qué evita; la línea se corta en «que no se».

- *contaminaría con los manjares del rey ni con el*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.
> La decisión se nombra: no contaminarse con los manjares del rey. La mesa asignada en 1:5 ahora aparece como riesgo. El texto no desarrolla aquí una teoría de la impureza; dice qué Daniel no quiere.

- *con los manjares del rey ni con el vino de su beber; y*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.
> Se suma el vino de su beber. Comida y bebida de la corte quedan juntas bajo la misma negativa. La línea termina en «y»: algo más viene enseguida.

### Daniel 1:8:17 — *Busca no contaminarse ante el jefe*

#### *de su beber; y buscó del jefe de los eunucos que no se contaminara*
> Después de la decisión interior, Daniel <u>busca</u> delante del jefe. No se queda solo en el corazón: pide un camino para no contaminarse. En esta línea no se oye aún la respuesta del jefe.

### Daniel 1:9:1 — *Dios le da favor ante el jefe*

* Actores principales: *Dios* (1)

#### *Y Dios dio a Daniel misericordia y compasiones delante del jefe de los eunucos*

* *Dios* → *dio* → *a Daniel*
> Quien da no es el jefe: es <u>Dios</u>. Lo que llega a Daniel es misericordia y compasiones delante del jefe. El texto no describe todavía cómo se ve esa misericordia en la práctica diaria; solo quién la dio y delante de quién quedó.

### Daniel 1:10:1 — *El jefe teme al rey*

* Actores principales: *el jefe de los eunucos* (1)

#### *Y el jefe de los eunucos dijo a Daniel: Temo a mi señor el rey, que ha asignado vuestra comida y vuestra bebida; ¿por qué ha de ver vuestros rostros más tristes que los de los jóvenes que son como vosotros? Así pondréis en peligro mi cabeza ante el rey*

* *el jefe de los eunucos* → *dijo* → *a Daniel*
> Habla el jefe. Su miedo se nombra con claridad: teme al rey que asignó comida y bebida. La pregunta sobre rostros tristes y el peligro de su cabeza dejan abierta la tensión. Aquí el texto no resuelve aún si habrá prueba o rechazo; deja el temor dicho.

### Daniel 1:10:26 — *El jefe teme al rey*

#### *Así pondréis en peligro mi cabeza ante el rey*
> La misma presión se concentra: lo que está en juego es su <u>cabeza</u> ante el rey. El jefe no discute la conciencia de Daniel; habla del riesgo para él.

### Daniel 1:11:1 — *Daniel habla con el mayordomo*

* Actores principales: *Daniel* (1)

#### *Y Daniel dijo al mayordomo a quien el jefe de los eunucos había encargado sobre Daniel, Ananías, Misael y Azarías*

* *Daniel* → *dijo* → *al mayordomo*
> Daniel no se detiene con el miedo del jefe. Habla al <u>mayordomo</u> encargado de ellos cuatro. El texto identifica la cadena de autoridad sin explicar todavía la propuesta.

### Daniel 1:12:1 — *Propone la prueba de diez días*

#### *Prueba, por favor, a tus siervos diez días, y que nos den de las legumbres, y*

- *por favor, a tus siervos diez días, y que nos den de las legumbres, y comamos, y agua, y*
> Llega el mandato suave: <u>Prueba</u>. Diez días, legumbres, agua. La ración del rey queda de lado por un plazo corto. El texto pone la prueba en boca de Daniel; aún no dice el resultado.

- *bebamos*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *Luego se vean*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *vean delante de ti nuestras apariencias y la apariencia de los jóvenes que comen los manjares del rey; y según que vieres, harás con tus siervos*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.
> El cierre de la propuesta es comparación: que se vean las apariencias frente a los que comen de la mesa del rey, y según eso se haga. Daniel deja la decisión en lo que se <u>vea</u>. Todavía no hay veredicto.

### Daniel 1:14:1 — *Los prueban diez días*

#### *Y él consintió con ellos en esto, y los probó diez días*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.
> El mayordomo <u>consiente</u>. La prueba de diez días arranca. El texto no llena esos días con diálogo; los cuenta.

### Daniel 1:14:5 — *Los prueban diez días*

#### *y los probó diez días*
> Se repite el plazo: diez días. La espera queda medida. El resultado todavía no se nombra.

### Daniel 1:16:1 — *El mayordomo les da legumbres*

* Actores principales: *el mayordomo* (1)

#### *Y aconteció que el mayordomo quitaba sus manjares y el vino de su beber, y les daba legumbres*

* *el mayordomo* → *aconteció*
> Después de la prueba, el mayordomo quita manjares y vino y da legumbres. Lo pedido se sostiene en la práctica. Aquí no se celebra el cambio; se registra quién <u>daba</u> qué.

* *quitaba* (נֹשֵׂא֙)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *daba* (וְ/נֹתֵ֥ן)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 1:17:4 — *Dios les da sabiduría*

* Actores principales: *Dios* (1)

#### *Y a estos cuatro jóvenes Dios les dio conocimiento y entendimiento en toda escritura y*

* *Dios* → *dio*
> Otra vez el sujeto es Dios. A los cuatro les da conocimiento y entendimiento. El favor no se limita a la comida: llega a la <u>escritura</u>. La línea aún no completa «sabiduría»; se corta en «y».

### Daniel 1:17:13 — *Dios les da sabiduría*

* Actores principales: *el jefe de los eunucos* (2) · *Daniel* (1)

#### *conocimiento y entendimiento en toda escritura y sabiduría; y Daniel entendía en toda visión y sueños*

* *Daniel* → *sabiduría*
> Se completa el don y se añade algo propio de Daniel: entender visión y sueños. El texto lo marca sin desarrollar aquí ninguna visión concreta. Queda dicho el alcance de lo que <u>entendía</u>.

* Infinitivo[^inf] *entendía* (וְ/הַשְׂכֵּ֖ל): completa a *sueños* (הֵבִ֔ין).

- *Y al cabo de los días en que el rey había dicho que los trajeran*

* *el jefe de los eunucos* → *había*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *dicho* (לַ/הֲבִיאָ֑/ם): completa a *rey* (אָמַ֥ר).

- *dicho que los trajeran*

* *el jefe de los eunucos* → *trajo* → *Nabucodonosor*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.
> Llega el plazo del rey: al cabo de los días, los traen. La crianza de tres años llega a su cita. El texto no cuenta el camino; salta al momento de la presentación.

### Daniel 1:19:1 — *El rey no halla a nadie como ellos*

* Actores principales: *ellos* (1)

#### *Y el rey habló con ellos; y no se*

* *ellos* → *habló*
> El rey habla con ellos. La comparación empieza, pero la línea se corta en «no se». Conviene hacer la pregunta que la línea deja servida —¿qué no se halló?—, porque aquí todavía no se completa. La respuesta llega enseguida.

+ *halló*
> Ahí está: no se <u>halló</u>. El vacío de comparación se nombra con ese verbo. El detalle de “ninguno como…” sigue en la unidad siguiente.

### Daniel 1:19:11 — *El rey no halla a nadie como ellos*

* Actores principales: *Azarías* (1)

#### *entre todos ellos ninguno como Daniel, Ananías, Misael y Azarías; y estuvieron delante del rey*

* *Azarías* → *estuvieron*
> Ninguno como los cuatro; y estuvieron delante del rey. La asignación de 1:5 («estarían delante del rey») llega aquí como hecho. El texto no añade el contenido de la conversación; deja el resultado: quedaron <u>delante</u>.

### Daniel 1:20:6 — *Los halla superiores a los magos*

* Actores principales: *los magos* (1)

#### *Y en todo asunto de sabiduría de entendimiento que el rey les*

- *preguntó, los halló diez veces superiores a todos los magos y encantadores que había en todo su reino*

* *los magos* → *preguntó* → *a todos*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.
> En todo asunto que el rey preguntó, los halló diez veces superiores a magos y encantadores del reino. La corte que los formó ahora los mide contra sus sabios. El texto da la medida —diez veces— sin explicar cada pregunta. Queda el contraste a la vista.

### Daniel 1:21:1 — *Daniel permanece hasta Ciro*

* Actores principales: *Ciro* (1)

#### *Y Daniel estuvo hasta el año primero del rey Ciro*

* *Ciro* → *Daniel*
> El desarrollo se cierra con duración: Daniel estuvo hasta el año primero de Ciro. El joven de la mesa del rey permanece atravesando reinados. En esta línea no se cuentan las crisis que vendrán; solo se marca hasta <u>cuándo</u> estuvo.

### En síntesis

El autor abre el libro con la corte de Babel: sitio, entrega, selección, ración y nombres nuevos. En medio de esa mesa, Daniel pone en su corazón no contaminarse y busca un camino delante del jefe. Dios da favor; la prueba de diez días sostiene legumbres; Dios da sabiduría; el rey no halla a nadie como ellos. El desarrollo deja dicha la presión de vivir fiel en la corte sin contaminarse, y cierra con Daniel presente hasta Ciro —sin adelantar todavía los sueños, el horno ni el foso.


## Daniel 2:1–49 El misterio del sueño y el reino que no se destruye

### Daniel 2:1:5 — *El rey sueña y se turba*

* Actores principales: *Nabucodonosor* (1)

#### *Y en el segundo año del reino de Nabucodonosor, soñó Nabucodonosor sueños, y se*

* *Nabucodonosor* → *soñó*
> Arranca un año nuevo del reino y el sujeto es Nabucodonosor: él <u>soñó</u>. El texto no cuenta aún el contenido del sueño. Solo deja dicho quién soñó, y la línea se corta en «y se» —algo más viene enseguida.

### Daniel 2:1:8 — *El rey sueña y se turba*

* Actores principales: *Nabucodonosor* (1)

#### *Nabucodonosor sueños, y se turbó su espíritu, y su sueño se*

* *Nabucodonosor* → *turbó*
> El espíritu del rey se <u>turbó</u>. La presión no es solo haber soñado: es la turbación. Todavía no se oye qué pedirá a los sabios.

### Daniel 2:1:11 — *El rey sueña y se turba*

#### *su espíritu, y su sueño se fue de él*
> El sueño se le <u>fue</u>. Queda un hueco concreto: soñó, se turbó, y ahora no lo tiene. El texto no llena ese vacío aquí; lo deja abierto.

### Daniel 2:2:1 — *Llama a magos y caldeos*

#### *Y mandó el rey llamar magos, astrólogos, y encantadores, y caldeos, para que declarasen al rey sus sueños*

* Infinitivo[^inf] *llamar* (לִ/קְרֹ֨א): completa a *mandó* (וַ/יֹּ֣אמֶר).

* Infinitivo[^inf] *rey* (לְ/הַגִּ֥יד): completa a *mandó* (וַ/יֹּ֣אמֶר).

* *caldeos* (וְ/לַֽ/מְכַשְּׁפִים֙)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> El rey manda llamar a toda la corte de sabios. El propósito se nombra: que le declaren sus sueños. En esta línea no aparece Daniel todavía; solo el aparato de Babel.

+ *Vinieron*
> Responden con el cuerpo: <u>vinieron</u>.

- *pues, y se presentaron delante del rey*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.
> Quedan delante del rey. La escena de consulta queda montada.

### Daniel 2:3:1 — *Pide saber el sueño*

#### *Y el rey les dijo: He*
> Empieza a hablar. La frase se corta en «He» —conviene notar que el pedido aún no está completo. La respuesta del contenido llega en las líneas siguientes.

### Daniel 2:3:5 — *Pide saber el sueño*

#### *He soñado un sueño, y mi espíritu se ha*
> Confirma: ha soñado. El espíritu otra vez en primer plano. Todavía falta el «por saber».

### Daniel 2:3:6 — *Pide saber el sueño*

#### *un sueño, y mi espíritu se ha perturbado por saber del sueño*

* Infinitivo[^inf] *sueño* (לָ/דַ֖עַת): completa a *saber* (וַ/תִּפָּ֣עֶם).
> Aquí se cierra el pedido: perturbado por <u>saber</u> del sueño. Quiere el sueño mismo, no solo una explicación suelta. El texto no suaviza la exigencia.

- *Entonces hablaron*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *hablaron*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *hablaron*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.
> Los sabios toman la palabra. El relato insiste en que <u>hablaron</u> antes de citar lo que piden.

### Daniel 2:4:13 — *Los caldeos piden el sueño*

#### *hablaron los caldeos al rey en arameo: Rey, para siempre vive: di el sueño a tus siervos, y declararemos la interpretación*
> En arameo piden lo contrario de lo que el rey quiere: que él diga el sueño y ellos darán la interpretación. La negociación queda a la vista. Aquí no se oye aún la amenaza.

### Daniel 2:5:11 — *Amenaza si no revelan el sueño*

#### *Respondió el rey y*

* *Respondió* (עָנֵ֤ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> El rey responde. La línea corta anticipa dureza sin desplegarla todavía.

### Daniel 2:5:15 — *Amenaza si no revelan el sueño*

* Actores principales: *los caldeos* (1)

#### *el rey y dijo a los caldeos: El negocio se me*

* *dijo* (וְ/אָמַ֣ר)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> El «negocio» se le fue. La pérdida del sueño se convierte en cargo contra ellos.

- *fue: si no me mostráis el sueño y su interpretación, seréis hechos cuartos, y vuestras casas serán puestas por muladares*

* *los caldeos* → *fue*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.
> Condición abierta y castigo extremo: sueño e interpretación, o muerte. La presión de este H2 queda clavada. El texto no mitiga la sentencia.

- *Y si mostrareis el sueño y su interpretación, recibiréis de mí dones y mercedes y grande honra: por tanto*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.
> También hay recompensa si cumplen. Castigo y honra quedan frente a frente. Todavía no hay quien pueda mostrar el sueño.

### Daniel 2:6:9 — *Mí dones mercedes grande honra*

#### *de mí dones y mercedes y grande honra: por tanto, mostradme el sueño y su*

- *interpretación*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.
> El mandato final es claro: mostrad sueño e <u>interpretación</u>. Babel debe producir lo que el rey perdió.

### Daniel 2:7:9 — *Insisten: diga el rey el sueño*

#### *Respondieron la segunda vez, y dijeron: Diga el rey el sueño a sus siervos, y mostraremos la interpretación*
> Segunda vez: vuelven a pedir que el rey diga el sueño. No avanzan hacia lo imposible. El estancamiento se oye en la repetición.

### Daniel 2:8:15 — *El rey acusa dilaciones*

#### *Respondió el rey, y dijo: Yo conozco de cierto que vosotros ponéis dilaciones, porque veis que el negocio se me ha ido*
> El rey lee dilaciones. Acusa que juegan con el tiempo porque ven que el negocio se le fue. La desconfianza queda dicha sin prueba de sabiduría todavía.

### Daniel 2:10:1 — *Los caldeos confiesan impotencia*

#### *Respondieron los caldeos delante del rey, y dijeron: No hay hombre sobre la tierra que pueda declarar el negocio del rey*
> Confesión abierta: no hay hombre sobre la tierra que pueda. Babel admite el límite. Conviene oír la pregunta que deja servida —¿quién podrá entonces?— porque aquí el texto aún no nombra a Dios.

### Daniel 2:10:27 — *Los caldeos confiesan impotencia*

#### *por cuanto ningún rey, príncipe, ni señor, preguntó cosas semejantes a ningún mago, ni astrólogo, ni caldeo*
> Añaden que ningún rey preguntó así. El pedido se presenta como sin precedente. Todavía no llega la mención de los dioses.

### Daniel 2:11:10 — *Solo los dioses podrían declarar*

#### *Y el negocio que el rey demanda es dificultoso, y no hay quien lo pueda declarar delante del rey, salvo los dioses, cuya morada no es con la carne*
> Solo los dioses, cuya morada no es con la carne. El contraste queda: hombres abajo, dioses fuera. El texto no introduce aquí al Dios de Daniel; deja la impotencia humana y ese «salvo».

### Daniel 2:12:5 — *Decreto de muerte a los sabios*

#### *Por esto el rey, con ira y con gran enojo, mandó que mataran a todos los sabios de Babel*
> Ira y enojo: manda matar a todos los sabios. La crisis deja de ser solo un acertijo; se vuelve sentencia sobre Babel.

### Daniel 2:13:2 — *Buscan a Daniel para matarlo*

#### *Y se publicó el edicto, y los sabios eran muertos; y buscaron a Daniel y a sus compañeros para matarlos*
> El edicto se publica. Buscan también a Daniel y a sus compañeros. La muerte llega hasta el círculo de Judá. Aquí el texto no cuenta aún ninguna defensa; solo la búsqueda.

### Daniel 2:13:5 — *Buscan a Daniel para matarlo*

#### *y buscaron a Daniel y a sus compañeros para matarlos*
> Se insiste: buscaron para <u>matarlos</u>. La amenaza toca a los cuatro.

### Daniel 2:14:3 — *Daniel habla con Arioch*

#### *Entonces Daniel habló con consejo y con prudencia a Arioch, capitán de los de la guarda del rey, que*
> Daniel habla con consejo y prudencia a Arioch. No huye del edicto: entra en la cadena de mando. La línea se corta antes de completar el encargo de Arioch.

### Daniel 2:14:12 — *Daniel habla con Arioch*

#### *había salido para matar a los sabios de Babel*
> Arioch había salido para matar. El verdugo está en movimiento. Daniel habla justo ahí.

### Daniel 2:15:16 — *Pregunta la causa del decreto*

#### *Respondió y dijo a Arioch, capitán del rey: ¿Por qué el edicto se publica de parte del rey con tanta prisa? Entonces Arioch declaró el negocio a Daniel*
> Pregunta la prisa del edicto. Arioch le declara el negocio. Daniel recibe la información que los sabios no pudieron resolver.

### Daniel 2:16:2 — *Pide tiempo al rey*

#### *Y Daniel entró, y*
> Entra. El movimiento hacia el rey queda marcado en una línea breve.

### Daniel 2:16:3 — *Pide tiempo al rey*

#### *pidió al rey que le diese tiempo, y que él mostraría la interpretación al rey*
> Pide tiempo y promete mostrar la interpretación. Todavía no dice el sueño. La presión sigue abierta, pero ahora hay un plazo pedido por Daniel.

### Daniel 2:17:4 — *Va a su casa*

#### *Entonces Daniel fue a su casa,*
> Va a su casa. El siguiente paso no es más negociación en la corte: es el círculo íntimo.

### Daniel 2:17:10 — *Declara el negocio a sus compañeros*

#### *y declaró el negocio a Ananías, Misael y Azarías, sus compañeros,*
> Declara el negocio a Ananías, Misael y Azarías. Los cuatro quedan juntos bajo la misma amenaza y la misma petición.

### Daniel 2:18:12 — *Piden misericordia sobre el misterio*

#### *para que pidiesen misericordias del Dios del cielo sobre este misterio, a fin de que Daniel y sus compañeros no pereciesen con los otros sabios de Babel*
> El propósito se nombra: pedir misericordias del Dios del cielo sobre el misterio, para no perecer. Aquí aparece el Dios del cielo frente a la impotencia de 2:11. El texto no cuenta aún la respuesta; deja la petición dicha.

### Daniel 2:19:7 — *El secreto se revela de noche*

#### *Entonces el secreto fue revelado a Daniel en visión de noche: por lo cual bendijo Daniel al Dios del cielo*
> El secreto fue revelado de noche. La misericordia pedida llega como revelación. Daniel responde bendiciendo. Todavía no se narra el contenido del sueño al rey; primero la alabanza.

### Daniel 2:20:4 — *Bendice el nombre de Dios*

#### *Habló Daniel y dijo: Sea bendito el nombre de Dios de siglo en siglo; porque suyos son la sabiduría y la fortaleza*
> Bendice el nombre de Dios. Sabiduría y fortaleza son suyas. El contraste con magos sin respuesta queda sin sermón: el texto lo pone en la boca de Daniel.

### Daniel 2:23:10 — *Confiesa y alaba a Dios*

#### *A ti, oh Dios de mis padres, confieso y te alabo, que me diste sabiduría y fuerza, y ahora me enseñaste lo que te pedimos*
> Confiesa y alaba: Dios le dio sabiduría y fuerza, y le enseñó lo pedido. La cadena de 2:18 se cierra aquí como don recibido, no como hallazgo humano.

### Daniel 2:23:13 — *Confiesa y alaba a Dios*

#### *me enseñaste lo que te pedimos; pues nos has enseñado el negocio del rey*
> «Nos»: incluye a los compañeros. El negocio del rey les fue enseñado. Listos para volver a la corte.

### Daniel 2:24:5 — *Detiene la muerte de los sabios*

#### *Después de esto Daniel entró a Arioch, al cual el rey había puesto para matar a los sabios de Babel; fue, y le dijo así: No mates a los sabios de Babel; llévame delante del rey, que yo mostraré al rey la interpretación*
> Orden clara a Arioch: no mates; llévame. Daniel detiene la matanza con la promesa de mostrar. El texto no describe aún la interpretación; abre la puerta al rey.

### Daniel 2:25:4 — *Arioch lleva a Daniel al rey*

#### *Entonces Arioch llevó prestamente a Daniel delante del rey, y le dijo así:*
> Arioch actúa de prisa. Daniel llega delante del rey.

### Daniel 2:25:12 — *Arioch lleva a Daniel al rey*

#### *He hallado un varón de los trasportados de Judá, el cual dará al rey la interpretación*
> Arioch presenta un varón de los trasportados de Judá. La solución no sale del gremio de Babel, sino del exilio. Aquí todavía habla Arioch, no Daniel.

### Daniel 2:28:12 — *Hay un Dios que revela secretos*

#### *Pero hay un Dios en el cielo, el cual revela los secretos, y él ha hecho saber al rey Nabucodonosor lo que ha de acontecer al cabo de los días. Tu sueño, y las visiones de tu cabeza sobre tu cama, son estas*
> Daniel no se atribuye el hallazgo: hay un Dios en el cielo que revela secretos. Él ha hecho saber al rey lo del cabo de los días. El contraste con 2:11 queda explícito en la boca de Daniel.

### Daniel 2:29:6 — *Recuerda los pensamientos del rey*

#### *Tú, oh rey, en tu cama subieron tus pensamientos de lo que había de ser en lo por venir; y el que revela los secretos te mostró lo que ha de ser*
> Recuerda los pensamientos del rey en la cama. El que revela secretos le mostró lo por venir. Daniel habla del contenido antes de describir la imagen.

### Daniel 2:30:23 — *Misterio no sabiduría mí haya*

#### *Y a mí me ha sido revelado este misterio, no por sabiduría que en mí haya más que en todos los vivientes, sino para que yo haga saber al rey la interpretación, y para que entiendas los pensamientos de tu corazón*
> Niega superioridad propia. La revelación es para que el rey entienda. El «yo» de Daniel queda subordinado al propósito de hacer saber.

### Daniel 2:31:4 — *Describe la gran imagen*

#### *Tú, oh rey, veías, y he aquí una gran imagen. Esta imagen, que era muy grande, y cuya gloria era muy sublime, estaba en pie delante de ti, y su aspecto era terrible*
> Empieza la descripción: gran imagen, gloria sublime, aspecto terrible. El texto construye lo visto antes de partir metales.

### Daniel 2:34:2 — *La piedra hiere la imagen*

#### *Estabas mirando, hasta que una piedra fue cortada, no con mano, la cual hirió a la imagen en sus pies de hierro y de barro cocido, y los desmenuzó*
> Piedra cortada no con mano; hiere los pies y desmenuza. La acción decisiva no sale de la imagen. Aquí aún no se oye el reino eterno nombrado como tal.

### Daniel 2:35:20 — *Metal plata oro tornaron tamo*

#### *Entonces fueron desmenuzados también el hierro, el barro cocido, el metal, la plata y el oro, y fueron como tamo de las eras del verano, y se los llevó el viento sin que de ellos quedara rastro alguno. Mas la piedra que hirió a la imagen fue hecha un gran monte, que hinchó toda la tierra*
> Metales hechos tamo; la piedra, gran monte que hinche la tierra. El contraste visual queda completo antes de la interpretación oficial.

### Daniel 2:36:4 — *Anuncia sueño e interpretación*

#### *Este es el sueño: ahora diremos su interpretación delante del rey*
> Marca el paso: este es el sueño; ahora la interpretación. El orden que el rey exigió —sueño primero— se cumple en voz de Daniel.

### Daniel 2:37:12 — *Tú eres la cabeza de oro*

#### *Tú, oh rey, eres rey de reyes; porque el Dios del cielo te ha dado reino, poder, fuerza y majestad*
> Tú eres… porque el Dios del cielo te ha dado. Incluso la cabeza de oro es don. Nabucodonosor queda bajo ese «te ha dado».

### Daniel 2:38:11 — *Dominio sobre hombres y bestias*

#### *Y dondequiera que habitan hijos de hombres, bestias del campo, y aves del cielo, él los ha entregado en tu mano, y te ha hecho enseñorear sobre todos ellos: tú eres aquella cabeza de oro*
> Dominio entregado; tú eres la cabeza de oro. La identificación se cierra. Los reinos siguientes aún no se despliegan.

### Daniel 2:38:13 — *Dominio sobre hombres y bestias*

#### *tú eres aquella cabeza de oro*
> Se repite la punta: cabeza de <u>oro</u>.

### Daniel 2:39:2 — *Reinos que siguen después*

#### *Y después de ti se levantará otro reino menor que tú; y otro tercer reino de metal, el cual se enseñoreará de toda la tierra*
> Después de ti: otro menor; luego metal que se enseñorea. La sucesión queda dicha sin nombres de imperios.

### Daniel 2:40:4 — *El cuarto reino como hierro*

#### *Y el cuarto reino será fuerte como hierro; y como el hierro desmenuza y doma todas las cosas, y como el hierro que quebranta todas estas cosas, desmenuzará y quebrantará*
> Cuarto reino como hierro: desmenuza y quebranta. La dureza se nombra por comparación, no por mapa.

### Daniel 2:40:20 — *El cuarto reino como hierro*

#### *y quebrantará*
> El verbo se sostiene solo un instante: <u>quebrantará</u>. La fuerza del hierro sigue en primer plano.

### Daniel 2:41:2 — *Pies de hierro y barro*

#### *Y lo que viste de los pies y los dedos, en parte de barro cocido de alfarero, y en parte de hierro, el reino será dividido; mas habrá en él algo de fortaleza de hierro, según que viste el hierro mezclado con el tiesto de barro*
> Pies y dedos: hierro y barro; reino dividido, con algo de fortaleza. La mezcla introduce debilidad dentro de la fuerza.

### Daniel 2:41:25 — *Pies de hierro y barro*

#### *mas habrá en él algo de fortaleza de hierro, según que viste el hierro mezclado con el tiesto de barro*
> Algo de fortaleza permanece. El texto no borra el hierro al hablar del barro.

### Daniel 2:42:15 — *Parte será reino fuerte parte*

#### *Y por ser los dedos de los pies en parte de hierro y en parte de barro cocido, el reino será en parte fuerte, y en parte frágil*
> Parte fuerte, parte frágil. La división se dice otra vez con claridad.

### Daniel 2:43:3 — *Hierro mezclado con barro*

#### *Cuanto a aquello que viste el hierro mezclado con tiesto de barro, mezclaránse con simiente humana, mas no se pegarán el uno con el otro, como el hierro no se mistura con el tiesto*
> Se mezclarán con simiente humana, pero no se pegarán. La comparación cierra la imagen de la mezcla fallida.

### Daniel 2:43:9 — *Hierro mezclado con barro*

#### *mezclado*
> Stub de mezcla: <u>mezclado</u>. El detalle corto cuelga del mismo contraste.

### Daniel 2:43:13 — *Hierro mezclado con barro*

#### *mezclado con tiesto de barro, se mezclaran con simiente humana, mas no se pegarán el uno con el otro, como el hierro no se mistura con el tiesto*
> Otra vez: no se pegarán. La no-unión queda martillada antes del reino de Dios.

### Daniel 2:44:5 — *Dios levantará un reino eterno*

#### *Y en los días de estos reyes, levantará el Dios del cielo un reino que no será jamás destruido, ni será dejado el reino a otro pueblo*
> En los días de estos reyes, el Dios del cielo levantará un reino que no será destruido. Aquí aterriza la presión abierta desde el sueño perdido: hay un reino que no pasa a otro pueblo.

### Daniel 2:44:24 — *Consumirá los reinos; permanecerá*

#### *desmenuzará y consumirá a todos estos reinos, y él permanecerá para siempre*
> Desmenuza y consume; él permanece para siempre. El contraste con hierro y barro queda en el verbo «permanecerá».

### Daniel 2:45:4 — *Confirma la visión de la piedra*

#### *De la manera que viste que del monte fue cortada una piedra, no con manos, la cual desmenuzó al hierro, al metal, al tiesto, a la plata y al oro: el gran Dios ha mostrado al rey lo que ha de acontecer en lo por venir: y el sueño es verdadero, y fiel su interpretación*
> Piedra no con manos; el gran Dios ha mostrado lo por venir. Sueño verdadero; interpretación fiel. Daniel cierra el encargo que los caldeos no pudieron.

### Daniel 2:46:4 — *El rey se humilla ante Daniel*

#### *Entonces el rey Nabucodonosor cayó sobre su rostro y se humilló ante Daniel,*
> El rey cae y se humilla ante Daniel. Quien amenazaba muerte ahora se postra. El texto no explica aún las palabras de reconocimiento; primero el gesto.

### Daniel 2:46:8 — *El rey se humilla ante Daniel*

#### *y mandó que le ofreciesen presentes y perfumes*
> Manda presentes y perfumes. La honra prometida en 2:6 empieza a cumplirse.

### Daniel 2:46:11 — *El rey se humilla ante Daniel*

#### *Entonces el rey habló a Daniel, y dijo: Ciertamente que vuestro Dios es Dios de dioses, y Señor de los reyes, y el que revela los misterios, pues pudiste revelar este misterio*
> Reconoce: vuestro Dios es Dios de dioses, Señor de los reyes, el que revela misterios. La confesión de Babel responde a 2:11 sin que Daniel se apropie el título.

### Daniel 2:47:17 — *Reconoce al Dios de Daniel*

#### *Ciertamente que vuestro Dios es Dios de dioses, y Señor de los reyes, y el que revela los misterios, pues pudiste revelar este misterio*
> Se oye otra vez: Dios de dioses y revelador de misterios. El «pues pudiste» ata el reconocimiento al hecho recién visto.

### Daniel 2:48:4 — *Engrandece a Daniel*

#### *Entonces el rey engrandeció a Daniel, y le dio muchos y grandes dones, y le puso por gobernador de toda la provincia de Babel,*
> Engrandece a Daniel: dones y gobierno de Babel. El exiliado queda sobre la provincia.

### Daniel 2:48:8 — *Engrandece a Daniel*

#### *y le puso por gobernador de toda la provincia de Babel, y príncipe de los gobernadores sobre todos los sabios de Babel*
> Príncipe sobre los sabios que antes no pudieron. El contraste administrativo queda dicho sin burla añadida.

### Daniel 2:48:10 — *Engrandece a Daniel*

#### *y príncipe de los gobernadores sobre todos los sabios de Babel*
> Sobre todos los sabios de Babel. El edicto de muerte ya no define la escena.

### Daniel 2:49:2 — *Pone a sus compañeros sobre Babel*

#### *Y Daniel solicitó del rey, y él puso a Sadrac, Mesac y Abed-nego sobre los negocios de la provincia de Babel;*
> Daniel solicita; el rey pone a Sadrac, Mesac y Abed-nego sobre los negocios. Los compañeros entran en el gobierno.

### Daniel 2:49:5 — *Pone a sus compañeros sobre Babel*

#### *y Daniel se quedó en la puerta del rey*
> Daniel se queda en la puerta del rey. El desarrollo del misterio cierra con presencia en la corte —sin adelantar aún la imagen de oro del capítulo siguiente.

### En síntesis

El autor abre la crisis del sueño perdido: el rey exige sueño e interpretación bajo pena de muerte, y Babel confiesa que ningún hombre puede. Daniel pide tiempo, busca misericordia del Dios del cielo, recibe el secreto de noche y bendice. Delante del rey niega sabiduría propia, describe la imagen y anuncia el reino que el Dios del cielo levantará y que no será destruido. El rey se humilla, reconoce al Dios que revela misterios y engrandece a Daniel y a sus compañeros. La presión «¿quién declara el misterio?» se cierra aquí; la corte sigue, pero ya bajo ese reconocimiento.


## Daniel 3:1–30 La imagen, el horno y el Dios que libra

### Daniel 3:1:3 — *Levanta la imagen de oro*

* Actores principales: *Nabucodonosor* (1)

#### *El rey Nabucodonosor hizo una imagen de oro, la altura de la cual*

* *Nabucodonosor* → *hizo*
> Nabucodonosor <u>hizo</u> una imagen de oro. La altura queda abierta en la línea. El texto no explica aún para qué la levantó.

- *era de sesenta codos, su anchura de seis codos: la levanto en el campo de Dura*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.
> Medidas y lugar: campo de Dura. La imagen ya está en pie. Todavía no se oye el decreto de adoración.

### Daniel 3:2:3 — *Convoca a los oficiales*

* Actores principales: *Nabucodonosor* (2)

#### *Y envió el rey Nabucodonosor a juntar los grandes, los asistentes y capitanes, oidores, receptores, los del consejo, presidentes, y a todos los gobernadores de las provincias, para que vinieran a la dedicación de la imagen que el rey Nabucodonosor*

* *Nabucodonosor* → *envió* → *a Nabucodonosor*
> Envía a juntar a toda la administración. El propósito se nombra: dedicación de la imagen. Quiénes faltan a la cita todavía no se dice.

- *había levantado*

* *Nabucodonosor* → *había*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *había* (לְ/מִכְנַ֣שׁ): completa a *levantado* (הֲקֵ֖ים).

* Infinitivo[^inf] *levantado* (לְ/מֵתֵא֙): completa a *levantado* (הֲקֵ֖ים).
> Cierra: la imagen que él había <u>levantado</u>.

### Daniel 3:3:16 — *Se reúnen ante la imagen*

* Actores principales: *Nabucodonosor* (1)

#### *Fueron pues reunidos los grandes, los asistentes y capitanes, los oidores, receptores, los del consejo, los presidentes, y todos los gobernadores de las provincias, a la dedicación de la imagen que el rey Nabucodonosor había*

* *Nabucodonosor* → *había*

* *reunidos* (מִֽתְכַּנְּשִׁ֡ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Se reúnen. La dedicación queda montada. La línea corta en «había».

### Daniel 3:3:24 — *Se reúnen ante la imagen*

#### *levantado: y estaban en pie delante de la imagen que había levantado el rey Nabucodonosor*

* *Nabucodonosor* (וְ/קָֽיְמִין֙)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> En pie delante de la imagen. El escenario de la prueba está listo.

+ *Y el pregonero pregonaba en alta voz: se Manda a vosotros, oh pueblos, naciones, y lenguas*

* *pregonaba* (קָרֵ֣א)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *pueblos* (אָֽמְרִין֙)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> El pregonero habla a pueblos, naciones y lenguas. El mandato público empieza.

### Daniel 3:5:3 — *Al oír la música, adoren*

#### *Al oír el sonido del cuerno, de la flauta, de la cítara, del arpa, del salterio, de la zampoña y de todo género de música, os postraréis y adoraréis la imagen de oro que el rey Nabucodonosor ha*
> Al oír la música: postrarse y adorar. La presión de este H2 queda dicha. El verbo final se corta en «ha».

- *levantado*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *levantado*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *levantado*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.
> La imagen que ha <u>levantado</u>. Tres ecos del mismo cierre.

### Daniel 3:6:4 — *Quien no adore será echado al horno*

* Actores principales: *fuego* (1) · *hora* (1)

#### *Y cualquiera que no se postrare y adorara, en la misma hora será*

* *hora* → *será*
> Castigo inmediato: quien no adore <u>será</u>…

- *echado dentro de un horno de fuego*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.
> …echado al horno. La alternativa a la adoración queda abierta como amenaza, no como hecho aún.

- *dentro de un horno de fuego ardiendo*

* *fuego* → *ardiendo*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *ardiendo* (יָקִֽדְתָּֽ/א)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> El fuego <u>ardiendo</u> se nombra otra vez.

### Daniel 3:7:29 — *Todos se postran al oír la música*

* Actores principales: *los pueblos el* (1)

#### *Por lo cual, al oír todos los pueblos el sonido del cuerno, de la flauta, de la cítara, del arpa, del salterio, de la zampoña y de todo género de música, todos los pueblos, naciones, y lenguas, se postraron, y adoraron la imagen de oro que el rey Nabucodonosor había levantado*

* *los pueblos el* → *sonido* → *Nabucodonosor*

* *flauta* (שָֽׁמְעִ֣ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *levantado* (סָֽגְדִין֙)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Todos se postran y adoran. La obediencia masiva queda dicha. Aquí no se nombra todavía a quien se niegue.

### Daniel 3:8:6 — *Denuncian a los judíos*

#### *Por esto en el mismo tiempo algunos varones caldeos se llegaron, y*
> Caldeos se acercan. La denuncia empieza sin completar el cargo.

### Daniel 3:8:9 — *Denuncian a los judíos*

#### *y denunciaron de los os judi*
> Denuncian a los judíos. El texto trunca el nombre; el acto de denuncia ya está.

- *Hablando y*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 3:9:7 — *Se dirigen al rey Nabucodonosor*

#### *y diciendo al rey Nabucodonosor: Rey, para siempre vive*

* *diciendo* (וְ/אָ֣מְרִ֔ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Se dirigen al rey con la fórmula de vida. El cargo concreto viene después.

### Daniel 3:10:4 — *Recuerdan el decreto del rey*

#### *Tú, oh rey, pusiste ley que todo hombre al oír el sonido*
> Recuerdan la ley del rey. Empiezan por el decreto, no por los nombres.

- *sonido*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *sonido*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *del cuerno, de la flauta, de la cítara, del arpa, del salterio, de la zampoña y de todo género de música, se postrara y adorara la imagen de oro*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.
> Música → postrarse y adorar. Repiten el mandato para preparar la acusación.

### Daniel 3:11:4 — *Amenaza del horno de fuego*

* Actores principales: *fuego* (1) · *fuera* (1)

#### *Y el que no se postrara y adorara, fuera echado dentro de un horno de fuego*

* *fuera* → *echado*
> Repiten la pena: horno de fuego. La trampa verbal queda armada.

- *ardiendo*

* *fuego* → *ardiendo*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *ardiendo* (יָקִֽדְתָּֽ/א)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

- *ardiendo*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 3:12:5 — *Estos judíos no sirven a tus dioses*

* Actores principales: *Mesac* (1)

#### *Hay unos varones os judi, los cuales pusiste tú sobre los negocios de la provincia de Babel; Sadrac, Mesac, y*
> Nombran a los puestos por el rey sobre Babel. El contraste empieza: hombres de confianza… y la línea corta.

- *Abed-nego: estos varones, oh rey*

* *Mesac* → *Abed* → *tú*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *nego: estos varones, oh rey, no han hecho cuenta de ti; no adoran tus dioses, no adoran la imagen de oro que tú levantaste*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *levantaste* (סָגְדִֽין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Cargo triple: no hacen cuenta del rey, no adoran sus dioses, no adoran la imagen. La presión del H2 aterriza sobre Sadrac, Mesac y Abed-nego.

### Daniel 3:13:5 — *El rey manda traerlos con ira*

* Actores principales: *Nabucodonosor* (1)

#### *Entonces Nabucodonosor dijo con ira y con enojo que trajesen a Sadrac, Mesac, y*

* *Nabucodonosor* → *dijo* → *a Sadrac*

* Infinitivo[^inf] *trajesen* (לְ/הַיְתָיָ֔ה): completa a *enojo* (אֲמַר֙).
> Ira y enojo: que los traigan. El rey actúa de inmediato.

### Daniel 3:13:14 — *El rey manda traerlos con ira*

* Actores principales: *Mesac* (1)

#### *con ira y con enojo que trajesen a Sadrac, Mesac, y Abed-nego. Al punto fueron os traid estos varones delante del rey*

* *Mesac* → *Abed* → *Al punto fueron os*
> Al punto delante del rey. La confrontación queda montada.

### Daniel 3:14:17 — *Pregunta si es verdad lo denunciado*

#### *Habló Nabucodonosor, y les dijo: ¿Es verdad Sadrac, Mesac, y Abed-nego, que vosotros no honráis a mi dios, ni adoráis la imagen de oro que he levantado*

* *Es* (עָנֵ֤ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *Sadrac* (וְ/אָמַ֣ר)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *oro* (פָּֽלְחִ֔ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *levantado* (סָֽגְדִֽין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Pregunta si es verdad. Todavía ofrece espacio antes de la sentencia.

+ *Ahora pues, ¿estáis prestos para que al oír el sonido del cuerno, de la flauta, de la cítara, del arpa, del salterio, de la zampoña y de todo género de música, os postréis, y adoréis la imagen que he hecho? Porque si no la adoréis, en la misma hora seréis echados en medio de un horno de fuego ardiendo: ¿y qué dios*
> Segunda oportunidad: música otra vez, o horno. Cierra con la pregunta: ¿qué dios…? La línea queda abierta a propósito.

### Daniel 3:15:39 — *Ofrece otra oportunidad de adorar*

#### *será aquel que os libre de mis manos*

* *manos* (יָקִֽדְתָּ֑/א)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> …os libre de mis manos. El reto del rey queda dicho. Aquí aún no responden ellos.

### Daniel 3:16:1 — *Responden sin cuidarse*

* Actores principales: *Mesac* (1)

#### *Sadrac, Mesac, y Abed-nego respondieron y dijeron al rey Nabucodonosor: No cuidamos de responderte sobre este negocio*

* *Mesac* → *Abed* → *Nabucodonosor*

* Infinitivo[^inf] *negocio* (לַ/הֲתָבוּתָֽ/ךְ): completa a *respondieron* (עֲנ֗וֹ).

* *responderte* (וְ/אָמְרִ֖ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *negocio* (חַשְׁחִ֨ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> No cuidan de responder sobre el negocio. La negativa a negociar queda primero.

### Daniel 3:17:7 — *Nuestro Dios puede librarnos*

* Actores principales: *Dios* (1)

#### *He aquí nuestro Dios a quien honramos, puede librarnos del horno de fuego ardiendo; y de tu mano, oh rey, nos*

* *Dios* → *ardiendo* → *tu*

* Infinitivo[^inf] *librarnos* (לְ/שֵׁיזָבוּתַ֑/נָא): completa a *puede* (יָכִ֖ל).

* *honramos* (פָֽלְחִ֔ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *ardiendo* (יָקִֽדְתָּ֛/א)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Nuestro Dios <u>puede</u> librarlos del horno y de la mano del rey. Afirman capacidad; la línea corta en «nos».

### Daniel 3:17:16 — *También de la mano del rey*

* Actores principales: *nos* (1)

#### *y de tu mano, oh rey, nos librará*

* *nos* → *librará*
> Completa: nos <u>librará</u>. Todavía falta el «si no».

### Daniel 3:18:4 — *Aunque no, no serviremos a tus dioses*

* Actores principales: *dios* (1)

#### *Y si no, sepas, oh rey, que tu dios no adoraremos, ni tampoco honraremos la imagen que has levantado*

* *dios* → *levantado*

* *levantado* (פָֽלְחִ֔ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Aunque no: no adorarán ni honrarán la imagen. La fidelidad queda dicha sin depender del resultado. Aquí aterriza la presión abierta desde el decreto.

- *levantado*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 3:19:3 — *El rey se llena de ira*

* Actores principales: *Nabucodonosor* (1)

#### *Entonces Nabucodonosor fue lleno de ira, y se*

* *Nabucodonosor* → *fue*
> Se llena de ira. La respuesta del rey empieza en el rostro, no en el decreto todavía.

### Daniel 3:19:7 — *El rey se llena de ira*

* Actores principales: *Mesac* (1) · *Sadrac* (1)

#### *lleno de ira, y se demudó la figura de su rostro sobre Sadrac, Mesac, y*

* *Sadrac* → *demudó* → *Mesac*
> El rostro se demuda sobre ellos. La línea corta antes de Abed-nego y la orden del horno.

- *la figura de su rostro sobre Sadrac, Mesac, y Abed-nego: así habló, y ordenó que el horno se encendiese siete veces tanto de lo que cada vez solía*

* *Mesac* → *Abed*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *siete* (לְ/מֵזֵ֣א): completa a *Sadrac* (אֶשְׁתַּנִּ֔י).

* Infinitivo[^inf] *solía* (לְ/מֵזְיֵֽ/הּ): completa a *Sadrac* (אֶשְׁתַּנִּ֔י).

* *horno* (עָנֵ֤ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *encendiese* (וְ/אָמַר֙)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Horno siete veces más. La amenaza de 3:6 se intensifica.

### Daniel 3:20:6 — *Manda echarlos al horno*

#### *Y mandó a hombres muy vigorosos que tenía en su ejército, que atasen a Sadrac, Mesac, y Abed-nego, para echarlos en el horno de fuego ardiendo*

* Infinitivo[^inf] *Sadrac* (לְ/כַפָּתָ֔ה): completa a *atasen* (אֲמַר֙).

* Infinitivo[^inf] *horno* (לְ/מִרְמֵ֕א): completa a *atasen* (אֲמַר֙).

* *ardiendo* (יָקִֽדְתָּֽ/א)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Manda atar y echar. El edicto se ejecuta.

### Daniel 3:21:4 — *Los atan y los echan al fuego*

* Actores principales: *fuego* (1)

#### *Entonces estos varones fueron atados con sus mantos, y sus calzas, y sus turbantes, y sus vestidos, y fueron echados dentro del horno de fuego ardiendo*

* *fuego* → *ardiendo*

* *ardiendo* (יָקִֽדְתָּֽ/א)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Atados con todo lo que llevaban; echados. El texto acumula ropa antes del fuego.

- *ardiendo*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *Y porque la palabra del rey daba prisa, y*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.
> La prisa del rey se nombra. Algo más viene por esa prisa.

### Daniel 3:22:20 — *El fuego mata a los que los llevan*

#### *prisa, y había procurado que se encendiese mucho, la llama del fuego mató a aquellos que habían alzado a Sadrac, Mesac, y Abed-nego*

* *había* (מַחְצְפָ֔ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> La llama mata a los que los alzaron. El fuego es letal para los verdugos; el texto aún no dice qué pasa dentro con los tres.

### Daniel 3:23:8 — *Caen atados en el horno*

* Actores principales: *Mesac* (1)

#### *Y estos tres varones, Sadrac, Mesac, y Abed-nego, cayeron atados dentro del horno de fuego ardiendo*

* *Mesac* → *Abed*

* *ardiendo* (יָֽקִדְתָּ֖/א)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Caen atados dentro. La escena se cierra con ellos en el horno —sin salida narrada aún.

### Daniel 3:24:4 — *El rey ve cuatro hombres sueltos*

* Actores principales: *Nabucodonosor* (1)

#### *Entonces el rey Nabucodonosor se espantó, y se*

* *Nabucodonosor* → *espantó*
> El rey se <u>espantó</u>. El giro empieza en él, no en un informe de los tres.

### Daniel 3:24:5 — *El rey ve cuatro hombres sueltos*

#### *y se levantó apriesa, y*
> Se levanta apriesa. La línea corta antes de la pregunta.

### Daniel 3:24:13 — *El rey ve cuatro hombres sueltos*

#### *apriesa, y habló, y dijo a los de su consejo: ¿No echaron tres varones atados dentro del fuego? Ellos respondieron y dijeron al rey: Es verdad, oh rey*

* Infinitivo[^inf] *rey* (בְּ/הִתְבְּהָלָ֑ה): completa a *rey* (רְמֵ֤ינָא).

* *rey* (וְ/אָמְרִין֙)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Confirma: echaron tres atados. El consejo dice: es verdad.

+ *Respondió él y dijo: He aquí que yo veo cuatro varones sueltos, que se pasean en medio del fuego, y ningún daño hay en ellos: y el aspecto del cuarto es semejante a un hijo de los dioses*

* *Respondió* (עָנֵ֣ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *dijo* (וְ/אָמַ֗ר)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *veo* (חָזֵ֜ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *pasean* (מַהְלְכִ֣ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *semejante* (דָּמֵ֖ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Ve cuatro sueltos, sin daño; el cuarto semejante a un hijo de los dioses. La liberación se ve antes de oírse el mandato de salir. El texto no desarrolla aquí la identidad del cuarto más allá de esa semejanza.

### Daniel 3:26:2 — *Los llama a salir del horno*

* Actores principales: *Nabucodonosor* (1)

#### *Entonces Nabucodonosor se acercó a la puerta del horno de fuego*

* *Nabucodonosor* → *acercó* → *a la puerta del*
> Se acerca a la puerta. Quien mandó echarlos ahora se acerca.

- *ardiendo, y*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *ardiendo* (יָקִֽדְתָּ/א֒)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 3:26:20 — *Los llama a salir del horno*

#### *y habló y dijo: Sadrac, Mesac, y Abed-nego, siervos del alto Dios, salid y venid. Entonces Sadrac, Mesac, y Abed-nego, salieron de en medio del fuego*

* *habló* (עָנֵ֣ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *dijo* (וְ/אָמַ֗ר)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *Abed* (נָֽפְקִ֗ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Los llama siervos del alto Dios: salid. Salen. El horno no los retiene.

### Daniel 3:27:12 — *El fuego no los tocó*

* Actores principales: *Nabucodonosor* (1)

#### *Y se juntaron los grandes, los gobernadores, los capitanes, y los del consejo del rey, para mirar estos varones, como el fuego no se*

* *juntaron* (וּ֠/מִֽתְכַּנְּשִׁין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *mirar* (חָזַ֣יִן)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Se juntan a mirar. La línea corta en «no se» —el detalle del daño viene enseguida.

+ *enseñoreó de sus cuerpos, ni cabello de sus cabezas fue*
> El fuego no se enseñoreó. Ni el cabello…

- *quemado, ni sus ropas se mudaron, ni olor de fuego había pasado por ellos*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.
> Cabello, ropa, olor: nada. La liberación queda verificada por testigos de la corte.

- *Nabucodonosor habló y*

* *Nabucodonosor* → *habló*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *Nabucodonosor* (עָנֵ֨ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> El rey vuelve a hablar.

### Daniel 3:28:14 — *Bendice al Dios que los libró*

* Actores principales: *Dios* (1) · *Mesac* (1)

#### *y dijo: Bendito el Dios de ellos, de Sadrac, Mesac, y*

* *Dios* → *dijo* → *Sadrac*

* *dijo* (וְ/אָמַ֗ר)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Bendito el Dios de ellos. Empieza la alabanza del rey.

- *Abed-nego, que*

* *Mesac* → *Abed*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *nego, que envió su ángel, y*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.
> Envió su ángel. El rey nombra el envío.

### Daniel 3:28:22 — *Bendice al Dios que los libró*

#### *su ángel, y libró sus siervos que*
> Libró a sus siervos. La línea corta en «que».

- *esperaron en él, y el mandamiento del rey*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.
> Esperaron en él… y el mandamiento del rey queda en tensión con esa espera.

### Daniel 3:28:29 — *Bendice al Dios que los libró*

#### *en él, y el mandamiento del rey mudaron, y entregaron sus cuerpos antes que sirviesen ni adoraran otro dios que su Dios*
> Mudaron el mandamiento del rey; entregaron sus cuerpos antes que adorar otro dios. El rey mismo narra su desobediencia como motivo de la liberación.

### Daniel 3:29:2 — *Decreto contra quien hable mal de su Dios*

* Actores principales: *Mesac* (1)

#### *Por mí pues se pone decreto, que todo pueblo, nación, o lengua, que dijera blasfemia contra el Dios de Sadrac, Mesac, y Abed-nego, sea*

* *Mesac* → *Abed*
> Nuevo decreto: contra quien blasfeme de su Dios. La línea corta en «sea».

### Daniel 3:29:10 — *Decreto contra quien hable mal de su Dios*

#### *nego, sea descuartizado, y su casa sea puesta por muladar; por cuanto no*
> Pena: descuartizado y casa por muladar. El «por cuanto no» anticipa el motivo.

### Daniel 3:29:33 — *Decreto contra quien hable mal de su Dios*

* Actores principales: *dios* (1)

#### *hay dios que pueda librar como éste*

* *dios* → *hay*

* Infinitivo[^inf] *éste* (לְ/הַצָּלָ֖ה): completa a *éste* (יִכֻּ֥ל).
> Motivo: no hay dios que pueda librar como éste. Responde al reto de 3:15 sin que el texto lo diga en sermón aparte.

### Daniel 3:30:3 — *Los engrandece en Babel*

* Actores principales: *Sadrac* (1)

#### *Entonces el rey engrandeció a Sadrac, Mesac, y Abed-nego en la provincia de Babel*

* *Sadrac* → *engrandeció* → *a Mesac*
> Los engrandece en Babel. El H2 cierra con honra, no con más amenaza del horno.

### En síntesis

El autor pone la imagen de oro, el decreto de adoración y el horno. Todos se postran; denuncian a Sadrac, Mesac y Abed-nego. Ellos afirman que su Dios puede librar y, si no, no adorarán. El rey los echa; ve cuatro sueltos; ellos salen sin daño. Nabucodonosor bendice al Dios que envió su ángel, decreta contra la blasfemia y los engrandece. La presión «¿qué dios os libre?» se cierra con el reconocimiento del rey; el relato no detiene aún la siguiente crisis de la corte.


## Daniel 4:1–37 El árbol; el Altísimo humilla al rey

### Daniel 4:1:13 — *Nabucodonosor anuncia a todos los pueblos*

* Actores principales: *Nabucodonosor* (1)

#### *Nabucodonosor rey, a todos los pueblos, naciones, y lenguas, que moran en toda la tierra: Paz os sea multiplicada*

* *Nabucodonosor* → *sea*

* *moran* (דארין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *tierra* (דָיְרִ֥ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Nabucodonosor habla a todos los pueblos. Anuncia lo que el Altísimo ha hecho con él. El desarrollo se abre como testimonio del rey, no como visión de Daniel.

### Daniel 4:2:4 — *Señales milagros alto Dios hecho*

* Actores principales: *Dios* (1) · *yo* (1)

#### *Las señales y milagros que el alto Dios ha hecho conmigo*

* *Dios* → *alto*
> Señales y milagros del alto Dios. El rey pone delante el motivo de contar; el sueño concreto aún no se narra.

- *conviene que yo las publique*

* *yo* → *conviene*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *publique* (לְ/הַחֲוָיָֽה): completa a *conviene* (שְׁפַ֥ר).

+ *Cuán grandes son sus señales, y cuán potentes sus maravillas! Su reino, reino sempiterno, y su señorío hasta generación y generación*

### Daniel 4:4:4 — *Estaba quieto en su casa*

* Actores principales: *Yo* (1)

#### *Yo Nabucodonosor estaba quieto en mi casa, y floreciente en mi palacio*

* *Yo* → *estaba*
> Estaba quieto en su casa. La tranquilidad queda dicha —y el texto la pondrá en contraste con lo que sigue.

### Daniel 4:5:2 — *Sueño que lo espanta*

#### *Vi un sueño que me espantó, y las imaginaciones y visiones de mi cabeza me*
> Llega el sueño que lo espanta. La presión de este H2 empieza aquí.

### Daniel 4:5:3 — *Sueño que lo espanta*

#### *y las imaginaciones y visiones de mi cabeza me turbaron*
> El espanto se sostiene. Todavía no llama a los sabios.

- *en mi cama*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 4:6:2 — *Manda traer a los sabios*

* Actores principales: *los sabios* (1) · *yo* (1)

#### *Por lo cual yo puse mandamiento para hacer venir delante de mí todos los sabios de Babel, que me mostrasen la interpretación del*

* *yo* → *cual* → *los sabios*

* Infinitivo[^inf] *hacer* (לְ/הַנְעָלָ֣ה): completa a *cual* (שִׂ֣ים).
> Manda traer a los sabios. Babel otra vez ante un sueño; el texto no dice aún que fallen.

- *sueño*

* *los sabios* → *sueño*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

+ *Y vinieron magos, astrólogos, caldeos, y adivinos: y dije el sueño delante de ellos, mas nunca me mostraron su interpretación*

* *magos* (עללין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *astrólogos* (עָלִּ֗ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *delante* (וְ/גָזְרַיָּ֑/א)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *nunca* (אָמַ֤ר)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *interpretación* (מְהוֹדְעִ֥ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 4:8:3 — *Entra Daniel delante del rey*

* Actores principales: *Daniel* (1)

#### *Hasta tanto que entró delante de mí Daniel, cuyo nombre*

* *Daniel* → *entró*
> Entra Daniel. El rey lo reconoce por el nombre de su dios; aquí aún no se oye la interpretación.

- *es Beltsasar, como el nombre de mi dios, y en el cual hay espíritu de los dioses santos, y dije el sueño delante de él, diciendo*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 4:9:6 — *Pide a Daniel la interpretación*

#### *Beltsasar, príncipe de los magos, ya que he entendido que*
> Pide a Daniel la interpretación. Le atribuye espíritu de los dioses santos. El sueño se va a contar enseguida.

- *hay*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *hay en ti espíritu de los dioses santos, y que ningún misterio se te esconde, me expresa las visiones de mi sueño que he visto, y su interpretación*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *esconde* (אָנֵ֣ס)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 4:10:6 — *Describe el árbol grande*

#### *Aquestas las visiones de mi cabeza en mi cama: me Parecia que veía un árbol en medio de la tierra, cuya altura era grande*

* *veía* (חָזֵ֣ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Describe el árbol grande. Empieza la visión del rey en primera persona.

### Daniel 4:11:1 — *Crecía árbol hacia fuerte altura*

#### *Crecía este árbol, y se hacia fuerte, y su altura*
> El árbol crecía hacia altura. La grandeza se acumula por crecimiento.

### Daniel 4:11:3 — *Árbol hacia fuerte altura llegaba*

* Actores principales: *altura* (1)

#### *este árbol, y se hacia fuerte, y su altura llegaba*

* *altura* → *llegaba*
> Altura fuerte. La línea corta sigue el mismo árbol.

### Daniel 4:11:5 — *Llegaba hasta cielo vista hasta*

#### *llegaba hasta el cielo, y su vista hasta el cabo de toda la tierra*
> Llegaba hasta el cielo; la vista hasta… El alcance del árbol se amplía.

### Daniel 4:12:9 — *Copa hermosa fruto abundancia*

* Actores principales: *copa* (1)

#### *Su copa era hermosa, y su fruto en abundancia, y para todos*

* *copa* → *era*
> Copa hermosa, fruto en abundancia. El árbol alimenta; el texto aún no nombra al rey como el árbol.

### Daniel 4:12:13 — *Hermosa fruto abundancia había él*

* Actores principales: *ramas* (1) · *todos* (1)

#### *hermosa, y su fruto en abundancia, y para todos había en él mantenimiento. Debajo de él se*

* *todos* → *había*
> Abundancia y mantenimiento. La imagen de provisión se insiste.

- *ponían a la sombra las bestias del campo, y en sus ramas*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *a la sombra las bestias del campo, y en sus ramas hacían morada las aves del cielo, y se mantenia de él toda carne*

* *ramas* → *hacían*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 4:13:2 — *Ve al vigilante santo*

#### *Veía en las visiones de mi cabeza en mi cama, y he aquí que un vigilante y santo descendía del cielo*

* *Veía* (חָזֵ֥ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *cielo* (נָחִֽת)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Ve al vigilante santo que desciende. La voz del cielo entra en la visión.

### Daniel 4:14:5 — *Ordena cortar el árbol*

#### *Y clamaba fuertemente y*

* *clamaba* (קָרֵ֨א)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Ordena cortar el árbol. El decreto del vigilante abre la crisis del sueño.

- *decía así*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *decía* (אָמַ֗ר)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 4:14:9 — *Ordena cortar el árbol*

* Actores principales: *ramas* (1)

#### *así: Cortad el árbol, y*
> Cortar y destruir. La sentencia sobre el árbol queda martillada.

- *desmochad sus ramas*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *sus ramas, derribad su copa, y derramad su fruto: se vayan las bestias que están debajo de él*

* *ramas* → *derribad*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 4:15:5 — *Deja el tronco con hierba*

#### *Mas la cepa de sus raíces dejaréis en la tierra, y con atadura de hierro y de metal entre la hierba del campo; y sea mojado*
> Deja el tronco con hierba y atadura de hierro y bronce. No es aniquilación total: queda cepa.

- *con el rocío del cielo, y su parte con las bestias en la hierba de la tierra*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 4:16:5 — *Su corazón de hombre será mudado*

#### *Su corazón sea mudado de corazón de hombre, y le sea*
> Su corazón de hombre será mudado. El árbol pasa a lenguaje de persona.

- *dado*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 4:16:12 — *Su corazón de hombre será mudado*

#### *dado corazón de bestia, y pasen sobre él siete tiempos*
> Mudanza del corazón y tiempos sobre él. El plazo queda dicho sin cumplirse aún.

+ *La sentencia*

- *es por decreto de los vigilantes, y por dicho de los santos la demanda: para que conozcan los vivientes que el Altísimo se enseñorea del reino de los hombres, y que a quien él quiere lo da, y constituye sobre él al más bajo de los hombres*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 4:18:3 — *Rey Nabucodonosor visto sueño*

* Actores principales: *Yo* (1)

#### *Yo el rey Nabucodonosor he visto este sueño. Tú pues, Beltsasar, dirás la interpretación de él, porque todos los sabios de mi reino nunca pudieron mostrarme su interpretación: mas tú puedes, porque*

* *Yo* → *pudieron* → *tú*
> El rey cierra: este es el sueño; tú, Beltsasar, di la interpretación. Los sabios no pudieron; la carga cae sobre Daniel.

- *hay en ti espíritu de los dioses santos*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *santos* (לְ/הוֹדָ֣עֻתַ֔/נִי): completa a *dioses* (אֱמַ֗ר).

* *santos* (כָּהֵ֔ל)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 4:19:6 — *Daniel se turba por el sueño*

* Actores principales: *Beltsasar* (2)

#### *Entonces Daniel, cuyo nombre era Beltsasar, estuvo*

* *Beltsasar* → *era*
> Daniel se turba. El intérprete no celebra el sueño; se espanta por una hora.

- *callando casi una hora, y sus pensamientos lo espantaban: El rey*

* *Beltsasar* → *callando* → *El rey*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 4:19:18 — *Daniel se turba por el sueño*

* Actores principales: *Beltsasar* (1)

#### *casi una hora, y sus pensamientos lo espantaban: El rey habló, y dijo: Beltsasar, el sueño ni su interpretación no te espante. Respondió Beltsasar, y dijo: Señor mío, el sueño sea para tus enemigos, y su interpretación para los que mal te quieren*

* *Beltsasar* → *habló*

* *Respondió* (עָנֵ֨ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *dijo* (וְ/אָמַ֗ר)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *quieren* (לְ/שָֽׂנְאָ֖/ךְ)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> El rey lo anima a hablar. Daniel desea el sueño sobre los enemigos —y aun así debe declarar.

### Daniel 4:20:3 — *El árbol eres tú, oh rey*

#### *El árbol que viste, que crecía y se*
> Empieza la identificación: el árbol…

### Daniel 4:20:5 — *El árbol eres tú, oh rey*

#### *y se hacía fuerte, y que su altura*
> …que viste…

### Daniel 4:20:6 — *El árbol eres tú, oh rey*

* Actores principales: *altura* (1)

#### *fuerte, y que su altura llegaba*

* *altura* → *llegaba*
> …que creció…

### Daniel 4:20:8 — *El árbol eres tú, oh rey*

#### *llegaba hasta el cielo, y su vista por toda la tierra*
> El árbol eres tú, oh rey. La punta cae: Nabucodonosor es el árbol.

### Daniel 4:21:9 — *Cuya copa hermosa fruto abundancia*

* Actores principales: *copa* (1)

#### *Y cuya copa era hermosa, y su fruto en abundancia, y que para todos*

* *copa* → *era*
> Repite la copa y el fruto. La grandeza del rey se narra otra vez bajo la figura.

### Daniel 4:21:13 — *Hermosa fruto abundancia había mantenimiento*

* Actores principales: *todos* (1)

#### *hermosa, y su fruto en abundancia, y que para todos había mantenimiento en él; debajo del cual moraban las bestias del campo, y en sus ramas habitaban las aves del cielo*

* *todos* → *había*
> Mantenimiento para todos. El señorío se describe por lo que el árbol daba.

### Daniel 4:22:6 — *Eres rey creciste te hiciste*

#### *Tú mismo eres, oh rey, que creciste, y te hiciste fuerte, pues creció tu grandeza, y ha*
> Creciste y te hiciste grande. La interpretación nombra al rey sin figura por un momento.

- *tu grandeza, y ha llegado*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *llegado*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 4:22:10 — *Llegado hasta cielo tu señorío*

#### *llegado hasta el cielo, y tu señorío hasta el cabo de la tierra*
> Señorío hasta el cielo. El alcance del reino queda dicho.

- *Y cuanto a lo que vio el rey*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 4:23:10 — *Rey vigilante santo descendía cielo*

#### *el rey, un vigilante y santo que descendía del cielo, y*

* *descendía* (נָחִ֣ת)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> El vigilante santo —ahora en boca de Daniel— confirma el corte.

- *decía*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *decía* (וְ/אָמַר֩)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 4:23:17 — *Cortad árbol destruidlo cepa raíces*

#### *Cortad el árbol y destruidlo: mas la cepa de sus raíces dejaréis en la tierra, y con atadura de hierro y de metal en la hierba del campo; y sea*
> Cortad el árbol; dejad la cepa. Misma sentencia, ahora interpretada.

### Daniel 4:23:27 — *Árbol destruidlo cepa raíces dejaréis*

#### *el árbol y destruidlo: mas la cepa de sus raíces dejaréis en la tierra, y con atadura de hierro y de metal en la hierba del campo; y sea mojado*
> Cepa de raíces: el reino no se borra del todo en la palabra del vigilante.

- *con el rocío del cielo, y su parte sea con las bestias del campo, hasta que pasen sobre él siete tiempos*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 4:24:9 — *Esta es la interpretación*

* Actores principales: *Esta* (1)

#### *Esta es la interpretación, oh rey, y la sentencia del Altísimo, que ha venido sobre el rey mi señor*

* *Esta* → *es* → *el rey*
> Esta es la interpretación. Daniel marca el paso del sueño al decreto.

+ *Que te echarán de entre los hombres, y con las bestias del campo será tu morada, y con hierba del campo te apacentarán como a los bueyes, y con rocío del cielo serás bañado; y siete tiempos pasarán sobre ti, hasta que entiendas que el Altísimo se enseñorea en el reino de los hombres, y que a quien él quisiera lo*

* *hasta* (טָֽרְדִ֣ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 4:25:33 — *Serás echado de entre los hombres*

#### *dará*

* *dará* (מְצַבְּעִ֔ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Serás echado de entre los hombres. Stub breve: la expulsión se nombra; el detalle pleno rodea esta unidad.

### Daniel 4:26:2 — *El reino te será confirmado*

#### *Y lo que dijeron, que dejasen en la tierra la cepa de las raíces del mismo árbol, significa que tu reino se te quedará firme, luego que entiendas que el señorío*

* Infinitivo[^inf] *dejasen* (לְ/מִשְׁבַּ֞ק): completa a *dijeron* (אֲמַ֗רוּ).
> El reino te será confirmado cuando conozcas que el cielo señorea. Hay vuelta prevista.

- *es en los cielos*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

+ *Por tanto, oh rey, aprueba mi consejo, y redime tus pecados con justicia, y tus iniquidades con misericordias para con los pobres; que tal vez será eso una prolongación de tu*

### Daniel 4:27:15 — *Consejo: rompe tus pecados*

#### *tranquilidad*

* Infinitivo[^inf] *tranquilidad* (בְּ/מִחַ֣ן): completa a *tranquilidad* (תֶּהֱוֵ֥א).
> Consejo: rompe tus pecados con justicia. Daniel deja abierta una puerta de misericordia; el texto no dice aquí si el rey la toma.

### Daniel 4:28:2 — *Todo esto vino sobre Nabucodonosor*

* Actores principales: *Nabucodonosor* (1)

#### *Todo aquesto vino sobre el rey Nabucodonosor*

* *Nabucodonosor* → *vino* → *el rey*
> Todo esto vino sobre Nabucodonosor. El relato pasa del consejo al cumplimiento.

### Daniel 4:29:11 — *Paseaba sobre Babel*

#### *A cabo de doce meses, se andando paseando sobre el palacio del reino de Babel*

* *Babel* (מְהַלֵּ֥ךְ)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Paseaba sobre Babel. Doce meses después; la quietud de 4:4 vuelve como escenario.

### Daniel 4:30:11 — *¿No es esta la gran Babilonia?*

#### *Habló el rey, y dijo: ¿No es ésta la gran Babel, que yo edifiqué para casa del reino, con la fuerza de mi poder, y para gloria de mi grandeza*

* *es* (עָנֵ֤ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *Babel* (וְ/אָמַ֔ר)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> ¿No es esta la gran Babilonia que yo edifiqué? La jactancia queda en su boca.

### Daniel 4:31:8 — *Aún estaba la palabra en su boca*

* Actores principales: *Aun* (1)

#### *Aun estaba la palabra en la boca del rey*

* *Aun* → *estaba*
> Aún la palabra en su boca: voz del cielo. El decreto cae en el acto.

- *cuando cae una voz del cielo: A ti dicen, rey Nabucodonosor; el reino es traspasado de ti*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *ti* (אָֽמְרִין֙)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

+ *Y de entre los hombres te echan, y con las bestias del campo*

### Daniel 4:32:29 — *Serás echado; el Altísimo señorea*

#### *será tu morada, y como a los bueyes te apacentarán: y siete tiempos pasarán sobre ti, hasta que conozcas que el Altísimo se enseñorea en el reino de los hombres, y a quien él quisiera lo da*

* *hasta* (טָֽרְדִ֜ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Serás echado; el Altísimo señorea. La sentencia se repite ya como voz cumplidera.

### Daniel 4:33:4 — *Se cumple la palabra; come hierba*

* Actores principales: *Nabucodonosor* (2)

#### *En la misma hora se cumplió la palabra sobre Nabucodonosor, y*

* *Nabucodonosor* → *cumplió*
> Se cumple: echado, come hierba. La palabra se hace hecho.

- *fue*

* *Nabucodonosor* → *fue*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *echado de entre los hombres; y*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 4:33:16 — *Se cumple la palabra; come hierba*

#### *de entre los hombres; y comía hierba como los bueyes, y su cuerpo se*
> Cuerpo mojado del rocío. El rebajamiento se detalla.

### Daniel 4:33:21 — *Se cumple la palabra; come hierba*

#### *hierba como los bueyes, y su cuerpo se bañaba con el rocío del cielo, hasta que su pelo creció como de águila, y sus uñas como de aves*
> Cabello como águilas, uñas como aves. La mudanza llega al aspecto.

### Daniel 4:34:7 — *Alza los ojos al cielo; vuelve en sí*

* Actores principales: *yo* (1)

#### *Mas al fin del tiempo yo Nabucodonosor alcé mis ojos al cielo, y mi sentido me*

* *yo* → *sentido*
> Al cabo de los días alza los ojos al cielo. El giro empieza en la mirada.

### Daniel 4:34:10 — *Alza los ojos al cielo; vuelve en sí*

#### *me fue vuelto; y bendije al Altísimo, y alabé y glorifiqué al que vive para siempre; porque su señorío*
> Vuelve en sí. El entendimiento regresa.

### Daniel 4:34:13 — *Alza los ojos al cielo; vuelve en sí*

#### *vuelto; y bendije al Altísimo, y alabé y glorifiqué al que vive para siempre; porque su señorío es*
> Bendice al Altísimo. Quien fue el árbol ahora alaba.

- *es*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 4:34:17 — *Alza los ojos al cielo; vuelve en sí*

#### *es sempiterno, y su reino por todas las edades*
> Alabanza al que vive para siempre. El señorío del Altísimo se confiesa.

+ *Y todos los moradores de la tierra por nada son contados: y en el ejército del cielo, y en los habitantes de la tierra, hace según su voluntad*

* *y* (דארי)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *tierra* (דָּיְרֵ֤י)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 4:35:22 — *Nadie detiene su mano*

#### *ni hay quien estorbe su mano, y le diga: ¿Qué haces*

* Infinitivo[^inf] *hay* (וּֽ/כְ/מִצְבְּיֵ֗/הּ): completa a *haces* (עֲבַֽדְתְּ).

* *haces* (וְ/דָיְרֵ֖י)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Nadie detiene su mano. Todas las gentes son como nada delante de Él.

### Daniel 4:36:4 — *Se le vuelve la majestad*

#### *En el mismo tiempo mi sentido me*
> Se le vuelve la majestad. El reino confirmado de 4:26 empieza a verse.

+ *dignidad*

- *fue vuelto, y la*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 4:36:15 — *Se le vuelve la majestad*

#### *vuelto, y la majestad de mi reino, mi*
> Consejeros lo buscan; es restablecido. La corte vuelve a él.

### Daniel 4:36:21 — *Se le vuelve la majestad*

* Actores principales: *grandeza* (1)

#### *y mi grandeza volvieron a mí, y mis gobernadores y mis grandes me buscaron; y fuí restituido a mi reino, y mayor grandeza me fue añadida*

* *grandeza* → *volvieron* → *a mí, y mis*
> Mayor grandeza le es añadida. El texto no borra el humillamiento; muestra la vuelta.

### Daniel 4:37:4 — *Alaba al Rey del cielo*

#### *Ahora yo Nabucodonosor alabo, engrandezco y glorifico al Rey del cielo, porque todas sus obras son verdad, y sus caminos juicio; y humillar puede a los que andan con soberbia*

* Cláusula nominal: en griego esta cláusula no tiene verbo; el español lo suple para poder leerse.

* Infinitivo[^inf] *soberbia* (לְ/הַשְׁפָּלָֽה): completa a *alabo* (מְשַׁבַּ֨ח).

* *alabo* (מְשַׁבַּ֨ח)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *engrandezco* (וּ/מְרוֹמֵ֤ם)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *glorifico* (וּ/מְהַדַּר֙)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *andan* (מַהְלְכִ֣ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *soberbia* (יָכִ֖ל)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Alaba al Rey del cielo: sus obras verdad, sus caminos juicio; a los que andan con soberbia puede humillar. Cierra el testimonio del rey. La presión del sueño se cumple y se confiesa; el relato no detiene aún a Belsasar.

### En síntesis

Nabucodonosor cuenta señales del Altísimo: soñó un árbol grande; el vigilante ordenó cortarlo y dejar la cepa. Daniel se turba e identifica: el árbol es el rey; será echado hasta que conozca que el cielo señorea. Tras la jactancia sobre Babel, la voz cae y se cumple. Al cabo alza los ojos, vuelve en sí, alaba al Rey del cielo y recupera la majestad. La presión «¿quién señorea?» se cierra en su boca; el libro aún no llega a Belsasar.


## Daniel 5:1–31 La escritura en la pared; cae Belsasar

### Daniel 5:1:3 — *Belsasar hace gran banquete*

* Actores principales: *Belsasar* (1)

#### *El rey Belsasar hizo un gran banquete a mil de sus príncipes, y en presencia de los mil bebía vino*

* *Belsasar* → *hizo* → *a mil de sus*

* *vino* (שָׁתֵֽה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Belsasar hace gran banquete. Nueva corte, nuevo rey. El texto no explica aún el uso de los vasos; solo abre la fiesta.

### Daniel 5:2:2 — *Manda traer los vasos del templo*

* Actores principales: *Belsasar* (1) · *Nabucodonosor* (1)

#### *Belsasar, con el gusto del vino*

* *Belsasar* → *vino*
> Manda traer los vasos de la casa de Dios que Nabucodonosor había sacado. Lo sagrado entra en la mesa del rey.

- *mandó que trajesen los vasos de oro y de plata que Nabucodonosor su padre*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *trajesen* (לְ/הַיְתָיָה֙): completa a *Nabucodonosor* (הַנְפֵּק֙).

- *que trajesen los vasos de oro y de plata que Nabucodonosor su padre había traído del templo de Jerusalén; para que bebiesen con ellos el rey y sus príncipes*

* *Nabucodonosor* → *había* → *el rey*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 5:3:2 — *Beben con los vasos sagrados*

* Actores principales: *Dios* (2)

#### *Entonces fueron os traid los vasos de oro que*
> Beben con los vasos. El rey, sus príncipes, mujeres y concubinas. La profanación queda en la acción.

- *habían traído del templo de la casa de Dios que*

* *Dios* → *habían*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *traído del templo de la casa de Dios que estaba en Jerusalén, y bebieron con ellos el rey y sus príncipes*

* *Dios* → *estaba* → *el rey*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *Bebieron*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 5:4:3 — *Alaban a dioses de oro y plata*

#### *vino, y alabaron a los dioses de oro y de plata, de metal, de hierro, de madera, y de piedra*
> Alaban a dioses de oro y plata, metal, hierro, madera y piedra. Bebida y alabanza a ídolos van juntas. Todavía no aparece la mano.

### Daniel 5:5:3 — *Aparece la escritura en la pared*

* Actores principales: *hora* (1)

#### *En aquella misma hora salieron unos dedos de mano de hombre, y*

* *hora* → *salieron*
> En esa hora aparecen dedos de mano humana escribiendo frente al candelero. La fiesta se quiebra. El texto no traduce aún las letras.

- *unos dedos de mano de hombre, y escribían delante del candelero sobre lo encalado de la pared del palacio real, y el rey veía la palma de la mano que escribía*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *escribía* (כָתְבָֽה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 5:6:4 — *El rey se turba*

#### *Entonces el rey se demudó de su color, y sus pensamientos lo*
> El rey se turba: muda el semblante. La presión de este H2 cae sobre Belsasar.

### Daniel 5:6:6 — *El rey se turba*

#### *de su color, y sus pensamientos lo turbaron, y se desataron las ceñiduras de sus lomos, y sus rodillas se batían la una con la otra*

* *una* (נָֽקְשָֽׁן)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Las coyunturas se le desatan; las rodillas se entrechocan. El espanto se ve en el cuerpo.

+ *dijo*

### Daniel 5:7:18 — *Llama a magos y astrólogos*

* Actores principales: *adivinos* (1)

#### *El rey clamó en alta voz que hicieran venir magos, caldeos, y adivinos*

* *rey* (קָרֵ֤א)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Grita por magos y astrólogos. Babel otra vez ante un misterio. La recompensa se anuncia: púrpura, cadena, tercero en el reino.

- *Habló el rey, y*

* *adivinos* → *Habló* → *el rey*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 5:7:33 — *Llama a magos y astrólogos*

* Actores principales: *los sabios* (1)

#### *a los sabios de Babel: Cualquiera que leyere esta escritura, y me mostrare su interpretación, será vestido de púrpura, y tendrá collar de oro a su cuello; y en el reino se enseñoreará el tercero*

* *los sabios* → *será* → *a su cuello; y*

* Infinitivo[^inf] *sabios* (לְ/הֶֽעָלָה֙): completa a *tercero* (יִשְׁלַֽט).

* *esta* (וְ/גָזְרַיָּ֑/א)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *mostrare* (עָנֵ֨ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *será* (וְ/אָמַ֣ר)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Quien lea y declare será el tercero. El edicto de honra queda dicho; nadie ha leído aún.

+ *Entonces fueron introducidos todos los sabios del rey, y no pudieron leer la escritura, ni mostrar al rey su interpretación*

* Infinitivo[^inf] *mostrar* (לְ/מִקְרֵ֔א): completa la acción del verbo principal.

* Infinitivo[^inf] *interpretación* (לְ/הוֹדָעָ֥ה): completa la acción del verbo principal.

* *fueron* (עללין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *introducidos* (עָֽלִּ֔ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *pudieron* (כָהֲלִ֤ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

+ *Entonces el rey Belsasar fue muy turbado, y se le mudaron sus colores y se alteraron sus príncipes*

* *turbado* (מִתְבָּהַ֔ל)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *colores* (שָׁנַ֣יִן)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *príncipes* (מִֽשְׁתַּבְּשִֽׁין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 5:10:8 — *La reina recomienda a Daniel*

* Actores principales: *príncipes* (1)

#### *La reina, por las palabras del rey y de sus príncipes, entró a la sala del banquete. Y*

* *príncipes* → *entró* → *a la sala del*
> Entra la reina por las palabras del rey. Trae consejo, no magia. Aquí todavía no está Daniel en la sala.

- *habló la reina, y*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *dijo: Rey, para siempre vive, no te asombren tus pensamientos, ni tus colores se demuden*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

+ *En tu reino hay*

### Daniel 5:11:26 — *Hay un hombre en tu reino*

#### *un varón, en el cual mora el espíritu de los dioses santos; y en los días de tu padre se halló en él luz e inteligencia y sabiduría, como ciencia de los dioses: al cual el rey Nabucodonosor, tu padre, el rey tu padre constituyó príncipe sobre todos los magos, astrólogos, caldeos, y adivinos*

* *adivinos* (גָּזְרִ֔ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Hay un hombre en tu reino en quien habita espíritu de los dioses santos. Señala a Daniel por la memoria de Nabucodonosor.

+ *Por cuanto fue hallado en él mayor espíritu, y ciencia, y entendimiento, interpretando*

### Daniel 5:12:26 — *Daniel puede declarar secretos*

* Actores principales: *Daniel* (1)

#### *sueños, y declarando preguntas, y deshaciendo dudas, es a saber, en Daniel; al cual el rey puso por nombre Beltsasar. se Llame pues ahora a Daniel, y él mostrará la interpretación*

* *Daniel* → *declarando* → *a Beltsasar*

* Infinitivo[^inf] *interpretación* (וַֽ/אַֽחֲוָיַ֨ת): completa a *interpretación* (יְהַֽחֲוֵֽה).

* *interpretación* (וּ/מְשָׁרֵ֣א)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Daniel puede declarar sueños y desatar nudos. La reina cierra: llámale. El texto deja abierta la venida de Daniel.

### Daniel 5:13:3 — *Traen a Daniel ante el rey*

* Actores principales: *Daniel* (1)

#### *Entonces Daniel fue traído delante del rey. Y*

* *Daniel* → *fue*
> Traen a Daniel. El rey lo identifica como de los trasportados de Judá.

### Daniel 5:13:21 — *Traen a Daniel ante el rey*

* Actores principales: *Daniel* (1)

#### *traído delante del rey. Y habló el rey, y dijo a Daniel: ¿Eres tú aquel Daniel de los hijos de la cautividad de Judá, que mi padre trajo de Judea*

* *Daniel* → *habló* → *a tú*

* *habló* (עָנֵ֨ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *dijo* (וְ/אָמַ֣ר)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Confirma el origen: mi padre trajo de Judá. Daniel queda delante del banquete y de la escritura.

### Daniel 5:14:1 — *He oído de ti espíritu de dioses*

* Actores principales: *Yo* (1)

#### *Yo he oído de ti que el espíritu de los dioses santos está en ti, y que en ti se halló luz, y entendimiento y mayor*

* *Yo* → *halló*
> He oído de ti: espíritu de dioses. Belsasar habla por rumor, no por experiencia propia todavía.

### Daniel 5:14:12 — *He oído de ti espíritu de dioses*

* Actores principales: *mayor* (1)

#### *luz, y entendimiento y mayor sabiduría*

* *mayor* → *sabiduría*
> Luz, inteligencia y sabiduría. Repite lo oído. Todavía no pide la lectura en esta línea corta.

### Daniel 5:15:2 — *Traídos los sabios delante de mí*

#### *Y ahora fueron os traid delante de mí, sabios, astrólogos, que leyesen esta escritura, y me mostrasen su interpretación: pero no han*
> Los sabios fueron traídos y no pudieron. Babel falla otra vez; la carga pasa a Daniel.

- *podido mostrar la interpretación del negocio*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *negocio* (לְ/הַחֲוָיָֽה): completa a *interpretación* (יִקְר֔וֹן).

* *negocio* (כָהֲלִ֥ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 5:16:2 — *Si lees, serás el tercero*

* Actores principales: *Yo* (1)

#### *Yo pues he oído de ti que puedes declarar las dudas, y desatar dificultades. Si ahora pudieres leer esta escritura, y mostrarme su interpretación, serás vestido*

* *Yo* → *vestido*
> Si puedes leer y declarar… La oferta de púrpura y tercer lugar se repite delante de Daniel.

- *vestido*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *vestido*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *vestido*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 5:16:30 — *Si lees, serás el tercero*

#### *vestido de púrpura, y collar de oro tendrás en tu cuello, y en el reino serás el tercer señor*

* Infinitivo[^inf] *tendrás* (לְ/מִפְשַׁ֖ר): completa a *señor* (תִּשְׁלַֽט).

* Infinitivo[^inf] *reino* (לְ/מִשְׁרֵ֑א): completa a *señor* (תִּשְׁלַֽט).

* Infinitivo[^inf] *señor* (לְ/הוֹדָ֣עֻתַ֔/נִי): completa a *señor* (תִּשְׁלַֽט).
> Tercero en el reino. El precio de la lectura queda claro.

+ *Entonces Daniel respondió, y*

* *respondió* (עָנֵ֣ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 5:17:18 — *Daniel rechaza los dones*

#### *dijo delante del rey: Tus dones sean para ti, y tus presentes dalos a otro. La escritura yo la leeré al rey, y le mostraré la interpretación*

* *delante* (וְ/אָמַר֙)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Daniel rechaza los dones: sean para ti; la escritura leeré. Interpreta sin comprar el cargo.

### Daniel 5:18:11 — *El Dios Altísimo dio el reino a Nabucodonosor*

* Actores principales: *Nabucodonosor* (1)

#### *El altísimo Dios, oh rey, dió a Nabucodonosor tu padre el reino, y la grandeza, y la gloria, y la honra*

* *Nabucodonosor* → *dió* → *a tu*
> El Dios Altísimo dio el reino a Nabucodonosor. Daniel empieza por la historia del padre, no por las letras.

### Daniel 5:19:4 — *Grandeza dió pueblos naciones lenguas*

#### *Y por la grandeza que le dió, todos los pueblos, naciones, y lenguas, temblaban y*
> Grandeza sobre pueblos, naciones y lenguas. El señorío fue don.

### Daniel 5:19:10 — *Pueblos naciones lenguas temblaban temían*

#### *todos los pueblos, naciones, y lenguas, temblaban y temían delante de él. Los que él*

* *temían* (זאעין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *delante* (זָיְעִ֥ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Temblaban y temían. El alcance del poder se oye en el miedo ajeno.

- *quería*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *quería* (וְ/דָחֲלִ֖ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

+ *quería: engrandecía a los que quería, y a los que quería*

* *engrandecía* (קָטֵ֗ל)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *y* (צָבֵא֙)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

- *mataba, y*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 5:19:22 — *Daba vida*

#### *y daba vida a los que*

* *vida* (צָבֵ֜א)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Daba vida… Stub de poder real; la pareja humillar/exaltar rodea esta unidad.

### Daniel 5:19:34 — *Humillaba*

#### *humillaba*

* *humillaba* (מַשְׁפִּֽיל)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> …humillaba. Stub: el mismo poder que da vida también humilla.

### Daniel 5:20:2 — *Cuando se ensoberbeció su corazón*

#### *Mas cuando su corazón se*
> Cuando se ensoberbeció su corazón… Empieza el recuerdo de la caída de Nabucodonosor.

### Daniel 5:20:5 — *Cuando se ensoberbeció su corazón*

#### *su corazón se ensoberbeció, y su espíritu se*
> …se ensoberbeció…

### Daniel 5:20:7 — *Cuando se ensoberbeció su corazón*

* Actores principales: *altivez* (1) · *corazón* (1)

#### *y su espíritu se endureció en altivez*

* Infinitivo[^inf] *altivez* (לַ/הֲזָדָ֑ה): completa a *fue* (הָנְחַת֙).
> …fue depuesto de su trono. La soberbia tiene consecuencia ya conocida en el libro.

- *fue depuesto del trono de su reino, y traspasaron de él la gloria*

* *altivez* → *fue*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *Y fue*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *echado de entre los hijos de los hombres; y su corazón*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *de entre los hijos de los hombres; y su corazón fue puesto con las bestias, y con los asnos monteses*

* *corazón* → *fue*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 5:21:15 — *Puesto bestias asnos monteses morada*

* Actores principales: *cuerpo* (1) · *el altísimo* (1) · *monteses* (1)

#### *puesto con las bestias, y con los asnos monteses fue su morada. Hierba le*

* *monteses* → *fue*
> Morada con bestias; el Altísimo señorea. Daniel resume el capítulo 4 ante Belsasar.

+ *bañado*

- *hicieron comer, como a buey, y su cuerpo*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *comer, como a buey, y su cuerpo fue*

* *cuerpo* → *fue*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *con el rocío del cielo, hasta que conoció que el altísimo Dios se enseñorea del reino de los hombres, y que pondrá sobre él al que quisiera*

* *el altísimo* → *conoció* → *al que quisiera*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 5:22:6 — *Tú, Belsasar, no has humillado tu corazón*

#### *Y tú, su hijo Belsasar, no has humillado tu corazón*
> Tú, Belsasar, no has humillado tu corazón, sabiendo todo esto. El cargo personal aterriza. Sabía y no se humilló.

- *sabiendo todo esto*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 5:23:4 — *Trajiste los vasos; no glorificaste a Dios*

#### *Antes contra el Señor del cielo te has ensoberbecido, e hiciste traer delante de ti los vasos de su casa, y tú y tus príncipes, tus mujeres y tus concubinas, bebisteis*
> Te alzaste contra el Señor del cielo; trajiste los vasos. La fiesta de 5:2–4 vuelve como acusación.

### Daniel 5:23:8 — *Trajiste los vasos; no glorificaste a Dios*

* Actores principales: *ellos* (1)

#### *e hiciste traer delante de ti los vasos de su casa, y tú y tus príncipes, tus mujeres y tus concubinas, bebisteis vino en ellos: demás de esto, a dioses de plata y de oro, de metal, de hierro, de madera, y de piedra, que ni ven, ni oyen, ni saben, diste alabanza: y al Dios en cuya mano está tu vida, y cuyos*

* *ellos* → *vino* → *a Dios*

* *dioses* (שָׁתַ֣יִן)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Alabaste a dioses que no ven ni oyen; al Dios en cuya mano está tu aliento no glorificaste. El contraste queda dicho.

+ *son*

- *todos tus caminos, nunca honraste*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *nunca* (חָזַ֧יִן)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *honraste* (יָדְעִ֖ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 5:24:4 — *Por eso fue enviada la mano*

* Actores principales: *presencia* (1)

#### *Entonces de su presencia fue enviada la palma de la mano que*

* *presencia* → *fue*
> Por eso fue enviada la mano. La escritura no es azar: responde a esa falta.

- *esculpió esta escritura*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 5:25:4 — *La escritura: MENE, TEKEL, UPARSIN*

#### *Y la escritura que esculpió es: MENE, MENE, TEKEL, UFARSIN*
> MENE, TEKEL, UPARSIN. Daniel lee lo escrito. La interpretación sigue.

### Daniel 5:26:5 — *MENE: contó Dios tu reino*

* Actores principales: *Dios* (1) · *negocio* (1)

#### *La interpretación del negocio es: MENE*

* *negocio* → *es*
> MENE: contó Dios tu reino y le puso fin. El reinado tiene número cerrado.

- *Contó Dios tu reino, y halo rematado*

* *Dios* → *Contó* → *tu*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *TEKEL: Pesado has*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *has sido en balanza, y fuiste hallado falto*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 5:28:2 — *PERES: dividido; dado a Medos y Persas*

#### *PERES: Tu reino fue*
> PERES: dividido tu reino…

### Daniel 5:28:4 — *PERES: dividido; dado a Medos y Persas*

#### *rompido, y es dado a medos y persas*
> …dado a Medos y Persas. El fin del reino queda nombrado. Aquí aún no muere el rey.

### Daniel 5:29:2 — *Visten a Daniel de púrpura*

* Actores principales: *Belsasar* (2)

#### *Entonces, lo mandando Belsasar*

* *Belsasar* → *mandando*
> Mandó vestir a Daniel de púrpura. Cumple la oferta pese al rechazo de 5:17.

- *vistieron a Daniel de púrpura*

* *Belsasar* → *vistieron* → *a Daniel*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 5:29:13 — *Visten a Daniel de púrpura*

* Actores principales: *Daniel* (1)

#### *a Daniel de púrpura, y en su cuello fue puesto un collar de oro, y*

* *Daniel* → *fue*
> Cadena de oro; pregón de tercero. Honra de un reino que ya fue contado.

- *pregonaron de él que fuera el tercer señor en el reino*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 5:30:3 — *Aquella noche muere Belsasar*

* Actores principales: *Belsasar* (1)

#### *La misma noche fue muerto Belsasar, rey de los caldeos*

* *Belsasar* → *fue* → *los caldeos*
> Aquella misma noche fue muerto Belsasar. La interpretación se cumple sin dilación narrativa.

### Daniel 5:31:3 — *Darío de Media toma el reino*

* Actores principales: *Darío* (1)

#### *Y Darío de Media tomó el reino, siendo de sesenta y dos años*

* *Darío* → *tomó*
> Darío de Media tomó el reino. Cambia el trono. El H2 cierra la noche de Belsasar; la presión del decreto sobre Daniel viene en el siguiente.

- *Pareció*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *Pareció*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### En síntesis

Belsasar banquetea con los vasos del templo y alaba ídolos. Aparece la escritura; magos fallan; la reina trae a Daniel. Él rechaza dones, recuerda la soberbia de Nabucodonosor y acusa a Belsasar: no humilló el corazón ni glorificó a Dios. Lee MENE, TEKEL, PERES: reino contado, pesado, dividido a Medos y Persas. Aquella noche muere el rey y Darío toma el reino. La presión de la mano en la pared se cierra con la caída; el libro sigue bajo otro trono.


## Daniel 6:1–28 El decreto, la oración y el foso de los leones

### Daniel 6:1:11 — *Darío pone satrapías*

* Actores principales: *Darío* (1)

#### *Pareció bien a Darío constituir sobre el reino ciento veinte gobernadores, que estuviesen en todo el reino*

* *Darío* → *Pareció* → *a constituir sobre*
> Darío pone satrapías sobre el reino. Nueva administración bajo Media. Daniel aún no se nombra como preferido.

### Daniel 6:2:10 — *Tres gobernadores sobre ellos*

* Actores principales: *Daniel* (1)

#### *Y sobre ellos tres presidentes, de los cuales Daniel era el uno, a quienes estos gobernadores diesen cuenta, porque el rey no*

* *Daniel* → *era* → *a el rey*
> Tres gobernadores sobre ellos, Daniel uno de ellos. El texto fija su lugar en la cadena de mando.

- *recibiese daño*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *daño* (נָזִֽק)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 6:3:4 — *Daniel es preferido*

* Actores principales: *Daniel* (1)

#### *Pero el mismo Daniel era superior a estos gobernadores y presidentes, porque había en él más abundancia de espíritu: y el rey pensaba de ponerlo sobre todo el reino*

* *Daniel* → *era* → *a el rey*

* Infinitivo[^inf] *reino* (לַ/הֲקָמוּתֵ֖/הּ): completa a *presidentes* (הֲוָ֣א).

* *sobre* (מִתְנַצַּ֔ח)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Daniel es preferido sobre los gobernadores; el rey piensa ponerlo sobre todo el reino. La excelencia abre la envidia.

### Daniel 6:4:4 — *Buscan ocasión contra Daniel*

* Actores principales: *Daniel* (1)

#### *Entonces los presidentes y gobernadores buscaban ocasiones contra Daniel por parte del reino; mas no podían hallar alguna ocasión o falta, porque él*

* *Daniel* → *podían*

* *ocasiones* (בָעַ֧יִן)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Buscan ocasión contra Daniel en el reino y no hallan falta. La presión no nace de corrupción administrativa.

- *era fiel, y ningún vicio ni falta fue en él hallado*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *hallado* (לְ/הַשְׁכָּחָ֗ה): completa a *hallado* (הִשְׁתְּכַ֖חַת).

* *hallado* (יָכְלִ֣ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 6:5:7 — *Solo en la ley de su Dios*

#### *Entonces dijeron aquellos hombres: No hallaremos contra este Daniel ocasión alguna, si no la hallamos*

* *hallaremos* (אָֽמְרִ֔ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Solo hallarán ocasión en la ley de su Dios. El ataque se diseña contra su fidelidad, no contra su cargo.

- *contra él en la ley de su Dios*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 6:6:5 — *Van al rey con el decreto*

#### *Entonces estos gobernadores y presidentes se juntaron*
> Los gobernadores y sátrapas van al rey. Empieza la trama del decreto.

### Daniel 6:6:14 — *Van al rey con el decreto*

#### *juntaron delante del rey, y le dijeron así: Rey Darío, para siempre vive*

* *Darío* (אָמְרִ֣ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Se presentan juntos. La petición concertada queda en marcha.

### Daniel 6:7:1 — *Proponen decreto de treinta días*

* Actores principales: *dios* (1)

#### *Todos los presidentes del reino, magistrados, gobernadores, grandes, y capitanes, han acordado por consejo promulgar un real edicto, y confirmarlo, que cualquiera que demandare petición de cualquier dios ú hombre en el espacio de treinta días, sino de ti, oh rey, sea*

* Infinitivo[^inf] *real* (לְ/קַיָּמָ֤ה): completa a *presidentes* (אִתְיָעַ֜טוּ).

* Infinitivo[^inf] *sea* (וּ/לְ/תַקָּפָ֖ה): completa a *presidentes* (אִתְיָעַ֜טוּ).
> Proponen: quien ruegue a cualquier dios u hombre por treinta días, salvo al rey, al foso de los leones. La oración a Dios queda prohibida por ley.

- *echado*

* *dios* → *echado*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *echado en el foso de los leones*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 6:8:3 — *Piden firmar el edicto*

#### *Ahora, oh rey, confirma el edicto, y*
> Piden confirmar el edicto. Quieren firmeza de Medos y Persas.

### Daniel 6:8:5 — *Piden firmar el edicto*

* Actores principales: *Persia, la* (1)

#### *el edicto, y firma la escritura, para que no se pueda mudar, conforme a la ley de Media y de Persia, la*

* Infinitivo[^inf] *pueda* (לְ/הַשְׁנָיָ֛ה): completa a *firma* (וְ/תִרְשֻׁ֣ם).
> Que no se pueda mudar. La irrevocabilidad se pide antes de firmar.

- *cual no se revoca*

* *Persia, la* → *cual*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 6:9:6 — *Darío firma el decreto*

* Actores principales: *Darío* (1)

#### *Firmó pues el rey Darío la escritura y el edicto*

* *Darío* → *Firmó* → *el rey*
> Darío firma. El decreto queda escrito. Aquí Daniel aún no ha orado en esta escena.

### Daniel 6:10:3 — *Daniel ora hacia Jerusalén*

* Actores principales: *Daniel* (1) · *la escritura* (1)

#### *Y Daniel, cuando supo que la escritura*

* *Daniel* → *cuando*
> Daniel, sabiendo el edicto, entra a su casa, ventanas abiertas hacia Jerusalén, ora tres veces al día. No esconde la costumbre. La presión del H2 aterriza aquí.

- *estaba firmada*

* *la escritura* → *estaba*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *firmada, se entro en su casa*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *hacia Jerusalén, se hincaba de rodillas tres veces al día, y oraba, y confesaba delante de su Dios, como lo solía hacer antes*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *confesaba* (בָּרֵ֣ךְ)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *como* (וּ/מְצַלֵּ֤א)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *solía* (וּ/מוֹדֵא֙)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *antes* (עָבֵ֔ד)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 6:11:4 — *Lo hallan orando*

#### *Entonces se juntaron aquellos hombres, y*
> Lo hallan orando y rogando. Los cazadores confirman lo que diseñaron.

### Daniel 6:11:5 — *Lo hallan orando*

* Actores principales: *Daniel* (1)

#### *aquellos hombres, y hallaron a Daniel orando y rogando delante de su Dios*

* *Daniel* → *hallaron* → *a su Dios*

* *rogando* (בָּעֵ֥א)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *delante* (וּ/מִתְחַנַּ֖ן)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Delante de su Dios. La acusación tiene testigos oculares.

+ *hablaron delante del rey acerca del edicto real: ¿No has confirmado edicto que cualquiera que pidiere a cualquier dios ú hombre en el espacio de treinta días, excepto a ti, oh rey, fuera echado*

- *Se Llegaron luego, y*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 6:12:40 — *Recuerdan el decreto al rey*

* Actores principales: *los leones* (1)

#### *en el foso de los leones? Respondió el rey y dijo: Verdad es, conforme a la ley de Media y de Persia, la cual no se abroga*

* *los leones* → *Respondió* → *a la ley de*

* *ley* (וְ/אָמְרִ֥ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *abroga* (וְ/אָמַ֗ר)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Recuerdan al rey el decreto y él lo confirma: ley de Medos y Persas que no se muda. La trampa se cierra con la boca del rey.

### Daniel 6:13:2 — *Acusan a Daniel*

* Actores principales: *Daniel* (1)

#### *Entonces respondieron y dijeron delante del rey: Daniel que*

* *Daniel* → *respondieron*
> Acusan a Daniel: de los hijos del cautiverio…

### Daniel 6:13:15 — *Acusan a Daniel*

* Actores principales: *Daniel* (1)

#### *y dijeron delante del rey: Daniel que es de los hijos de la*

* *Daniel* → *es*

* *hijos* (וְ/אָמְרִין֮)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> …no hace cuenta de ti ni del edicto; tres veces al día pide sus peticiones. El cargo es oración.

- *cautividad de los os judi, no ha hecho cuenta de ti, oh rey, ni del edicto que confirmaste; antes tres veces al día hace su petición*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *petición* (בָּעֵ֖א)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 6:14:5 — *El rey se aflige por Daniel*

* Actores principales: *Daniel* (1)

#### *El rey entonces, oyendo el negocio, le peso en gran manera, y sobre Daniel puso*

* *Daniel* → *puso*

* *y* (בְּאֵ֣שׁ)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> El rey, oída la causa, se disgustó consigo mismo por Daniel.

### Daniel 6:14:11 — *El rey se aflige por Daniel*

#### *cuidado para librarlo; y hasta puestas del sol*
> Puso corazón en librarlo. Quiere salvarlo; el texto no dice aún que pueda.

### Daniel 6:14:17 — *El rey se aflige por Daniel*

* Actores principales: *sol* (1)

#### *para librarlo; y hasta puestas del sol trabajó para librarle*

* *sol* → *trabajó*

* Infinitivo[^inf] *librarle* (לְ/הַצָּלוּתֵֽ/הּ): completa a *librarle* (הֲוָ֥א).

* *librarle* (מִשְׁתַּדַּ֖ר)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Trabajó hasta la puesta del sol. El plazo del edicto pesa.

### Daniel 6:15:4 — *Insisten: la ley de Medos y Persas*

#### *Empero aquellos hombres se reunieron cerca del rey, y dijeron al rey: Sepas, oh rey, que*
> Insisten: sabe, oh rey, que la ley…

### Daniel 6:15:21 — *Insisten: la ley de Medos y Persas*

#### *es ley de Media y de Persia, que ningún decreto ú ordenanza que el rey confirmare pueda mudarse*

* Infinitivo[^inf] *mudarse* (לְ/הַשְׁנָיָֽה): completa a *mudarse* (יְהָקֵ֖ים).

* *confirmare* (וְ/אָמְרִ֣ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> …no se puede mudar. Bloquean la salida legal.

### Daniel 6:16:3 — *Echan a Daniel al foso*

* Actores principales: *Daniel* (1)

#### *Entonces el rey mandó, y trajeron a Daniel, y le*

* *Daniel* → *mandó* → *a y le*
> Mandó traer a Daniel…

### Daniel 6:16:4 — *Echan a Daniel al foso*

* Actores principales: *Daniel* (2)

#### *y trajeron a Daniel, y le echaron en el foso de los leones. Y*

* *Daniel* → *echaron*
> …y echarlo al foso. El rey habla: tu Dios, a quien continuamente sirves, él te libre. La liberación queda dicha como deseo, no como hecho aún.

- *hablando el rey*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *el rey dijo a Daniel: El Dios tuyo, a quien tú continuamente sirves, él te libre*

* *Daniel* → *dijo* → *a Dios*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *sirves* (עָנֵ֤ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *libre* (פָּֽלַֽח)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 6:17:1 — *Sellan la boca del foso*

#### *Y fue traída una piedra, y puesta sobre la puerta del foso, la cual*
> Traen una piedra sobre la boca del foso…

### Daniel 6:17:4 — *Sellan la boca del foso*

#### *traída una piedra, y puesta sobre la puerta del foso, la cual selló*
> …y la sella el rey con su anillo y el de sus príncipes. Nadie podrá mudar lo tocante a Daniel.

- *selló*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *el rey con su anillo, y con el anillo de sus príncipes, porque el acuerdo acerca de Daniel no se mudase*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

+ *traid delante de él, y se le*

### Daniel 6:18:2 — *El rey pasa la noche en ayuno*

#### *Se Fue luego el rey a su palacio, y se acosto ayuno; ni instrumentos de música fueron os*
> El rey se va a su palacio; pasa la noche en ayuno.

### Daniel 6:18:12 — *El rey pasa la noche en ayuno*

#### *fue el sueño*
> No instrumentos de música; el sueño se le fue. Quien firmó el decreto ahora no duerme.

### Daniel 6:19:4 — *Va de mañana al foso*

#### *El rey, por tanto, se levantó muy de mañana, y*
> De mañana se levanta…

### Daniel 6:19:10 — *Va de mañana al foso*

#### *muy de mañana, y fue apriesa al foso de los leones*
> …va apriesa al foso. La prisa es de esperanza, no de ejecución.

### Daniel 6:20:6 — *Llama a Daniel*

* Actores principales: *Daniel* (1)

#### *Y se llegando cerca del foso*

* Infinitivo[^inf] *cerca* (וּ/כְ/מִקְרְבֵ֣/הּ): completa a *hablando* (זְעִ֑ק).
> Llama con voz triste: Daniel, siervo del Dios viviente, ¿tu Dios te ha podido librar? La pregunta queda abierta un instante.

- *llamó a voces a Daniel con voz triste: y hablando el rey dijo a Daniel: Daniel, siervo del Dios viviente, el Dios tuyo, a quien tú continuamente sirves ¿te ha podido librar de los leones*

* *Daniel* → *llamó* → *a Dios*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *leones* (לְ/שֵׁיזָבוּתָ֖/ךְ): completa a *leones* (הַ/יְכִ֥ל).

* *rey* (עָנֵ֨ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *Daniel* (וְ/אָמַ֣ר)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *sirves* (פָּֽלַֽח)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

- *Entonces habló*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *habló Daniel con el rey: oh rey, para siempre vive*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 6:22:2 — *El ángel cerró la boca de los leones*

* Actores principales: *Dios* (1)

#### *El Dios mío envió su ángel, el cual*

* *Dios* → *envió*
> Daniel responde: mi Dios envió su ángel…

- *cerró la boca de los leones*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *la boca de los leones, para que no me hicieran mal: porque delante de él se halló en mí justicia: y aun delante de ti*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 6:22:14 — *El ángel cerró la boca de los leones*

* Actores principales: *yo* (1)

#### *en mí justicia: y aun delante de ti, oh rey, yo no he hecho lo que no debiese*

* *yo* → *debiese*
> …cerró la boca de los leones; no me han dañado, porque fui hallado inocente. Inocencia ante Dios y también ante el rey.

- *debiese*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 6:23:4 — *Lo sacan ileso*

* Actores principales: *Daniel* (3)

#### *Entonces se alegró el rey en gran manera a causa de él, y*
> El rey se alegra en gran manera…

- *mandó sacar a Daniel del foso: y*

* *Daniel* → *mandó* → *a del foso*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *sacar a Daniel del foso: y fue Daniel*

* *Daniel* → *fue*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *fue* (לְ/הַנְסָקָ֣ה): completa a *ninguna* (וְ/הֻסַּ֨ק).

- *Daniel sacado del foso, y ninguna lesión se*

* *Daniel* → *sacado*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 6:23:21 — *Lo sacan ileso*

* Actores principales: *su Dios* (1)

#### *del foso, y ninguna lesión se halló en él, porque creyó en su Dios*

* *su Dios* → *halló*
> …mandó sacar a Daniel; ningún daño se halló en él, porque creyó en su Dios. Salen ilesos. La presión del foso se cierra.

### Daniel 6:24:1 — *Echan a los acusadores*

#### *Y lo mandando el rey fueron os*
> Mandó traer a los que habían acusado a Daniel…

- *traid aquellos hombres que*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *aquellos hombres que habían*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 6:24:13 — *Echan a los acusadores*

* Actores principales: *Daniel* (1)

#### *acusado a Daniel, y fueron echados en el foso de los leones, ellos, sus hijos, y sus mujeres; y aun no*

* *Daniel* → *acusado* → *a ellos*
> …echarlos al foso, a ellos, hijos y mujeres.

+ *habían llegado*

### Daniel 6:24:28 — *Echan a los acusadores*

* Actores principales: *ellos* (1)

#### *al suelo del foso, cuando los leones se apoderaron de ellos, y quebrantaron todos sus huesos*

* *ellos* → *cuando*
> Los leones se enseñorearon de ellos antes de llegar al suelo. El mismo foso juzga a los acusadores.

### Daniel 6:25:4 — *Darío escribe a todos los pueblos*

* Actores principales: *Daniel* (1) · *Darío* (1) · *Dios* (1)

#### *Entonces el rey Darío escribió*

* *Darío* → *escribió*
> Darío escribe a todos los pueblos: el Dios de Daniel es Dios viviente, permanente; libra y salva. El decreto de oración forzada queda respondido por un decreto de reconocimiento.

- *a todos los pueblos, naciones, y lenguas, que habitan en toda la tierra: Paz os sea multiplicada*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *tierra* (דארין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *Paz* (דָיְרִ֥ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

- *De parte mía*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *es puesta ordenanza, que en todo el señorío de mi reino todos teman y tiemblen de la presencia del Dios de Daniel: porque él*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *tiemblen* (זאעין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *presencia* (זָיְעִין֙)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *Dios* (וְ/דָ֣חֲלִ֔ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

- *puesta ordenanza, que en todo el señorío de mi reino todos teman y tiemblen de la presencia del Dios de Daniel: porque él es el Dios viviente y permanente por todos los siglos, y su reino tal que no será deshecho, y su señorío hasta el fin*

* *Dios* → *es*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *Que salva y libra, y hace señales y maravillas en el cielo y en la tierra; el cual libró a Daniel del poder de los leones*

* *Daniel* → *libró* → *a del poder*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *libra* (מְשֵׁיזִ֣ב)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *hace* (וּ/מַצִּ֗ל)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *señales* (וְ/עָבֵד֙)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 6:28:3 — *Daniel prospera*

* Actores principales: *Daniel* (1)

#### *Y este Daniel fue prosperado durante el reino de Darío, y durante el reino de Ciro, Persa*

* *Daniel* → *fue* → *Darío*
> Daniel prosperó en el reinado de Darío y en el de Ciro. Cierra el tramo de la corte. El siguiente H1 abre visiones.

### En síntesis

Darío pone a Daniel en alto; los rivales fabrican un decreto que prohíbe rogar a otro que al rey. Daniel ora hacia Jerusalén; lo acusan; el rey no puede mudarlo. Lo echan al foso; de mañana Daniel vive: el ángel cerró la boca de los leones. Sacan a Daniel ileso; los acusadores caen en el foso. Darío decreta que el Dios de Daniel es Dios viviente. Daniel prospera. La presión del edicto irrevocable se cierra con liberación y reconocimiento; el libro pasa a las visiones.


# DANIEL 7:1–12:13 DIOS MUESTRA A DANIEL EL CURSO DE LOS REINOS HASTA EL FIN SELLADO

## Daniel 7:1–28 Cuatro bestias; dominio al hijo de hombre / santos

### Daniel 7:1:8 — *Visión en el primer año de Belsasar*

* Actores principales: *Daniel* (1)

#### *En el primer año de Belsasar rey de Babel, vio Daniel un sueño y visiones de su cabeza en su cama: luego*

* *Daniel* → *vio*
> Primer año de Belsasar: Daniel ve un sueño y visiones. El segundo H1 abre con visión, no con banquete de corte.

### Daniel 7:1:15 — *Visión en el primer año de Belsasar*

* Actores principales: *Daniel* (1)

#### *Daniel un sueño y visiones de su cabeza en su cama: luego escribió el sueño, y*

* *Daniel* → *escribió*
> Escribió la visión. El texto se fija como testimonio escrito.

### Daniel 7:1:18 — *Visión en el primer año de Belsasar*

#### *el sueño, y notó la suma de los negocios*
> Cuenta la suma de los hechos. Empieza a narrar lo visto.

### Daniel 7:2:5 — *Cuatro vientos agitan el mar*

* Actores principales: *yo* (1)

#### *Habló Daniel y dijo: Veía yo en mi visión de noche, y he aquí que los cuatro vientos del cielo combatían en la gran mar*

* *yo* → *Habló* → *Daniel*

* *Habló* (עָנֵ֤ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *dijo* (וְ/אָמַ֔ר)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *Veía* (חָזֵ֥ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *combatían* (מְגִיחָ֖ן)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Cuatro vientos del cielo agitaban el gran mar. El escenario de las bestias se abre.

+ *Y cuatro bestias grandes, diferentes la una de la otra, subían de la mar*

* *diferentes* (סָלְקָ֖ן)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *mar* (שָׁנְיָ֖ן)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 7:4:8 — *Primera como león con alas*

* Actores principales: *Yo* (2)

#### *La primera era como león, y*
> Primera como león con alas de águila. La serie de reinos empieza en figura animal.

- *tenía alas de águila. Yo*

* *Yo* → *tenía*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *alas de águila. Yo estaba*

* *Yo* → *estaba*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *estaba* (חָזֵ֣ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 7:4:19 — *Primera como león con alas*

#### *mirando hasta tanto que sus alas fueron arrancadas, y*
> Le fueron quitadas las alas; levantada como hombre; corazón de hombre. Mudanza dentro de la primera bestia.

- *fue quitada de la tierra; y se puso enhiesta sobre los pies a manera de hombre, y le fue dado corazón de hombre*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

+ *lado*

### Daniel 7:5:9 — *Segunda como oso*

#### *Y he aquí otra segunda bestia, semejante a un oso, la cual se puso al un*

* *cual* (דָּמְיָ֣ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Segunda como oso. Se alza de un lado.

### Daniel 7:5:20 — *Segunda como oso*

#### *y tenía en su boca tres costillas entre sus dientes; y le fue dicho así: te Levanta, traga carne mucha*

* *mucha* (אָמְרִ֣ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Tres costillas en la boca; le dicen: levántate, devora mucha carne. Orden de voracidad.

### Daniel 7:6:4 — *Tercera como leopardo*

* Actores principales: *yo* (1)

#### *Después de esto yo miraba, y he aquí otra, semejante a un tigre, y*

* *yo* → *miraba* → *a un tigre, y*
> Tercera como leopardo con cuatro alas y cuatro cabezas.

### Daniel 7:6:20 — *Tercera como leopardo*

#### *y he aquí otra, semejante a un tigre, y tenía cuatro alas de ave en sus espaldas: tenía también esta bestia cuatro cabezas; y le fue dada potestad*

* *ave* (חָזֵ֣ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Le fue dado dominio. El don de señorío queda dicho sin nombrar aún pueblos.

### Daniel 7:7:4 — *Cuarta terrible con diez cuernos*

* Actores principales: *yo* (3) · *ellos* (1)

#### *Después de esto miraba yo en las visiones de la noche, y he aquí la cuarta bestia, espantosa y terrible, y en grande manera fuerte; la cual tenía unos dientes grandes de hierro: devoraba y desmenuzaba, y las sobras hollaba con sus pies: y era muy diferente de todas las bestias que habían sido antes de ella, y tenía diez cuernos*

* *yo* → *miraba*

* *miraba* (חָזֵ֨ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *diez* (אָֽכְלָ֣ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *cuernos* (רָפְסָ֑ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Cuarta terrible, fuerte, con dientes de hierro y diez cuernos. Distinta de todas. La presión del capítulo se concentra aquí.

- *Estando yo*

* *yo* → *Estando*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *Estando* (מִשְׂתַּכַּ֨ל)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

- *yo contemplando los cuernos, he aquí que otro cuerno pequeño*

* *yo* → *contemplando*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *los cuernos, he aquí que otro cuerno pequeño subía entre ellos, y delante de él fueron arrancados tres cuernos de los primeros; y he aquí, en este cuerno*

* *ellos* → *subía*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 7:8:16 — *Otro cuerno pequeño*

* Actores principales: *ellos* (1)

#### *entre ellos, y delante de él fueron arrancados tres cuernos de los primeros; y he aquí, en este cuerno había ojos como ojos de hombre, y una boca que hablaba grandezas*

* *ellos* → *había*

* *grandezas* (מְמַלִּ֥ל)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Otro cuerno pequeño; tres caen delante de él; ojos como de hombre y boca que habla grandezas. El adversario se perfila.

### Daniel 7:9:2 — *Tronos y el Anciano de días*

* Actores principales: *cuyo* (1)

#### *Estuve mirando hasta que fueron puestas sillas: y un Anciano de días se*

* *Estuve* (חָזֵ֣ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Tronos puestos; el Anciano de días se sienta. La escena pasa del mar al juicio.

- *sentó*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *cuyo vestido era blanco como la nieve, y el pelo de su cabeza como lana limpia; su silla llama de fuego, sus ruedas fuego ardiente*

* *cuyo* → *vestido*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *ardiente* (דָּלִֽק)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

+ *servían*

### Daniel 7:10:11 — *Libros abiertos; juicio*

* Actores principales: *fuego* (1)

#### *Un río de fuego procedía y*

* *fuego* → *procedía*

* *procedía* (נָגֵ֤ד)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Río de fuego; millares le sirven.

### Daniel 7:10:16 — *Libros abiertos; juicio*

#### *y salía de delante de él: millares de millares le*

* *salía* (וְ/נָפֵק֙)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> El juicio se sienta…

### Daniel 7:10:20 — *Libros abiertos; juicio*

* Actores principales: *millones* (1)

#### *y millones de millones asistían delante de él: el Juez se sentó, y los libros se abrieron*

* *millones* → *asistían*
> …los libros se abren. El tribunal del cielo queda montado.

### Daniel 7:11:2 — *La bestia es muerta*

* Actores principales: *el cuerno* (1) · *Yo* (1)

#### *Yo entonces miraba a causa de la voz de las grandes palabras que*

* *Yo* → *miraba* → *a causa de la*

* *Yo* (חָזֵ֣ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> La bestia fue muerta…

- *hablaba el cuerno*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *el cuerno; miraba hasta tanto que*

* *el cuerno* → *miraba*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *miraba* (מְמַלֱּלָ֑ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *hasta* (חָזֵ֣ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

- *hasta tanto que mataron la bestia, y su cuerpo*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 7:11:19 — *La bestia es muerta*

* Actores principales: *cuerpo* (1) · *también* (1)

#### *la bestia, y su cuerpo fue deshecho, y entregado para ser quemado en el fuego*

* *cuerpo* → *fue*
> …su cuerpo destruido y entregado a arder. Las otras bestias: les fue quitado el dominio, vida prolongada por tiempo.

- *Habían también*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *también quitado a las otras bestias su señorío, y les había sido dada prolongación de vida hasta cierto tiempo*

* *también* → *quitado* → *a las otras bestias*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

+ *venía, y llegó*

* *venía* (חָזֵ֤ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 7:13:2 — *Como un hijo de hombre*

* Actores principales: *yo* (1)

#### *Miraba yo en la visión de la noche, y he aquí en las nubes del cielo como un hijo de hombre que*

* *yo* → *Miraba*
> Con las nubes del cielo, como un hijo de hombre…

### Daniel 7:13:18 — *Como un hijo de hombre*

#### *hasta el Anciano de días, y le hicieron llegar delante de él*

* *delante* (אָתֵ֣ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> …venía, y llegó hasta el Anciano de días. Contraste con las bestias: figura humana delante del trono.

### Daniel 7:14:2 — *Se le da dominio eterno*

#### *Y le fue*
> Y le fue… Stub: la dádiva se completa en las líneas siguientes.

### Daniel 7:14:11 — *Se le da señorío, gloria y reino*

#### *dado señorío, y gloria, y reino; y todos los pueblos, naciones y lenguas le*
> Señorío, gloria y reino; pueblos le sirven.

### Daniel 7:14:17 — *Señorío eterno; reino incorruptible*

* Actores principales: *espíritu* (1) · *yo* (1)

#### *señorío, y gloria, y reino; y todos los pueblos, naciones y lenguas le sirvieron; su señorío, señorío eterno, que no*
> Su señorío eterno; su reino no será corrupto. La punta positiva del H2 aterriza aquí.

- *será transitorio, y su reino que no se corromperá*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *Mi espíritu fue*

* *espíritu* → *fue*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *turbado, yo Daniel, en medio de mi cuerpo, y las visiones de mi cabeza me asombraron*

* *yo* → *turbado* → *Daniel*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 7:16:1 — *Pide la interpretación*

#### *Me Llegue a uno de los que asistían, y le pregunte la*

* *pregunte* (קָ֣אֲמַיָּ֔/א)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Se acerca a uno de los que asistían…

### Daniel 7:16:7 — *Pide la interpretación*

#### *y le pregunte la verdad*
> …pide la verdad de todo esto. Daniel no interpreta solo; pregunta.

- *verdad*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *acerca de todo esto. Y me hablo, y me declaro la interpretación de las cosas*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 7:17:9 — *Cuatro bestias: cuatro reyes*

#### *Estas grandes bestias, las cuales son cuatro, cuatro reyes son, que se levantarán en la tierra*
> Cuatro bestias: cuatro reyes que se levantarán de la tierra. Clave breve.

### Daniel 7:18:1 — *Los santos poseerán el reino*

#### *Después tomarán el reino los santos del Altísimo, y*
> Los santos del Altísimo tomarán el reino y lo poseerán hasta el siglo. El destino del reino se nombra antes del detalle de la cuarta.

- *poseerán el reino hasta el siglo*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 7:19:2 — *Quiere saber de la cuarta bestia*

* Actores principales: *diferente* (1)

#### *Entonces tuve deseo de saber la verdad acerca de la cuarta bestia, que tan diferente*

* Infinitivo[^inf] *saber* (לְ/יַצָּבָ֔א): completa a *tuve* (צְבִית֙).
> Quiere la verdad de la cuarta bestia. La curiosidad se fija en lo terrible.

- *era de todas las otras, espantosa en gran manera*

* *diferente* → *era*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *gran* (שָֽׁנְיָ֖ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *pies* (רָֽפְסָֽה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 7:20:8 — *Asimismo acerca diez cuernos tenía*

#### *Asimismo acerca de los diez cuernos que tenía en su cabeza, y del otro que*
> Asimismo de los diez cuernos…

### Daniel 7:20:9 — *Cabeza otro había*

#### *en su cabeza, y del otro que había*
> …y del otro que hablaba grandezas. Stub/recorte sobre el cuerno.

- *subido, de delante del cual habían caído tres: y este mismo cuerno tenía ojos, y boca que hablaba grandezas, y su parecer mayor que el de sus compañeros*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *el* (מְמַלִּ֣ל)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 7:21:2 — *El cuerno hace guerra a los santos*

* Actores principales: *yo* (1)

#### *Y veía yo que este cuerno hacía guerra contra los santos, y los vencía*

* *yo* → *veía*

* *veía* (חָזֵ֣ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *guerra* (עָבְדָ֥ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *vencía* (וְ/יָכְלָ֖ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Veía que este cuerno hacía guerra contra los santos y los vencía. La presión sobre los santos queda vista.

### Daniel 7:22:3 — *Viene el juicio; los santos poseen*

#### *Hasta tanto que vino el Anciano de días, y se*
> Hasta que vino el Anciano de días…

### Daniel 7:22:7 — *Viene el juicio; los santos poseen*

#### *el Anciano de días, y se dió el juicio a los santos del Altísimo; y*
> …y se dio el juicio a los santos…

### Daniel 7:22:13 — *Viene el juicio; los santos poseen*

#### *vino el tiempo, y los santos poseyeron el reino*
> …y llegó el tiempo, y los santos poseyeron el reino. Guerra, juicio, posesión: en ese orden.

### Daniel 7:23:2 — *La cuarta bestia: cuarto reino*

#### *Dijo así: La cuarta bestia*
> La cuarta: cuarto reino en la tierra, diverso de todos…

+ *será un cuarto reino en la tierra, el cual será más grande que todos los otros reinos, y a toda la tierra devorará, y la hollará, y la*

### Daniel 7:23:19 — *La cuarta bestia: cuarto reino*

#### *despedazará*
> …despedazará. Stub del verbo de destrucción.

+ *Y los diez cuernos significan que de aquel reino se levantarán diez reyes; y tras ellos se levantará otro, el cual será mayor que los primeros, y a tres reyes*

### Daniel 7:24:17 — *Diez cuernos: diez reyes*

#### *derribará*
> Diez cuernos: diez reyes; otro después; derribará a tres.

### Daniel 7:25:5 — *Hablará contra el Altísimo*

* Actores principales: *el Altísimo* (1)

#### *Y hablará palabras contra el Altísimo, y a los santos del Altísimo*

* *el Altísimo* → *hablará* → *a los santos del*
> Hablará palabras contra el Altísimo; quebrantará santos…

### Daniel 7:25:8 — *Hablará contra el Altísimo*

* Actores principales: *el Altísimo* (1)

#### *palabras contra el Altísimo, y a los santos del Altísimo quebrantará, y*

* *el Altísimo* → *quebrantará*
> …pensará mudar tiempos y ley; entregados en su mano hasta tiempo, tiempos y la mitad. El plazo queda dicho.

- *pensará*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *pensará en mudar los tiempos y la ley: y entregados serán en su mano hasta tiempo, y tiempos, y el medio de un tiempo*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *entregados* (לְ/הַשְׁנָיָה֙): completa a *medio* (וְ/יִתְיַהֲב֣וּן).

### Daniel 7:26:2 — *Se quitará el dominio*

#### *Empero se sentará el juez, y le quitaran su señorío, para que sea*
> El juicio se sentará…

### Daniel 7:26:4 — *Se quitará el dominio*

#### *el juez, y le quitaran su señorío, para que sea destruido y arruinado hasta el extremo*

* Infinitivo[^inf] *destruido* (לְ/הַשְׁמָדָ֥ה): completa a *quitaran* (יְהַעְדּ֔וֹן).

* Infinitivo[^inf] *arruinado* (וּ/לְ/הוֹבָדָ֖ה): completa a *quitaran* (יְהַעְדּ֔וֹן).
> …le quitarán el dominio para destruirlo. El cuerno no permanece.

### Daniel 7:27:9 — *El reino a los santos del Altísimo*

#### *Y que el reino, y el señorío, y la majestad de los reinos debajo de todo el cielo, sea dado al pueblo de los santos del Altísimo; cuyo reino*
> El reino y el señorío bajo todo el cielo será dado al pueblo de los santos del Altísimo. Reino eterno; todos le servirán. Cierra la interpretación.

- *es reino eterno, y todos los os señori le servirán y obedecerán*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 7:28:10 — *Fin del asunto; Daniel lo guarda*

* Actores principales: *Daniel* (1) · *Yo* (1)

#### *Hasta aquí fue el fin de la plática. Yo Daniel, mucho me*

* *Yo* → *fue* → *Daniel*
> Fin del asunto. Daniel se espantó…

- *turbaron mis pensamientos, y mi rostro se me*

* *Daniel* → *turbaron*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 7:28:16 — *Fin del asunto; Daniel lo guarda*

#### *mis pensamientos, y mi rostro se me mudó: mas guardé en mi corazón el negocio*
> …guardó la palabra en su corazón. La visión no se disuelve en explicación total; él la guarda. El siguiente H2 abrirá otra visión.

### En síntesis

Daniel ve cuatro bestias del mar; la cuarta terrible con diez cuernos y un cuerno que habla grandezas y hace guerra a los santos. El Anciano de días juzga; la bestia muere; como un hijo de hombre recibe señorío eterno. La interpretación: cuatro reyes; los santos poseerán el reino; el cuerno tendrá tiempo limitado y le quitarán el dominio. Daniel guarda el asunto. La presión de la cuarta bestia se responde con juicio y reino a los santos; el libro aún no detalla el carnero y el macho cabrío.


## Daniel 8:1–27 Carnero, macho cabrío y cuerno; visión para muchos días

### Daniel 8:1:7 — *Visión en el tercer año de Belsasar*

* Actores principales: *yo* (2) · *Belsasar* (1) · *Daniel* (1)

#### *En el año tercero del reino del rey Belsasar, me apareció una visión a mí, Daniel, después de aquella que me*

* *Belsasar* → *apareció* → *a Daniel*
> Tercer año de Belsasar: otra visión después de la primera. El relato se abre en tiempo de Belsasar otra vez.

- *había aparecido antes*

* *Daniel* → *había*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *Vi en visión*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *cuando vi*

* *yo* → *cuando*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *cuando* (בִּ/רְאֹתִ֔/י): completa a *aconteció* (וַ/יְהִי֙).

- *vi, que yo estaba en Susán, que*

* *yo* → *estaba*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *en Susán, que es cabecera del reino en la provincia de Persia;) vi pues en visión, estando junto al río Ulai*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 8:3:1 — *Carnero con dos cuernos*

#### *Y alcé mis ojos, y miré, y he aquí un carnero que estaba delante del río, el cual*
> Carnero junto al río, con dos cuernos; el uno más alto, el último. Empieza la figura de los reinos.

- *delante del río, el cual tenía dos cuernos: y aunque eran altos, el uno era más alto que el otro; y el más alto subió a la postre*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *era* (עֹמֵ֛ד)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *postre* (עֹלָ֖ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 8:4:1 — *Vi carnero hería cuernos poniente*

* Actores principales: *bestia* (1)

#### *Vi que el carnero hería con los cuernos al poniente, al norte, y al*

* *hería* (מְנַגֵּחַ֩)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> El carnero hería hacia poniente, norte y sur; ninguna bestia le resistía. Dominio amplio antes del cabrío.

- *mediodía, y que ninguna bestia*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *y que ninguna bestia podía parar delante de él, ni*

* *bestia* → *podía*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *parar delante de él, ni había quien escapase de su mano: y hacía conforme a su voluntad, y se engrandecia*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *quien* (מַצִּ֖יל)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 8:5:2 — *Macho cabrío del occidente*

* Actores principales: *yo* (1)

#### *Y estando yo considerando, he aquí un macho de cabrío venía de la parte del poniente sobre la haz de toda la tierra, el cual no tocaba la tierra: y tenía aquel macho de cabrío un cuerno notable entre sus ojos*

* *yo* → *estando*

* *aquí* (מֵבִ֗ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *cuerno* (בָּ֤א)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *ojos* (נוֹגֵ֖עַ)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Macho cabrío del occidente sobre la faz de toda la tierra, sin tocar el suelo; cuerno notable entre los ojos. Velocidad y un cuerno primero.

### Daniel 8:6:1 — *Vino hasta carnero*

* Actores principales: *yo* (1)

#### *Y vino hasta el carnero que*
> Vino hasta el carnero. El choque se anuncia.

- *tenía los dos cuernos, al cual*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *los dos cuernos, al cual había yo visto que estaba delante del río, y corrió contra él con la ira de su fortaleza*

* *yo* → *había*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *delante* (עֹמֵ֖ד)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 8:7:1 — *Vilo llegó junto carnero*

#### *Y vilo que llegó junto al carnero, y se*

* *llegó* (מַגִּ֣יעַ)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Llegó junto al carnero…

### Daniel 8:7:5 — *Junto carnero levantó contra él*

#### *junto al carnero, y se levantó contra él, e lo hirio, y*
> …se levantó contra él…

### Daniel 8:7:7 — *Contra él e hirio quebró*

#### *contra él, e lo hirio, y quebró sus dos cuernos, porque en el carnero no*
> …hirió y quebró los dos cuernos; lo derribó y lo holló. El carnero cae.

- *sus dos cuernos, porque en el carnero no había fuerzas para parar delante de él: lo derribo por tanto en tierra, y lo hollo; ni*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *hubo quien librase al carnero de su mano*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *mano* (לַ/עֲמֹ֣ד): completa a *mano* (הָיָ֥ה).

* *mano* (מַצִּ֛יל)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 8:8:3 — *Cuatro cuernos en su lugar*

* Actores principales: *cuerno* (1)

#### *Y se engrandeció en gran manera el macho de cabrío; y*
> Cuando se engrandeció, el cuerno grande se quebró; subieron cuatro en su lugar, hacia los cuatro vientos. Fragmentación del poder.

- *estando en su mayor fuerza, aquel gran cuerno*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *fuerza* (וּ/כְ/עָצְמ֗/וֹ): completa a *aquel* (נִשְׁבְּרָה֙).

- *en su mayor fuerza, aquel gran cuerno fue quebrado, y en su lugar subieron otros cuatro maravillosos hacia los cuatro vientos del cielo*

* *cuerno* → *fue*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 8:9:4 — *Cuerno pequeño hacia la tierra hermosa*

* Actores principales: *ellos* (1)

#### *Y del uno de ellos salió un cuerno pequeño, el cual*

* *ellos* → *salió*
> De uno de ellos salió un cuerno pequeño hacia el sur, el oriente y la tierra hermosa. Nueva amenaza sobre lo santo.

- *creció mucho al mediodía*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 8:10:1 — *Engrandece hasta el ejército del cielo*

* Actores principales: *las estrellas* (1)

#### *Y se engrandeció hasta el ejército del cielo; y parte del ejército y de las estrellas*
> Se engrandeció hasta el ejército del cielo; echó a tierra parte del ejército y de las estrellas. La agresión sube al cielo figurado.

- *echó por tierra*

* *las estrellas* → *echó*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *por tierra, y las holló*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 8:11:4 — *Quita el continuo sacrificio*

#### *Aun contra el príncipe de la fortaleza se engrandeció, y por él*
> Se engrandeció contra el príncipe del ejército…

- *fue*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 8:11:7 — *Quita el continuo sacrificio*

#### *quitado el continuo sacrificio, y el lugar de su santuario*
> …le quitó el continuo…

### Daniel 8:11:9 — *Quita el continuo sacrificio*

* Actores principales: *santuario* (1)

#### *el continuo sacrificio, y el lugar de su santuario fue echado por tierra*

* *santuario* → *fue*
> …y el lugar de su santuario fue echado por tierra. Continuo y santuario bajo el cuerno.

+ *echó*

### Daniel 8:12:2 — *Ejército*

#### *Y el ejército le fue*
> Ejército… Stub breve sobre el ejército dado contra el continuo.

- *entregado a causa de la prevaricación sobre el continuo sacrificio: y*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 8:12:10 — *Tierra verdad e hizo cuanto*

* Actores principales: *tierra la* (1)

#### *por tierra la verdad, e hizo cuanto quiso, y le sucedió prósperamente*

* *tierra la* → *verdad*
> Echó la verdad por tierra; hizo cuanto quiso. La presión cultual y de verdad queda dicha.

### Daniel 8:13:1 — *¿Hasta cuándo la visión?*

#### *Y oí un santo que hablaba; y otro de los santos*
> Oí un santo que hablaba…

### Daniel 8:13:5 — *¿Hasta cuándo la visión?*

* Actores principales: *los santos* (1)

#### *y otro de los santos dijo a aquél que hablaba: ¿Hasta cuándo durará la visión del continuo sacrificio, y la prevaricación asoladora que pone el santuario y el ejército para ser hollados*

* *los santos* → *dijo* → *a aquél que hablaba*

* Infinitivo[^inf] *ser* (תֵּ֛ת): completa a *Hasta* (וַ/יֹּאמֶר֩).

* *hablaba* (מְדַבֵּ֑ר)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *continuo* (הַֽ/מְדַבֵּ֗ר)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *ejército* (שֹׁמֵ֔ם)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> ¿Hasta cuándo la visión del continuo y de la desolación? La pregunta de plazo abre el H2 hacia el tiempo.

### Daniel 8:14:1 — *Dos mil trescientas tardes y mañanas*

#### *Y él me dijo: Hasta dos mil y trescientos días de tarde y mañana; y el santuario*
> Hasta dos mil trescientas tardes y mañanas…

### Daniel 8:14:9 — *Dos mil trescientas tardes y mañanas*

* Actores principales: *el santuario* (1) · *yo* (1)

#### *Hasta dos mil y trescientos días de tarde y mañana; y el santuario será purificado*

* *el santuario* → *será*
> …entonces el santuario será justificado. Hay término; el texto no detalla aquí el calendario.

- *Y acaeció que*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *que estando yo Daniel considerando la visión, y buscando su inteligencia*

* *yo* → *estando* → *Daniel*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *estando* (בִּ/רְאֹתִ֛/י): completa a *buscando* (וָ/אֲבַקְשָׁ֣/ה).

* *como* (עֹמֵ֥ד)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 8:16:1 — *Gabriel, hazle entender*

#### *Y oí una voz de hombre entre las riberas de Ulai, que gritó y*
> Voz de hombre entre Ulai: Gabriel, haz entender a este la visión. El intérprete se nombra.

- *dijo*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *dijo*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *dijo: Gabriel, enseña la visión a éste*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 8:17:1 — *Entiende: al tiempo se cumplirá*

* Actores principales: *yo* (2)

#### *Vino luego cerca de donde yo*

* *yo* → *Vino*

* Infinitivo[^inf] *donde* (וּ/בְ/בֹא֣/וֹ): completa a *Vino* (וַ/יָּבֹא֙).
> Gabriel se acerca; Daniel se espanta…

- *estaba; y con su venida me asombré*

* *yo* → *estaba*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 8:17:6 — *Entiende: al tiempo se cumplirá*

#### *y con su venida me asombré, y caí sobre mi rostro. Empero él me dijo*
> …cae sobre su rostro…

- *dijo*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 8:17:11 — *Entiende: al tiempo se cumplirá la visión*

* Actores principales: *caí* (1)

#### *dijo: Entiende, hijo del hombre, porque al tiempo se cumplirá la visión*
> Entiende, hijo de hombre: la visión es para el tiempo del fin. Mandato + horizonte. Aquí aterriza la promoción de Step 0 (*Entiende*).

- *Y estando él*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *él hablando conmigo, caí*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *hablando* (וּ/בְ/דַבְּר֣/וֹ): completa a *hizo* (וַ/יִּ֨גַּע).

- *conmigo, caí dormido en tierra sobre mi rostro: y él me tocó, e me hizo estar en pie*

* *caí* → *dormido*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 8:19:1 — *Te enseñaré lo del fin de la ira*

* Actores principales: *yo* (1)

#### *Y dijo: He aquí yo te enseñaré lo que ha de venir en el fin de la ira: porque al tiempo se cumplirá*

* *tiempo* (מוֹדִֽיעֲ/ךָ֔)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> He aquí yo te enseñaré lo que ha de venir al fin de la ira. Gabriel toma la enseñanza; la visión mira al fin señalado.

- *dijo: He aquí yo te enseñaré lo que ha de venir en el fin de la ira: porque al tiempo se cumplirá*

* *yo* → *dijo* → *al tiempo se cumplirá*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 8:20:3 — *Carnero: Media y Persia*

#### *Aquel carnero que viste, que tenía cuernos, son los reyes de Media y de Persia*
> El carnero: los reyes de Media y Persia. Primera clave explícita de reinos.

+ *Y el macho cabrío es el rey de Javán: y el cuerno grande que tenía entre sus ojos es el rey primero*

- *Y que fue*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 8:22:8 — *Quebrado sucedieron cuatro lugar significa*

* Actores principales: *est* (1)

#### *quebrado y sucedieron cuatro en su lugar, significa que cuatro reinos sucederán de la nación, mas no en la fortaleza de él*
> El quebrado y los cuatro: cuatro reinos de la nación, pero no con su fuerza. Sucesión sin igualar al primero.

- *Y al cabo del imperio de os est, cuando se cumplirán los prevaricadores, se levantara un rey altivo de rostro*

* *est* → *cuando*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *est* (כְּ/הָתֵ֖ם): completa a *rey* (יַעֲמֹ֛ד).

* *cuando* (הַ/פֹּשְׁעִ֑ים)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *entendido* (וּ/מֵבִ֥ין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 8:24:1 — *Poder fortalecerá no fuerza suya*

#### *Y su poder se fortalecerá, mas no con fuerza suya; y destruirá maravillosamente, y*

* *destruirá* (וְ/נִפְלָא֥וֹת)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Su poder se fortalecerá…

### Daniel 8:24:6 — *No fuerza suya*

#### *mas no con fuerza suya; y destruirá maravillosamente, y prosperará; y*
> …mas no con fuerza suya…

- *hará*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *hará*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 8:24:9 — *Hará arbitrariamente destruirá fuertes pueblo*

#### *hará arbitrariamente, y destruirá fuertes y al pueblo de los santos*
> …hará arbitrariamente; destruirá fuertes y al pueblo de los santos. El cuerno actúa con destrucción.

### Daniel 8:25:3 — *Será quebrantado, no por mano*

#### *Y con su sagacidad*
> Con su sagacidad hará prosperar el engaño…

- *hará prosperar el engaño en su mano; y en su corazón se*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *prosperar el engaño en su mano; y en su corazón se engrandecerá, y con paz destruirá a muchos: y contra el príncipe de los príncipes se*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 8:25:14 — *Será quebrantado, no por mano*

#### *y con paz destruirá a muchos: y contra el príncipe de los príncipes se levantará; mas sin mano*
> …en su corazón se engrandecerá…

### Daniel 8:25:17 — *Será quebrantado, no por mano*

* Actores principales: *mano* (1)

#### *mas sin mano será quebrantado*

* *mano* → *será*
> …será quebrantado, mas no por mano. Caída sin mano humana nombrada. Ecos de la piedra de ch. 2.

### Daniel 8:26:5 — *Cierra la visión; es para muchos días*

* Actores principales: *dicha* (1)

#### *Y la visión de la tarde y la mañana que está dicha, es verdadera: y tú guarda la visión, porque*

* *dicha* → *es* → *tú*
> La visión de las tardes y mañanas es verdadera…

### Daniel 8:26:9 — *Cierra la visión; es para muchos días*

#### *verdadera: y tú guarda la visión, porque es para muchos días*
> …tú cierra la visión, porque es para muchos días. Sellado / cierre: no es para cumplimiento inmediato en la corte de Belsasar.

### Daniel 8:27:3 — *Daniel enferma; asombrado*

* Actores principales: *yo* (1)

#### *Y yo Daniel fuí quebrantado, y estuve enfermo algunos días: y*

* *yo* → *quebrantado*
> Yo Daniel fui enfermo algunos días…

### Daniel 8:27:4 — *Daniel enferma; asombrado*

#### *y estuve enfermo algunos días: y cuando convalecí, hice el negocio del rey; mas*
> …después me levanté y hice el negocio del rey…

- *convalecí, hice el negocio del rey; mas estaba*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *espantado acerca de la visión*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 8:27:11 — *Daniel enferma; asombrado*

#### *acerca de la visión, y no había quien la entendiese*

* *entendiese* (מֵבִֽין)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> …estaba asombrado de la visión, y no había quien la declarase. Cierra con cuerpo enfermo y asombro; el negocio del rey sigue. El siguiente H2 abrirá oración y semanas.

### En síntesis

Daniel ve el carnero (Media y Persia) derribado por el macho cabrío; cuatro cuernos suceden al grande; de uno sale un cuerno que quita el continuo y echa verdad por tierra. Un santo pregunta hasta cuándo; se dan dos mil trescientas tardes y mañanas. Gabriel manda entender: visión para el fin; el cuerno será quebrantado no por mano; Daniel debe cerrar la visión, para muchos días. Enferma y asombra, y vuelve al negocio del rey. La presión del santuario desolado queda con plazo y sello; el libro aún no llega a las setenta semanas.


## Daniel 9:1–27 Oración de Daniel; setenta semanas determinadas

### Daniel 9:1:9 — *Primer año de Darío*

* Actores principales: *los caldeos* (1)

#### *En el año primero de Darío hijo de Assuero, de la nación de los medos, el cual fue puesto por rey sobre el reino de los caldeos*

* *los caldeos* → *fue*
> Primer año de Darío hijo de Asuero, de la nación de los medos. Nueva fecha bajo Media. Daniel aún no abre los libros.

### Daniel 9:2:6 — *Entiende los setenta años*

* Actores principales: *yo* (1)

#### *En el año primero de su reino, yo Daniel miré atentamente en los libros el número de los años, del cual habló Jehová al profeta Jeremías, que*

* *yo* → *habló* → *al profeta Jeremías, que*

* Infinitivo[^inf] *reino* (לְ/מָלְכ֔/וֹ): completa a *miré* (בִּינֹ֖תִי).
> Entendió por los libros el número de los años de la palabra de Jehová a Jeremías: setenta años sobre las desolaciones de Jerusalén. La oración nace de esa comprensión.

- *Jehová al profeta Jeremías, que había de concluir la asolación de Jerusalén en setenta años*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *concluir* (לְ/מַלֹּ֛אות): completa a *cual* (הָיָ֤ה).

### Daniel 9:3:1 — *Daniel se pone a orar*

#### *Y volví mi rostro al Señor Dios, le buscando en oración y ruego, en ayuno, y cilicio, y ceniza*

* Infinitivo[^inf] *ayuno* (לְ/בַקֵּ֥שׁ): completa a *Dios* (וָ/אֶתְּנָ֣/ה).
> Volvió su rostro a Dios a buscar oración y ruegos con ayuno, saco y ceniza. La presión de este H2 empieza en la petición, no en la visión.

### Daniel 9:4:1 — *Confiesa: oh Señor, Dios grande*

#### *Y oré a Jehová mi Dios, y confesé, y dije: Ahora Señor, Dios grande, digno de ser temido*

* *temido* (וְ/הַ/נּוֹרָ֔א)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Ora y confiesa: oh Señor, Dios grande y temible, que guarda el pacto. Empieza por quién es Dios.

- *temido*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *temido, que guardas el pacto y la misericordia con los que te aman y guardan tus mandamientos*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *guardas* (שֹׁמֵ֤ר)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *aman* (לְ/אֹהֲבָ֖י/ו)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *guardan* (וּ/לְ/שֹׁמְרֵ֥י)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

- *Hemos pecado*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *hemos hecho iniquidad*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *hemos obrado impíamente, y hemos*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 9:5:4 — *Hemos pecado*

#### *impíamente, y hemos sido rebeldes, y nos hemos*
> Hemos pecado…

### Daniel 9:5:5 — *Hemos pecado*

#### *rebeldes, y nos hemos apartado de tus mandamientos y de tus juicios*

* Infinitivo[^inf] *apartado* (וְ/ס֥וֹר): completa a *rebeldes* (וּ/מָרָ֑דְנוּ).
> …hecho iniquidad, sido impíos, rebelado. Confesión en primera persona del plural.

### Daniel 9:6:2 — *No hemos obedecido tus siervos*

* Actores principales: *nombre* (1)

#### *No hemos obedecido a tus siervos los profetas, que en tu nombre*
> No hemos obedecido a tus siervos los profetas. La desobediencia incluye el rechazo de la palabra enviada.

- *hablaron a nuestros reyes*

* *nombre* → *hablaron* → *a el pueblo*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

+ *Tuya es*

### Daniel 9:7:24 — *Señor justicia nuestra confusión rostro*

#### *Señor, la justicia, y nuestra la confusión de rostro, como en el día de hoy a todo hombre de Judá, y a los moradores de Jerusalén, y a todo Israel, a los de cerca y a los de lejos, en todas las tierras a donde los has echado a causa de su rebelión con que contra ti se rebelaron*

* *rebelaron* (וּ/לְ/יוֹשְׁבֵ֣י)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Tuya es la justicia; nuestra la confusión de rostro. Contraste entre Dios y el pueblo.

### Daniel 9:8:9 — *Jehová nuestra confusión rostro nuestros*

#### *Oh Jehová, nuestra es la confusión de rostro, de nuestros reyes, de nuestros príncipes, y de nuestros padres; porque contra ti pecamos*
> Jehová: confusión de rostro a nosotros, a nuestros reyes, príncipes y padres. La culpa se reparte por capas del pueblo.

### Daniel 9:9:6 — *Jehová nuestro Dios tener misericordia*

#### *De Jehová nuestro Dios es el tener misericordia, y el perdonar, aunque contra él nos hemos rebelado*
> De Jehová nuestro Dios son las misericordias y perdonas. Tras la confusión, la esperanza se nombra en Él.

### Daniel 9:10:2 — *No obedecimos voz Jehová nuestro*

* Actores principales: *nosotros* (1)

#### *Y no obedecimos a la voz de Jehová nuestro Dios, para andar en sus leyes, las cuales*

* Infinitivo[^inf] *andar* (לָ/לֶ֤כֶת): completa a *obedecimos* (שָׁמַ֔עְנוּ).
> No obedecimos la voz de Jehová para andar en sus leyes. La causa se repite sin suavizar.

- *puso él delante de nosotros por mano de sus siervos los profetas*

* *nosotros* → *puso*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 9:11:3 — *Toda Israel traspasó tu ley*

* Actores principales: *Israel* (1) · *nosotros* (1)

#### *Y todo Israel traspasó tu ley se*

* *Israel* → *traspasó* → *tu*
> Todo Israel traspasó tu ley. La maldición escrita en la ley de Moisés cae sobre ellos.

- *apartando para no oir tu voz: por lo cual ha*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *apartando* (וְ/ס֕וֹר): completa a *cual* (וַ/תִּתַּ֨ךְ).

* Infinitivo[^inf] *oir* (שְׁמ֣וֹעַ): completa a *cual* (וַ/תִּתַּ֨ךְ).

- *para no oir tu voz: por lo cual ha fluido sobre nosotros la maldición, y el juramento que está escrito en la ley de Moisés, siervo de Dios; porque contra él pecamos*

* *nosotros* → *fluido* → *Dios*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 9:12:1 — *Él verificado palabra*

* Actores principales: *nosotros* (1)

#### *Y él ha verificado su palabra que*
> Él ha confirmado su palabra…

- *habló sobre nosotros*

* *nosotros* → *habló*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 9:12:11 — *Sobre nosotros sobre nuestros jueces*

* Actores principales: *nosotros* (1)

#### *sobre nosotros, y sobre nuestros jueces que nos gobernaron, trayendo sobre nosotros tan grande mal; que nunca*

* *nosotros* → *gobernaron*

* Infinitivo[^inf] *grande* (לְ/הָבִ֥יא): completa a *tan* (שְׁפָט֔וּ/נוּ).

* *nosotros* (שֹֽׁפְטֵ֨י/נוּ֙)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> …traído sobre nosotros gran mal. Jerusalén bajo mal como no hubo bajo el cielo. El texto liga palabra y juicio.

+ *fue*

- *hecho debajo del cielo como el que fue hecho en Jerusalén*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 9:13:9 — *Según está escrito ley Moisés*

* Actores principales: *nosotros* (1)

#### *Según está escrito en la ley de Moisés, todo aqueste mal vino sobre nosotros: y no hemos*

* *nosotros* → *vino*
> Según está escrito en la ley de Moisés, todo este mal vino…

### Daniel 9:13:12 — *Sobre nosotros no hemos rogado*

* Actores principales: *nosotros* (1)

#### *sobre nosotros: y no hemos rogado a la faz de Jehová nuestro Dios, para convertirnos de nuestras maldades, y entender tu verdad*

* *nosotros* → *rogado* → *a Dios*

* Infinitivo[^inf] *convertirnos* (לָ/שׁוּב֙): completa a *nosotros* (חִלִּ֜ינוּ).

* Infinitivo[^inf] *entender* (וּ/לְ/הַשְׂכִּ֖יל): completa a *nosotros* (חִלִּ֜ינוּ).
> …y no rogamos delante de Jehová para convertirnos de nuestras iniquidades. Falta de ruego se suma al pecado.

### Daniel 9:14:1 — *Veló tanto Jehová sobre mal*

* Actores principales: *Dios* (1) · *nosotros* (1)

#### *Veló por tanto Jehová sobre el mal, y lo*
> Jehová veló sobre el mal y lo trajo. Justo es Jehová en todas sus obras. Daniel no disputa el juicio.

- *trajo sobre nosotros; porque justo*

* *nosotros* → *trajo*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *sobre nosotros; porque justo es Jehová nuestro Dios en todas sus obras que*

* *Dios* → *es*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *Jehová nuestro Dios en todas sus obras que hizo, porque no obedecimos a su voz*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 9:15:5 — *Sacaste a tu pueblo de Egipto*

#### *Ahora pues, Señor Dios nuestro, que sacaste tu pueblo de la tierra de Egipto con mano poderosa, y te hiciste nombre cual en este*
> Sacaste a tu pueblo de Egipto con mano fuerte; te hiciste nombre. Apela a la historia de redención.

- *día; hemos*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *hemos pecado*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *pecado, impíamente hemos hecho*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 9:16:4 — *Señor según tus justicias aparte*

#### *Oh Señor, según todas tus justicias, se aparte ahora tu ira y tu furor de sobre tu ciudad Jerusalén, tu santo monte: porque a causa de nuestros pecados, y por la maldad de nuestros padres, Jerusalén y tu pueblo dados son en oprobio a todos en derredor nuestro*
> Aparta tu ira de Jerusalén, tu santo monte. La petición se concentra en la ciudad y el monte.

### Daniel 9:17:2 — *Haz resplandecer tu rostro*

#### *Ahora pues, Dios nuestro, oye la oración de tu siervo, y sus ruegos, y haz que tu rostro resplandezca sobre tu santuario asolado*
> Oye la oración de tu siervo; haz resplandecer tu rostro sobre tu santuario asolado. Santuario en el centro del ruego.

- *asolado, por amor del Señor*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 9:18:1 — *Inclina Dios mío tu oído*

#### *Inclina, oh Dios mío, tu oído, y oye; abre tus ojos, y mira nuestros asolamientos, y la ciudad sobre la cual*
> Inclina tu oído; abre tus ojos; no por nuestras justicias, sino por tus muchas misericordias. Base del ruego: misericordia, no mérito.

- *sobre la cual es*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *llamado*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *ciudad sobre la cual es*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *es llamado*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *llamado tu nombre: porque no derramamos nuestros ruegos ante tu acatamiento confiados en nuestras justicias, sino en tus muchas miseraciones*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *muchas* (שֹֽׁמְמֹתֵ֔י/נוּ)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *miseraciones* (מַפִּילִ֤ים)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 9:19:2 — *Oye, Señor; perdona*

#### *Oye, Señor; oh Señor, perdona; presta oído, Señor, y haz; no pongas dilación, por amor de ti mismo, Dios mío: porque tu nombre es*
> Oye, Señor; perdona, Señor; presta oído y limpia; no te tardes, por amor de ti mismo. La urgencia se acumula en imperativos.

- *llamado sobre tu*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *sobre tu ciudad*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *es*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *es*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *llamado sobre tu ciudad y sobre tu pueblo*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

+ *Aun estaba hablando, y orando, y confesando mi pecado y el pecado de mi pueblo Israel, y derramaba mi ruego delante de Jehová mi Dios por el monte santo de mi Dios*

* *confesando* (מְדַבֵּר֙)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *pecado* (וּ/מִתְפַּלֵּ֔ל)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *pecado* (וּ/מִתְוַדֶּה֙)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *delante* (וּ/מַפִּ֣יל)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 9:21:8 — *Gabriel llega al tiempo de la oblación*

#### *Aun estaba hablando en oración, y aquel varón Gabriel, al cual había visto en visión al principio, volando con presteza, me tocó como a la hora del sacrificio de la tarde*

* *hablando* (מְדַבֵּ֖ר)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *tocó* (נֹגֵ֣עַ)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Aún orando, el varón Gabriel llega al tiempo de la oblación de la tarde. La respuesta corta la oración en el horario del sacrificio.

### Daniel 9:22:1 — *He salido para darte sabiduría*

#### *E me hizo entender, y*
> Habló y enseñó…

- *habló conmigo*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 9:22:4 — *He salido para darte sabiduría*

* Actores principales: *Daniel* (1)

#### *conmigo, y dijo: Daniel, ahora he*

* *Daniel* → *dijo*
> He salido para darte sabiduría y entendimiento. Gabriel declara el propósito de la visita.

- *salido para hacerte entender la interpretación*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *entender* (לְ/הַשְׂכִּילְ/ךָ֥): completa a *salido* (יָצָ֖אתִי).

### Daniel 9:23:3 — *Varón de deseos; entiende la visión*

* Actores principales: *yo* (1)

#### *Al principio de tus ruegos salió la palabra, y yo he*

* *yo* → *salió*
> Al principio de tus ruegos salió la palabra; yo vine a enseñártela, porque tú eres varón de deseos. Nota: *Entiende pues la palabra…* puede vivir aún como dependiente en Observer — oye el mandato si aparece bajo esta unidad.

- *venido para la enseñarte, porque tú eres varón de deseos. Entiende pues la palabra, y entiende la visión*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *visión* (לְ/הַגִּ֔יד): completa a *visión* (וְ/הָבֵ֖ן).

### Daniel 9:24:3 — *Setenta semanas determinadas*

* Actores principales: *dos* (1) · *santa* (1)

#### *Setenta semanas están determinadas sobre tu pueblo y sobre tu santa ciudad, para acabar la prevaricación, y concluir el pecado, y expiar la iniquidad; y para traer la justicia de los siglos, y sellar la visión y la profecía, y ungir al Santo de los santos*

* *santa* → *ciudad* → *al Santo de los*

* Infinitivo[^inf] *santos* (וְ/לִ/מְשֹׁ֖חַ): completa a *determinadas* (נֶחְתַּ֥ךְ).
> Setenta semanas determinadas sobre tu pueblo y tu santa ciudad: acabar la prevaricación, sellar la visión, ungir al Santo de los santos. El plazo grande se nombra. Aquí aterriza la respuesta a la oración.

- *Sepas pues y*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *pues y entiendas*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *restaurar* (לְ/הָשִׁיב֙): completa a *entiendas* (וְ/תַשְׂכֵּ֜ל).

* Infinitivo[^inf] *edificar* (וְ/לִ/בְנ֤וֹת): completa a *entiendas* (וְ/תַשְׂכֵּ֜ל).

- *que desde la salida de la palabra para restaurar y edificar a Jerusalén hasta el Mesías Príncipe, habrá siete semanas, y sesenta y dos semanas; se*

* *dos* → *semanas*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *se tornara a edificar la plaza y el muro en tiempos angustiosos*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 9:26:5 — *Después de las sesenta y dos*

#### *Y después de las sesenta y dos semanas se quitará la vida al Mesías, y no por sí: y el pueblo de un príncipe que ha de venir, destruirá a la*
> Después de las sesenta y dos semanas se quitará la vida al Mesías…

### Daniel 9:26:11 — *Después de las sesenta y dos*

* Actores principales: *el pueblo* (1)

#### *la vida al Mesías, y no por sí: y el pueblo de un príncipe que ha de venir, destruirá a la ciudad y el santuario; con inundación será el fin de ella, y hasta el fin de la guerra será talada con asolamientos*

* *el pueblo* → *ciudad*

* *ella* (הַ/בָּא֙)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *asolamientos* (שֹׁמֵמֽוֹת)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> …mas no por sí; pueblo de un príncipe destruirá ciudad y santuario. Desolaciones determinadas.

### Daniel 9:27:1 — *Confirmará pacto; abominación*

* Actores principales: *semana* (1)

#### *Y en otra semana confirmará el pacto a muchos, y a la*

* *semana* → *confirmará* → *a muchos, y a*
> Confirmará pacto con muchos una semana…

### Daniel 9:27:8 — *Confirmará pacto; abominación*

* Actores principales: *la semana* (1)

#### *el pacto a muchos, y a la mitad de la semana*
> …a la mitad cesará el sacrificio; sobre la desolación abominación hasta la consumación. El H2 cierra con abominación y fin determinado. Daniel aún no ha visto al hombre de lino del siguiente desarrollo.

- *hará cesar el sacrificio y la ofrenda: después con la muchedumbre de las abominaciones será el desolar, y esto hasta una entera consumación; y se derramara la ya determinada sobre el pueblo asolado*

* *la semana* → *hará* → *el pueblo*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *asolado* (שֹׁמֵֽם)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### En síntesis

Daniel entiende por Jeremías los setenta años; ora con ayuno, confiesa el pecado de Israel y ruega por la ciudad y el santuario por las misericordias de Dios. Gabriel llega a la oblación de la tarde: setenta semanas determinadas sobre pueblo y ciudad, hasta acabar la prevaricación y ungir al Santo de los santos; después, Mesías quitado, desolación y abominación hasta la consumación. La presión de Jerusalén asolada recibe plazo determinado; el libro sigue con la visión del hombre de lino.


## Daniel 10:1–11:45 Visión del hombre de lino; reyes del norte y del sur

### Daniel 10:1:7 — *Palabra en el tercer año de Ciro*

* Actores principales: *Beltsasar* (1) · *Daniel* (1)

#### *En el tercer año de Ciro rey de Persia, fue revelada palabra a Daniel, cuyo nombre*

* *Daniel* → *fue* → *a cuyo nombre*
> Tercer año de Ciro: palabra revelada a Daniel. Nueva fecha bajo Persia. La visión grande de este H2 empieza aquí.

- *era Beltsasar; y la palabra*

* *Beltsasar* → *era*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 10:1:17 — *Palabra en el tercer año de Ciro*

* Actores principales: *Beltsasar* (1)

#### *Beltsasar; y la palabra era verdadera, mas el tiempo fijado era largo: él empero comprendió la palabra, y tuvo inteligencia en la visión*

* *Beltsasar* → *era*
> La palabra verdadera; él entendió la visión. El texto afirma comprensión antes de narrar el duelo.

### Daniel 10:2:5 — *Daniel hace duelo tres semanas*

* Actores principales: *yo* (1)

#### *En aquellos días yo Daniel me contristé por espacio de tres semanas*

* *yo* → *espacio*

* *tres* (מִתְאַבֵּ֔ל)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Tres semanas de duelo: no comida deseable, ni carne ni vino, ni se ungió. La preparación del cuerpo antecede a la visión.

- *No comí pan delicado, ni*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *ni entró carne ni*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *carne ni vino en mi boca, ni me unté con ungüento, hasta que se cumplieron tres semanas de días*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *ungüento* (וְ/ס֣וֹךְ): completa a *hasta* (סָ֑כְתִּי).

* Infinitivo[^inf] *tres* (מְלֹ֕את): completa a *hasta* (סָ֑כְתִּי).

### Daniel 10:4:7 — *Junto al río Hidekel*

* Actores principales: *yo* (1)

#### *Y a los veinte y cuatro días del mes primero estaba yo a la orilla del gran río Hiddekel*

* *yo* → *estaba* → *a la orilla del*
> A orillas del Hidekel, día veinticuatro del primer mes. Lugar y fecha fijados.

### Daniel 10:5:1 — *Ve a un varón vestido de lino*

#### *Y alzando mis ojos miré, y he aquí un varón*
> Ve un varón vestido de lino…

### Daniel 10:5:4 — *Ve a un varón vestido de lino*

#### *mis ojos miré, y he aquí un varón vestido de lienzos, y ceñidos sus lomos de oro de Uphaz*
> …cinturio de oro de Ufaz; cuerpo como berilo, rostro como relámpago. La figura se detalla antes de oírse la voz.

+ *Y su cuerpo era como piedra de Tarsis, y su rostro parecía un relámpago, y sus ojos como antorchas de fuego, y sus brazos y sus pies como de color de metal resplandeciente, y la voz de sus palabras como la voz de ejército*

### Daniel 10:7:1 — *Solo Daniel ve la visión*

* Actores principales: *yo* (1)

#### *Y sólo yo, Daniel, vi aquella visión, y no la vieron los hombres que*

* *yo* → *vieron*
> Solo Daniel vio la visión; los hombres con él huyeron. La experiencia es suya.

+ *cayó sobre ellos un gran temor, y huyeron, y se*

- *estaban conmigo; sino que*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *escondieron*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *escondieron* (בְּ/הֵחָבֵֽא): completa a *escondieron* (וַֽ/יִּבְרְח֖וּ).

### Daniel 10:8:2 — *Se queda sin fuerzas*

* Actores principales: *yo* (1)

#### *Quedé pues yo solo, y vi esta gran visión, y no quedó en mí esfuerzo; antes mi fuerza se me*

* *yo* → *quedó*
> Se queda solo, sin fuerzas; su esplendor se muda. El impacto físico abre la escena de la mano que toca.

- *en mí esfuerzo; antes mi fuerza se me trocó*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *quedó en mí esfuerzo; antes mi fuerza se me*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *trocó*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *trocó en desmayo, sin retener vigor alguno*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 10:9:1 — *Empero oí voz palabras oyendo*

* Actores principales: *yo* (2)

#### *Empero oí la voz de sus palabras: y oyendo la voz de sus palabras, estaba yo*

* *yo* → *estaba*

* Infinitivo[^inf] *oyendo* (וּ/כְ/שָׁמְעִ/י֙): completa a *oí* (וָ/אֶשְׁמַ֖ע).
> Oye la voz de sus palabras y cae dormido sobre su rostro. Audición y postración juntas.

- *adormecido sobre mi rostro*

* *yo* → *adormecido*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *sobre* (נִרְדָּ֥ם)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 10:10:3 — *Una mano lo toca*

#### *Y, he aquí, una mano me tocó, e*
> Una mano lo toca…

### Daniel 10:10:5 — *Una mano lo toca*

#### *e hizo que me moviese sobre mis rodillas, y sobre las palmas de mis manos*
> …y lo pone sobre sus rodillas y palmas. El toque restaura postura para oír.

### Daniel 10:11:1 — *Daniel, varón de deseos*

* Actores principales: *Daniel* (1)

#### *Y me dijo: Daniel, varón de deseos, está atento a las palabras que te hablaré, y te levanta sobre tus pies; porque a ti he*

* *Daniel* → *dijo* → *a las palabras que*
> Daniel, varón de deseos: está y entiende las palabras…

- *Daniel, varón de deseos, está atento a las palabras que te hablaré, y te levanta sobre tus pies; porque a ti he sido*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

+ *enviado ahora. Y estando*

### Daniel 10:11:24 — *Daniel, varón de deseos*

* Actores principales: *yo* (1)

#### *hablando conmigo esto, yo estaba temblando*

* *yo* → *hablando*

* Infinitivo[^inf] *temblando* (וּ/בְ/דַבְּר֥/וֹ): completa a *temblando* (עָמַ֥דְתִּי).

* *estaba* (דֹבֵ֤ר)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *temblando* (מַרְעִֽיד)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> …que yo te hablo. El título de 9:23 vuelve; se le manda entender.

### Daniel 10:12:1 — *Desde el primer día fuiste oído*

* Actores principales: *Daniel* (1)

#### *Y me dijo: Daniel, no temas: porque desde el primer*

* *Daniel* → *dijo*
> Desde el primer día que diste tu corazón a entender y a humillarte, fueron oídas tus palabras. La oración de las tres semanas ya tenía respuesta en camino.

- *día que diste tu corazón a entender*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *afligirte* (לְ/הָבִ֧ין): completa a *temas* (תִּירָ֣א).

* Infinitivo[^inf] *presencia* (וּ/לְ/הִתְעַנּ֛וֹת): completa a *temas* (תִּירָ֣א).

- *que diste tu corazón a entender*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *venido*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *venido*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 10:13:14 — *El príncipe de Persia se le opuso*

* Actores principales: *Miguel* (1)

#### *Mas el príncipe del reino de Persia se puso contra mí veintiún días: y he aquí, Miguel, uno de los principales príncipes*

* *Miguel* → *puso*

* *puso* (עֹמֵ֤ד)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> El príncipe del reino de Persia se le opuso veintiún días…

### Daniel 10:13:17 — *El príncipe de Persia se le opuso*

* Actores principales: *yo* (1)

#### *contra mí veintiún días: y he aquí, Miguel, uno de los principales príncipes, vino para ayudarme, y yo quedé allí con los reyes de Persia*

* *yo* → *vino*

* Infinitivo[^inf] *reyes* (לְ/עָזְרֵ֑/נִי): completa a *Persia* (נוֹתַ֣רְתִּי).
> …Miguel, uno de los principales, vino a ayudarle. La demora se explica por oposición en el cielo; el texto no detalla aquí la guerra.

### Daniel 10:14:1 — *Vine a hacerte entender lo que ha de venir*

* Actores principales: *la visión* (1)

#### *Soy pues venido para hacerte saber lo que ha de venir a tu pueblo en los postreros días; porque la visión*

* Infinitivo[^inf] *venido* (לַ/הֲבִ֣ינְ/ךָ֔): completa a *Soy* (וּ/בָ֨אתִי֙).
> Vine a hacerte entender lo que ha de acontecer a tu pueblo en los postreros días. Horizonte del discurso: pueblo y postreros días.

- *es aún para días*

* *la visión* → *es*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *Y estando*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 10:15:8 — *Calla, rostro a tierra*

#### *hablando conmigo semejantes palabras, puse mis ojos en tierra, y enmudecí*

* Infinitivo[^inf] *hablando* (וּ/בְ/דַבְּר֣/וֹ): completa a *enmudecí* (וְ/נֶאֱלָֽמְתִּי).
> Al oír tales palabras, pone el rostro a tierra y enmudece. Todavía no puede hablar.

+ *Mas he aquí, como una semejanza de hijo de hombre tocó mis labios. Entonces abrí mi boca, y hablé, y dije a aquel que estaba delante de mí: Señor mío, con la visión se revolvieron mis dolores sobre mí, y no me*

* *tocó* (נֹגֵ֖עַ)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 10:16:21 — *Abre la boca; habla*

#### *quedó fuerza*

* *fuerza* (הָ/עֹמֵ֣ד)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Como semejanza de hijo de hombre toca sus labios; abre la boca. Stub *quedó fuerza* puede vivir aquí — la fuerza aún falla.

### Daniel 10:17:2 — *Cómo podrá siervo señor hablar*

#### *Cómo pues podrá el siervo de mi señor hablar con este mi señor? porque al instante me faltó la fuerza, y no me ha*

* Infinitivo[^inf] *hablar* (לְ/דַבֵּ֖ר): completa a *podrá* (יוּכַ֗ל).
> ¿Cómo podrá el siervo de mi señor hablar con mi señor?

### Daniel 10:17:13 — *Fuerza no quedado*

#### *la fuerza, y no me ha quedado*
> No queda en mí esfuerzo. La debilidad se confiesa otra vez.

- *aliento*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 10:18:1 — *Lo fortalece de nuevo*

#### *Y aquella como semejanza de hombre me tocó otra vez, y me*
> Lo toca de nuevo el de apariencia humana y lo fortalece.

- *otra vez, y me confortó*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *tocó otra vez, y me confortó*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 10:19:1 — *No temas; paz a ti*

#### *Y me dijo: Varón de deseos, no temas: paz a ti; ten buen ánimo, y te alienta. Y*
> No temas, varón de deseos; paz a ti; esfuérzate. Daniel queda fortalecido para oír.

- *Varón de deseos, no temas: paz a ti; ten buen ánimo, y te alienta. Y hablando él conmigo cobré yo vigor, y dije: Hable mi señor, porque me has*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *fortalecido*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *fortalecido* (וּֽ/בְ/דַבְּר֤/וֹ): completa a *fortalecido* (חִזַּקְתָּֽ/נִי).

### Daniel 10:20:1 — *Voy a pelear con el príncipe de Persia*

#### *Y dijo: ¿Sabes por qué he*
> ¿Sabes por qué he venido? Voy a volver a pelear con el príncipe de Persia; y cuando yo salga, vendrá el de Grecia. La lucha de príncipes enmarca lo que sigue.

- *venido a ti? Porque luego tengo de volver para pelear con el príncipe de los persas; y en*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *tengo* (לְ/הִלָּחֵ֖ם): completa a *Sabes* (הֲ/יָדַ֨עְתָּ֙).

- *a ti? Porque luego tengo de volver para pelear con el príncipe de los persas; y en saliendo*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *venido a ti? Porque luego tengo de volver para pelear con el príncipe de los persas; y en saliendo yo*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *luego* (יוֹצֵ֔א)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *Grecia* (בָּֽא)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 10:21:2 — *Te declararé lo escrito en la escritura de verdad*

* Actores principales: *yo* (1)

#### *Empero yo te declararé lo que está escrito en la escritura de verdad: y ninguno hay que se esfuerce conmigo en estas cosas, sino Miguel vuestro príncipe*

* *yo* → *verdad* → *Miguel*

* *conmigo* (מִתְחַזֵּ֤ק)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Te declararé lo escrito en la escritura de verdad; nadie me ayuda contra ellos sino Miguel. Puente a la narración de reyes.

### Daniel 11:1:7 — *Estuvo para animar a Darío*

#### *Y en el año primero de Darío el de Media, yo estuve para animarlo y fortalecerlo*

* Cláusula nominal: en griego esta cláusula no tiene verbo; el español lo suple para poder leerse.

* *fortalecerlo* (לְ/מַחֲזִ֥יק)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Nominal/apoyo: en el año primero de Darío estuvo para animarlo y fortalecerlo. Cuelga del discurso del mensajero.

### Daniel 11:2:3 — *Aún tres reyes en Persia*

* Actores principales: *yo* (1)

#### *Y ahora yo te mostraré la verdad. He aquí que aun habrá tres reyes en Persia, y el cuarto se*

* *yo* → *verdad*
> Aún habrá tres reyes en Persia…

+ *hará*

### Daniel 11:2:18 — *Aún tres reyes en Persia*

* Actores principales: *riquezas* (1)

#### *de grandes riquezas más que todos; y fortificándose con sus riquezas, despertará a todos contra el reino de Javán*

* *riquezas* → *despertará* → *a todos contra el*

* *Javán* (עֹמְדִ֣ים)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> …el cuarto se enriquecerá; despertará a todos contra el reino de Grecia. La sucesión persa se cuenta en clave de conflicto.

### Daniel 11:3:1 — *Se levantará un rey valiente*

#### *Se Levantara luego un rey valiente, el cual se enseñoreará sobre gran dominio, y*
> Se levantará un rey valiente; dominará con gran señorío. Eco del cabrío de ch. 8, ahora en prosa de reyes.

- *sobre gran dominio, y hará su*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *su voluntad*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

+ *enseñoreado*

- *Pero cuando*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *estará*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:4:15 — *Su reino será quebrado*

#### *será quebrantado su reino, y repartido por los cuatro vientos del cielo; y no a sus descendientes, ni según el señorío con que él se enseñoreó: porque su reino será arrancado, y para otros fuera de aquellos*

* Infinitivo[^inf] *según* (וּ/כְ/עָמְד/וֹ֙): completa a *aquellos* (תִנָּתֵשׁ֙).
> Su reino quebrado y repartido a los cuatro vientos; no a su posteridad. Fragmentación otra vez.

### Daniel 11:5:1 — *Rey del sur se hará fuerte*

#### *Y se hara fuerte el rey del mediodía: mas uno de los príncipes de aquél le*
> Rey del sur se hará fuerte…

### Daniel 11:5:6 — *Rey del sur se hará fuerte*

#### *mas uno de los príncipes de aquél le sobrepujará, y se*
> …y uno de sus príncipes…

### Daniel 11:5:8 — *Rey del sur se hará fuerte*

#### *y se hará poderoso; su señorío será grande señorío*
> …se hará más fuerte que él. Empieza el vaivén norte/sur.

- *Y al cabo de años se concertarán*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *hacer* (לַ/עֲשׂ֖וֹת): completa a *concertarán* (יִתְחַבָּ֔רוּ).

- *vendrá al rey del norte para hacer los conciertos. Empero ella no podrá retener la fuerza del brazo: ni permanecerá él*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *él*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *ella* (וּ/מְבִיאֶ֨י/הָ֙)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 11:6:18 — *Se concertarán; hija del sur*

#### *entregada ella, y los que la habían traído, asimismo su hijo, y los que*
> Al cabo de años se concertarán; hija del sur vendrá al rey del norte…

### Daniel 11:6:20 — *Se concertarán; hija del sur*

#### *traído, asimismo su hijo, y los que estaban de parte de ella en aquel tiempo*

* *ella* (וְ/הַ/יֹּ֣לְדָ֔/הּ)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *aquel* (וּ/מַחֲזִקָ֖/הּ)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> …mas no retendrá la fuerza del brazo. La alianza falla.

### Daniel 11:7:1 — *Brotará del troncal de sus raíces*

#### *Mas del renuevo de sus raíces se levantará uno sobre su silla, y vendrá con ejército, y*
> Brotará del troncal de sus raíces…

### Daniel 11:7:5 — *Brotará del troncal de sus raíces*

* Actores principales: *ellos* (2)

#### *uno sobre su silla, y vendrá con ejército, y entrará en la fortaleza del rey del norte, y*
> …vendrá con ejército y entrará en la fortaleza del norte. El sur responde.

- *en la fortaleza del rey del norte, y hará en ellos a su arbitrio, y*

* *ellos* → *hará* → *a su arbitrio, y*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *en ellos a su arbitrio*

* *ellos* → *predominará*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *predominará*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:8:11 — *Aun dioses ellos príncipes vasos*

* Actores principales: *ellos* (1)

#### *Y aun los dioses de ellos, con sus príncipes, con sus vasos preciosos de plata y de oro, llevará*

* *ellos* → *llevará*
> Aun dioses ellos príncipes vasos. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

### Daniel 11:8:15 — *Llevará cautivos Egipto años mantendrá*

#### *llevará cautivos a Egipto: y por años se mantendrá él contra el rey del norte*
> Llevará cautivos Egipto años mantendrá. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

### Daniel 11:9:1 — *Entrará reino rey*

* Actores principales: *Así* (1)

#### *Así entrará en el reino el rey del*

* *Así* → *entrará* → *el rey*
> Entrará reino rey. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

- *mediodía, y volverá a su tierra*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:10:3 — *Hijos aquél airarán reunirán multitud*

#### *Mas los hijos de aquél se airarán, y reunirán multitud de grandes ejércitos: y vendrá a gran prisa, e inundará, y*

* Infinitivo[^inf] *gran* (ב֖וֹא): completa a *airarán* (יִתְגָּר֗וּ).
> Hijos aquél airarán reunirán multitud. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

- *y pasará, y*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *y tornará, y*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *y llegará*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *inundará, y*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *pasará*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *y tornará*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:10:14 — *Llegará ira hasta fortaleza*

#### *y llegará con ira hasta su fortaleza*
> Llegará ira hasta fortaleza. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

### Daniel 11:11:1 — *Rey del sur se enfurece*

#### *Por lo cual se enfurecerá el rey del*
> Rey del sur se enfurecerá…

- *mediodía, y saldrá*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:11:5 — *Rey del sur se enfurece*

* Actores principales: *multitud* (1)

#### *y saldrá, y peleará con el mismo rey del norte; y pondrá en campo gran multitud, y toda aquella multitud*
> …saldrá y peleará con el del norte. Multitudes caen.

- *con el mismo rey del norte; y pondrá en campo gran multitud, y toda aquella multitud será*

* *multitud* → *será*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *será entregada en su mano*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:12:1 — *Multitud ensoberbecerá elevara corazón*

#### *Y la multitud se ensoberbecerá, se elevara su corazón, y*
> Multitud ensoberbecerá elevara corazón. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

### Daniel 11:12:3 — *Elevara corazón derribará muchos millares*

#### *se elevara su corazón, y derribará muchos millares; mas no*
> Elevara corazón derribará muchos millares. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

- *muchos millares; mas no prevalecerá*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *derribará muchos millares; mas no*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *prevalecerá*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:13:1 — *Rey del norte vuelve*

* Actores principales: *norte* (1)

#### *Y el rey del norte volverá*

* *norte* → *volverá*
> El rey del norte volverá y pondrá multitud mayor. La ola se repite.

- *volverá*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *a poner en campo mayor multitud que primero, y a cabo del tiempo de años vendrá a gran prisa con grande ejército y con muchas riquezas*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *prisa* (ב֔וֹא): completa a *gran* (יָ֣בוֹא).

### Daniel 11:14:4 — *Se levantarán muchos contra el sur*

#### *Y en aquellos tiempos se levantarán muchos contra el rey del mediodía; e hijos de disipadores de tu pueblo se levantarán para confirmar la*
> Se levantarán muchos contra el sur. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

### Daniel 11:14:11 — *Se levantarán muchos contra el sur*

* Actores principales: *confirmar la* (1)

#### *e hijos de disipadores de tu pueblo se levantarán para confirmar la profecía*

* *confirmar la* → *profecía*

* Infinitivo[^inf] *profecía* (לְ/הַעֲמִ֥יד): completa a *confirmar* (יִֽנַּשְּׂא֛וּ).
> Se levantarán muchos contra el sur. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

- *y caerán*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:15:1 — *Rey del norte funda baluartes*

#### *Vendrá pues el rey del norte, y fundará baluartes, y*
> Rey del norte funda baluartes. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

- *baluartes, y tomará la*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *la ciudad fuerte; y los brazos del*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:15:12 — *Rey del norte funda baluartes*

#### *fuerte; y los brazos del mediodía no podrán permanecer, ni su pueblo escogido, ni habrá fortaleza que pueda resistir*

* Infinitivo[^inf] *pueda* (לַ/עֲמֹֽד): completa a *podrán* (יַעֲמֹ֔דוּ).
> Rey del norte funda baluartes. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

### Daniel 11:16:1 — *Hará según su voluntad*

* Actores principales: *contra él* (1)

#### *Y el que vendrá contra él, hará a su*

* *contra él* → *hará* → *a su*

* *contra* (הַ/בָּ֤א)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Hará según su voluntad; nadie se le enfrentará; estará en la tierra hermosa. El norte pisa lo santo.

- *voluntad, ni habrá quien se le pueda parar delante; y estará en la tierra deseable*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *delante* (עוֹמֵ֖ד)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 11:17:1 — *Pondrá su rostro con todo su reino*

#### *Pondrá luego su rostro para venir con el poder de todo su reino; y hará con aquél cosas rectas, y le dara una hija de mujeres para trastornarla: mas no*

* Infinitivo[^inf] *venir* (לָ/ב֞וֹא): completa a *Pondrá* (וְ/יָשֵׂ֣ם).
> Pondrá su rostro con todo su reino. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

### Daniel 11:17:9 — *Pondrá su rostro con todo su reino*

#### *con aquél cosas rectas, y le dara una hija de mujeres para trastornarla: mas no estará ni*

* Infinitivo[^inf] *estará* (לְ/הַשְׁחִיתָ֔/הּ): completa a *aquél* (וְ/עָשָׂ֑ה).
> Pondrá su rostro con todo su reino. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

- *será*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *será por él*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:18:1 — *Volverá su rostro a las islas*

#### *Volverá después su rostro a las islas, y*
> Volverá su rostro a las islas. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

### Daniel 11:18:2 — *Volverá su rostro a las islas*

* Actores principales: *aun* (1)

#### *después su rostro a las islas, y tomará muchas; mas un príncipe le*
> Volverá su rostro a las islas. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

- *hará parar su afrenta*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *parar su afrenta*

* *aun* → *tornará*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *tornará sobre él su oprobio*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:19:1 — *Volverá a las fortalezas de su tierra*

* Actores principales: *Luego* (1)

#### *Luego volverá su rostro a las fortalezas de su tierra: mas*

* *Luego* → *volverá* → *a las fortalezas de*
> Volverá a las fortalezas de su tierra. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

- *tropezará y*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *y caerá*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *y no parecerá más*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:20:1 — *Sucederá silla uno*

#### *Entonces sucederá en su silla uno que*
> Sucederá silla uno. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

- *hará pasar exactor por la gloria del reino; mas en pocos días será quebrantado*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *pasar* (מַעֲבִ֥יר)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *exactor* (נוֹגֵ֖שׂ)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 11:21:1 — *Se levantará un vil*

#### *Y sucederá en su lugar un vil, al cual no darán la honra del reino: vendrá empero con paz, y*

* *cual* (נִבְזֶ֔ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Se levantará en su lugar un vil; vendrá en paz y tomará el reino con lisonjas. Nuevo actor: el vil.

- *en su lugar un vil, al cual no darán la honra del reino: vendrá empero con paz, y tomará*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *tomará el reino con halagos*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:22:3 — *Brazos inundación serán inundados delante*

* Actores principales: *inundación* (1)

#### *Y con los brazos de inundación serán inundados delante de él, y*

* *inundación* → *serán*
> Brazos inundación serán inundados delante. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

### Daniel 11:22:5 — *Inundados delante él serán quebrantados*

#### *inundados delante de él, y serán quebrantados; y aun también el príncipe del pacto*
> Inundados delante él serán quebrantados. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

### Daniel 11:23:4 — *Conciertos él él hará*

#### *Y después de los conciertos con él, él hará*

* Infinitivo[^inf] *después* (הִֽתְחַבְּר֥וּת): completa a *conciertos* (יַעֲשֶׂ֣ה).
> Conciertos él él hará. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

- *hará*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:23:7 — *Hará engaño subirá saldrá vencedor*

#### *hará engaño, y subirá, y saldrá vencedor con poca gente*
> Hará engaño subirá saldrá vencedor. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

### Daniel 11:24:4 — *Estando provincia paz abundancia*

#### *Estando la provincia en paz y en abundancia*
> Estando provincia paz abundancia. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

### Daniel 11:24:5 — *Provincia paz abundancia entrará*

* Actores principales: *abundancia* (1)

#### *la provincia en paz y en abundancia, entrará y*

* *abundancia* → *entrará*
> Provincia paz abundancia entrará. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

### Daniel 11:24:8 — *Hará no*

* Actores principales: *las fortalezas* (1)

#### *y hará lo que no*
> Hará no. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

- *hicieron sus padres, ni los padres de sus padres; presa, y despojos, y riquezas repartirá a sus soldados; y contra las fortalezas*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *sus padres, ni los padres de sus padres; presa, y despojos, y riquezas repartirá a sus soldados; y contra las fortalezas formará sus designios: y esto por tiempo*

* *las fortalezas* → *formará*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:25:1 — *Despertará su poder contra el sur*

#### *Y despertará sus fuerzas y su corazón contra el rey del*
> Despertará su poder contra el sur. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

### Daniel 11:25:11 — *Despertará su poder contra el sur*

#### *sus fuerzas y su corazón contra el rey del mediodía con grande ejército: y el rey del*
> Despertará su poder contra el sur. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

### Daniel 11:25:19 — *Despertará su poder contra el sur*

#### *con grande ejército: y el rey del mediodía se*
> Despertará su poder contra el sur. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

- *moverá a la guerra con grande y muy fuerte ejército; mas no prevalecerá, porque le harán traición*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:26:4 — *Aun comerán pan quebrantarán*

* Actores principales: *ejército* (1)

#### *Aun los que comerán su pan, le quebrantarán; y su ejército será*

* *ejército* → *será*

* *Aun* (וְ/אֹכְלֵ֧י)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Aun comerán pan quebrantarán. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

- *destruido*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *destruido, y caerán muchos muertos*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:27:9 — *Corazón dos reyes será hacer*

* Actores principales: *reyes* (1)

#### *Y el corazón de estos dos reyes será para hacer mal, y en una misma mesa tratarán mentira: mas no servirá de nada, porque el plazo aun no*

* *reyes* → *será*
> Corazón dos reyes será hacer. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

### Daniel 11:27:11 — *Hacer mal mesa tratarán mentira*

#### *para hacer mal, y en una misma mesa tratarán mentira: mas no servirá de nada, porque el plazo aun no es llegado*
> Hacer mal mesa tratarán mentira. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

### Daniel 11:28:1 — *Volverá a su tierra con gran riqueza*

* Actores principales: *corazón* (1) · *santo* (1)

#### *Y se volvera a su tierra con grande riqueza, y su corazón será contra el pacto santo*

* *corazón* → *será*
> Volverá a su tierra con gran riqueza…

- *hará*

* *santo* → *hará*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:28:10 — *Volverá a su tierra con gran riqueza*

* Actores principales: *tiempo* (1)

#### *hará pues, y se volvera a su tierra*
> …su corazón contra el pacto santo. La hostilidad cultual se nombra.

- *Al tiempo señalado*

* *tiempo* → *señalado*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *tornará al*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *al mediodía; mas no será la postrera venida como la primera*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *Porque vendrán contra él naves de Quitim*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:30:5 — *Vendrán naves de Quitim*

#### *y se volverá, y se*
> Vendrán naves de Quitim; se contristará…

### Daniel 11:30:6 — *Vendrán naves de Quitim*

* Actores principales: *habrán* (1)

#### *y se enojará contra el pacto santo, y*
> …volverá y se enojará contra el pacto santo. La presión sobre el pacto crece.

- *contra el pacto santo, y hará: se*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *se volverá pues*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *pues*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *en los que habrán desamparado el santo pacto*

* *habrán* → *desamparado*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *desamparado* (עֹזְבֵ֖י)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 11:31:3 — *Quitarán el continuo; abominación*

* Actores principales: *puestos* (1)

#### *Y serán puestos brazos de su*

* *puestos* → *brazos*
> Brazos se levantarán…

### Daniel 11:31:4 — *Quitarán el continuo; abominación*

#### *de su parte; y contaminarán el santuario de fortaleza, y*
> …profanarán el santuario…

### Daniel 11:31:7 — *Quitarán el continuo; abominación*

#### *y contaminarán el santuario de fortaleza, y quitarán el continuo*
> …quitarán el continuo…

### Daniel 11:31:9 — *Quitarán el continuo; abominación*

* Actores principales: *el continuo* (1)

#### *el continuo sacrificio, y pondrán la abominación espantosa*

* *el continuo* → *sacrificio*

* *espantosa* (מְשׁוֹמֵֽם)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> …pondrán la abominación espantosa. Continuo y abominación: eco de ch. 8–9. Aquí aterriza una punta dura de este H2.

### Daniel 11:32:3 — *Corromperá con lisonjas*

* Actores principales: *el pueblo* (1)

#### *Y con lisonjas hará pecar a los violadores del pacto: mas el pueblo que conoce a su Dios, se*

* *el pueblo* → *hará* → *a su Dios*

* *Y* (וּ/מַרְשִׁיעֵ֣י)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> A los que impíamente obran contra el pacto corromperá con lisonjas; el pueblo que conoce a su Dios se esforzará. Dos respuestas al mismo rey.

+ *esforzará*

* *esforzará* (יֹדְעֵ֥י)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

- *y hará*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:33:3 — *Los entendidos instruirán a muchos*

* Actores principales: *los sabios* (1)

#### *Y los sabios del pueblo darán sabiduría a muchos: y caerán a cuchillo y a fuego, en*

* *los sabios* → *sabiduría* → *a muchos: y caerán*

* *sabios* (וּ/מַשְׂכִּ֣ילֵי)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Los entendidos del pueblo instruirán a muchos…

### Daniel 11:33:5 — *Los entendidos instruirán a muchos*

#### *a muchos: y caerán a cuchillo y a fuego, en cautividad y despojo, por días*
> …caerán a espada, fuego, cautiverio. Enseñar cuesta.

+ *Y en su caer serán ayudados de pequeño socorro: y muchos se juntarán a ellos con*

* Infinitivo[^inf] *ellos* (וּ/בְ/הִכָּ֣שְׁלָ֔/ם): completa a *lisonjas* (וְ/נִלְו֧וּ).

### Daniel 11:34:5 — *Al caer serán ayudados con poco*

#### *lisonjas*
> Al caer serán ayudados con pequeño socorro; muchos se juntarán con lisonjas. Stub *lisonjas* puede colgar aquí.

### Daniel 11:35:3 — *Caerán para ser limpios*

* Actores principales: *los sabios* (1)

#### *Y algunos de los sabios caerán para ser purgados, y limpiados, y emblanquecidos, hasta el tiempo determinado: porque aun para esto hay plazo*

* *los sabios* → *determinado*

* Infinitivo[^inf] *caerán* (לִ/צְר֥וֹף): completa a *sabios* (יִכָּֽשְׁל֗וּ).

* Infinitivo[^inf] *purgados* (וּ/לְ/בָרֵ֥ר): completa a *sabios* (יִכָּֽשְׁל֗וּ).

* Infinitivo[^inf] *limpiados* (וְ/לַ/לְבֵּ֖ן): completa a *sabios* (יִכָּֽשְׁל֗וּ).

* *algunos* (הַ/מַּשְׂכִּילִ֣ים)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Algunos de los entendidos caerán para ser limpios y purificados hasta el tiempo determinado. Hay plazo.

### Daniel 11:36:1 — *El rey hará según su voluntad*

#### *Y el rey hará a su*
> El rey hará según su voluntad…

- *voluntad; y se*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:36:5 — *El rey hará según su voluntad*

#### *y se ensoberbecerá, y se*
> …se ensalzará sobre todo dios…

### Daniel 11:36:12 — *El rey hará según su voluntad*

* Actores principales: *dios* (1)

#### *y se engrandecerá sobre todo dios: y contra el Dios de los dioses*

* *dios* → *engrandecerá*
> …hablará maravillas contra el Dios de los dioses…

### Daniel 11:36:14 — *El rey hará según su voluntad*

* Actores principales: *Dios* (1)

#### *sobre todo dios: y contra el Dios de los dioses hablará maravillas, y*

* *Dios* → *hablará*
> …y prosperará hasta que sea consumada la ira. Prosperidad limitada por consumación.

- *será*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *prosperado, hasta que sea consumada la ira: porque hecha está determinación*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *consumada* (נִפְלָא֑וֹת)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

+ *Y del Dios de sus padres no se cuidará, ni del amor de las mujeres: ni se cuidará*

### Daniel 11:37:17 — *Dios alguno porque sobre engrandecerá*

* Actores principales: *dios* (1)

#### *de dios alguno, porque sobre todo se engrandecerá*

* *dios* → *engrandecerá*
> Dios alguno porque sobre engrandecerá. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

### Daniel 11:38:5 — *Honrará lugar dios Mauzim dios*

* Actores principales: *dios* (2)

#### *Mas honrará en su lugar al dios Mauzim, dios que sus padres no*

* *dios* → *honrará* → *al Mauzim dios*
> Honrará lugar dios Mauzim dios. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

- *conocieron*

* *dios* → *conocieron*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *conocieron: lo honrara con oro, y plata, y piedras preciosas*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:39:1 — *Dios ajeno conocerá*

* Actores principales: *dios* (1)

#### *Y con el dios ajeno que conocerá*

* *dios* → *conocerá*
> Dios ajeno conocerá. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

- *hará*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *hará*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *hará*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *hará*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *hará a los baluartes de Mauzim crecer en gloria: y os haral enseñorear sobre muchos, y por interés repartirá la tierra*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *Empero al cabo del tiempo el rey del mediodía se*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:40:7 — *Al tiempo del fin: sur y norte*

#### *se acorneará con él; y el rey del norte*
> Al tiempo del fin el rey del sur embestirá…

### Daniel 11:40:15 — *Al tiempo del fin: sur y norte*

* Actores principales: *norte* (1)

#### *con él; y el rey del norte levantará contra él como*

* *norte* → *levantará*
> …el del norte vendrá como tempestad…

- *tempestad, con carros y gente de a caballo, y muchos os navi; y*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:40:18 — *Al tiempo del fin: sur y norte*

#### *con carros y gente de a caballo, y muchos os navi; y entrará por las tierras, e inundará, y pasará*
> …con carros y muchas naves. El fin se nombra explícitamente.

### Daniel 11:41:1 — *Entrará en la tierra hermosa*

* Actores principales: *muchas* (1)

#### *Y vendrá a la tierra deseable, y muchas*
> Entrará en la tierra hermosa; muchos caerán. Edom, Moab y lo principal de Amón escaparán.

- *provincias*

* *muchas* → *provincias*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *caerán; mas éstas escaparán de su mano: Edom*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:42:1 — *Asimismo extenderá mano otras tierras*

* Actores principales: *Asimismo* (1)

#### *Asimismo extenderá su mano a las otras tierras, y no*

* *Asimismo* → *extenderá* → *a las otras tierras*
> Asimismo extenderá mano otras tierras. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

- *escapará el país de Egipto*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 11:43:1 — *Apoderará tesoros oro plata cosas*

#### *Y se apoderará de los tesoros de oro y plata, y de todas las cosas preciosas de Egipto, de Libia, y Etiopía por donde pasará*
> Apoderará tesoros oro plata cosas. El relato sigue la cadena de reyes; conviene oír el verbo sin forzar nombres históricos aquí.

### Daniel 11:44:2 — *Rumores del oriente y del norte*

#### *Mas nuevas de oriente y del norte lo espantarán; y*
> Rumores del oriente y del norte lo turbarán…

### Daniel 11:44:5 — *Rumores del oriente y del norte*

#### *y del norte lo espantarán; y saldrá con grande ira para destruir y matar muchos*

* Infinitivo[^inf] *destruir* (לְ/הַשְׁמִ֥יד): completa a *saldrá* (וְ/יָצָא֙).

* Infinitivo[^inf] *matar* (וּֽ/לְ/הַחֲרִ֖ים): completa a *saldrá* (וְ/יָצָא֙).
> …saldrá con gran ira a destruir. La carrera final se acelera.

### Daniel 11:45:1 — *Plantará tiendas; llegará a su fin*

#### *Y plantará las tiendas de su palacio entre los mares, en el monte deseable del santuario; y vendrá hasta su fin, y no tendrá quien le ayude*

* *quien* (עוֹזֵ֖ר)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Plantará las tiendas de su palacio entre los mares y el monte santo; llegará a su fin, y no tendrá quien le ayude. Cierre del H2: el plantará de Step 0. El fin del rey queda dicho; Miguel y la angustia vienen en 12.

- *plantará las tiendas de su palacio entre los mares, en el monte deseable del santuario; y vendrá hasta su fin, y no tendrá quien le ayude*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### En síntesis

En el tercer año de Ciro Daniel hace duelo; ve al varón de lino; solo él ve; es tocado y llamado varón de deseos. Desde el primer día fue oído; el príncipe de Persia se opuso; Miguel ayudó. El mensajero declara lo escrito: sucesión de Persia y Grecia, vaivén de reyes del norte y del sur, un vil que profana el santuario, quita el continuo y pone abominación; entendidos caen y son limpios hasta el tiempo. Al fin embisten sur y norte; planta tiendas junto al monte santo y llega a su fin sin ayuda. La presión del santuario y del fin del rey queda abierta hacia Miguel y la angustia de 12.


## Daniel 12:1–13 Miguel, angustia, resurrección; el libro sellado

### Daniel 12:1:3 — *Se levantará Miguel; tiempo de angustia*

* Actores principales: *Miguel* (2)

#### *Y en aquel tiempo se levantará Miguel, el gran príncipe que está por los hijos de tu pueblo; y*

* *Miguel* → *levantará* → *tu*
> En aquel tiempo se levantará Miguel, el gran príncipe que está por los hijos de tu pueblo. Tiempo de angustia cual nunca fue. Aquí aterriza la presión abierta desde el fin del rey en 11:45.

+ *fue*

- *será tiempo de angustia, cual nunca*

* *Miguel* → *será*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *tiempo* (הָ/עֹמֵד֮)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

- *después que hubo gente hasta entonces: mas en aquel tiempo será libertado tu pueblo, todos los que se hallaran escritos en el libro*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *libro* (מִֽ/הְי֣וֹת): completa a *libro* (יִמָּלֵ֣ט).

* *libro* (הַ/נִּמְצָ֖א)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 12:2:5 — *Muchos despertarán: vida o afrenta*

* Actores principales: *serán* (1)

#### *Y muchos de los que duermen en el polvo de la tierra serán despertados, unos para vida eterna, y otros para vergüenza y confusión perpetua*

* *serán* → *despertados*
> Muchos de los que duermen en el polvo despertarán: unos a vida eterna, otros a vergüenza y confusión perpetua. Resurrección dicha en dos destinos.

### Daniel 12:3:2 — *Los entendidos resplandecerán*

* Actores principales: *perpetua* (1)

#### *Y los entendidos resplandecerán como el resplandor del firmamento; y los que enseñan a justicia la multitud, como las estrellas a perpetua eternidad*

* *perpetua* → *eternidad*

* *entendidos* (וְ/הַ֨/מַּשְׂכִּלִ֔ים)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

* *justicia* (וּ/מַצְדִּיקֵי֙)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Los entendidos resplandecerán como el resplandor del firmamento; los que enseñan justicia, como estrellas. Eco de los entendidos de 11:33.

### Daniel 12:4:3 — *Sella el libro hasta el fin*

#### *Tú empero Daniel, cierra las palabras y*
> Y tú, Daniel, cierra las palabras y sella el libro…

### Daniel 12:4:5 — *Sella el libro hasta el fin*

* Actores principales: *fin* (1)

#### *las palabras y sella el libro hasta el tiempo del fin*
> …hasta el tiempo del fin…

- *pasarán muchos*

* *fin* → *pasarán*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 12:4:12 — *Sella el libro hasta el fin*

#### *muchos, y se multiplicara la ciencia*
> …muchos correrán de aquí para allá, y la ciencia se aumentará. El libro queda sellado; el fin no se abre del todo en esta página.

### Daniel 12:5:1 — *Otros dos a orillas del río*

* Actores principales: *yo* (1)

#### *Y yo, Daniel, miré, y he aquí otros dos que estaban, el uno de esta parte a la orilla del río, y el otro de la otra parte a la orilla del río*

* *yo* → *estaban* → *a la orilla del*

* *otra* (עֹמְדִ֑ים)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Daniel mira: otros dos, uno a cada orilla del río. La escena del Hidekel vuelve con testigos.

### Daniel 12:6:1 — *¿Cuándo será el fin de estas maravillas?*

#### *Y dijo uno al varón vestido de lienzos, que estaba sobre las aguas del río: ¿Cuándo será el fin de estas maravillas*
> Uno pregunta al vestido de lino: ¿cuándo será el fin de estas maravillas? La pregunta de plazo cierra el libro como en 8:13.

### Daniel 12:7:1 — *Tiempo, tiempos y la mitad*

* Actores principales: *varón* (1)

#### *Y oía al varón*
> Alza la mano derecha e izquierda al cielo y jura por el que vive: tiempo, tiempos y la mitad; cuando se acabe el quebrantamiento del pueblo santo, todo esto se cumplirá. Plazo jurado.

- *vestido de lienzos, que*

* *varón* → *vestido*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *de lienzos, que estaba sobre las aguas del río, el cual*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *sobre las aguas del río, el cual alzó su diestra y su siniestra al cielo, y juró por el Viviente en los siglos, que será por tiempo, tiempos, y la mitad. Y cuando se acabare el esparcimiento del escuadrón del pueblo santo, todas estas cosas serán cumplidas*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* Infinitivo[^inf] *cuando* (וּ/כְ/כַלּ֛וֹת): completa a *cosas* (תִּכְלֶ֥ינָה).

* Infinitivo[^inf] *acabare* (נַפֵּ֥ץ): completa a *cosas* (תִּכְלֶ֥ינָה).

### Daniel 12:8:2 — *Yo oí, y no entendí*

* Actores principales: *yo* (1)

#### *Y yo oí, mas no entendí. Y dije: Señor mío, ¿qué será*

* *yo* → *será*
> Yo oí, y no entendí. Daniel confiesa límite. Pregunta: ¿cuál será el fin de estas cosas?

- *será*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *será el cumplimiento de estas cosas*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 12:9:1 — *Anda, Daniel; el libro sellado*

#### *Y dijo: Anda, Daniel, que estas palabras están cerradas y selladas hasta el tiempo del cumplimiento*
> Anda, Daniel, que estas palabras están cerradas y selladas hasta el tiempo del fin. Mandato *Anda* de Step 0: no se le da mapa completo; se le envía.

- *dijo: Anda, Daniel, que estas palabras están cerradas y selladas hasta el tiempo del cumplimiento*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

### Daniel 12:10:1 — *Muchos serán limpios*

* Actores principales: *impi* (1)

#### *Muchos serán limpios, y emblanquecidos, y purificados; mas los os impi obrarán impíamente, y ninguno de los os impi entenderá*

* *impi* → *entenderá*
> Muchos serán limpios, emblanquecidos y purificados; los impíos procederán impíamente; ninguno de los impíos entenderá, pero los entendidos entenderán. Dos caminos de comprensión.

- *entenderá*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *entenderá*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *entenderá*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *entenderá*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

- *pero entenderán los entendidos*

* No se ve al frente una palabra de enlace clara (como «para que», «porque» o «la cual»). Revise el rango griego en Observador.

* *entenderán* (וְ/הַ/מַּשְׂכִּלִ֖ים)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.

### Daniel 12:11:2 — *Desde el continuo hasta la abominación*

* Actores principales: *fuere* (1)

#### *Y desde el tiempo que fuere quitado el continuo sacrificio hasta la abominación espantosa, habrá mil doscientos y noventa días*

* *fuere* → *quitado*

* Infinitivo[^inf] *continuo* (וְ/לָ/תֵ֖ת): completa a *fuere* (הוּסַ֣ר).

* *hasta* (שֹׁמֵ֑ם)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Desde el tiempo que sea quitado el continuo sacrificio hasta la abominación espantosa: mil doscientos noventa días. Continuo y abominación con número.

### Daniel 12:12:3 — *Bienaventurado el que espera*

#### *Bienaventurado el que esperare, y llegare hasta mil trescientos treinta y cinco días*

* *esperare* (הַֽ/מְחַכֶּ֖ה)[^part]: forma nominativa sin anfitrión señalado aún — no afirmes a quién describe hasta elegirlo en Observador.
> Bienaventurado el que espere, y llegue hasta mil trescientos treinta y cinco días. Bienaventuranza atada a la espera.

### Daniel 12:13:2 — *Daniel irá al fin; se levantará en su suerte*

#### *Y tú irás al fin, y*
> Y tú irás al fin…

### Daniel 12:13:4 — *Daniel irá al fin; se levantará en su suerte*

#### *al fin, y reposarás, y te levantarás en tu*
> …y reposarás…

### Daniel 12:13:5 — *Daniel irá al fin; se levantará en su suerte*

#### *y te levantarás en tu suerte al fin de los días*
> …y te levantarás en tu suerte al fin de los días. Cierra el libro sobre Daniel: anda, reposa, levántate. El sello permanece; la suerte al fin queda dicha.

### En síntesis

Miguel se levanta; hay angustia sin igual; muchos despiertan a vida o afrenta; los entendidos resplandecen. Daniel debe sellar el libro hasta el fin. Ante la pregunta del plazo, se jura tiempo, tiempos y la mitad. Daniel no entiende; se le dice: Anda, las palabras están selladas. Limpieza y entendimiento para unos; días contados desde el continuo hasta la abominación; bienaventurado quien espera. Daniel irá al fin, reposará y se levantará en su suerte. La presión del libro sellado cierra el telos: el Dios del cielo señorea hasta el fin que Él selló.


## Actores

### Concentración

- *Daniel* — 50 acciones

- *yo* — 43 acciones

- *Dios* — 21 acciones

- *Nabucodonosor* — 19 acciones

- *ellos* — 10 acciones

- *los sabios* — 8 acciones

- *Mesac* — 7 acciones

- *nosotros* — 7 acciones

- *Belsasar* — 6 acciones

- *Beltsasar* — 5 acciones

- *el jefe de los eunucos* — 5 acciones

- *Darío* — 4 acciones

- *fuego* — 4 acciones

- *el altísimo* — 3 acciones

- *los caldeos* — 3 acciones

- *Miguel* — 3 acciones

- *vosotros* — 3 acciones

- *altura* — 2 acciones

- *Aun* — 2 acciones

- *copa* — 2 acciones

- *corazón* — 2 acciones

- *cuerpo* — 2 acciones

- *el pueblo* — 2 acciones

- *hora* — 2 acciones

- *Nabucodonosor, rey de Babel* — 2 acciones

- *norte* — 2 acciones

- *ramas* — 2 acciones

- *Sadrac* — 2 acciones

- *su dios* — 2 acciones

- *también* — 2 acciones

- *todos* — 2 acciones

- *abundancia* — 1 acción

- *adivinos* — 1 acción

- *altivez* — 1 acción

- *Ananías* — 1 acción

- *Así* — 1 acción

- *Asimismo* — 1 acción

- *Aspenaz* — 1 acción

- *Azarías* — 1 acción

- *barro* — 1 acción

- *bestia* — 1 acción

- *caí* — 1 acción

- *cama* — 1 acción

- *Ciro* — 1 acción

- *confirmar la* — 1 acción

- *contra él* — 1 acción

- *cuarto* — 1 acción

- *cuerno* — 1 acción

- *cuyo* — 1 acción

- *demanda* — 1 acción

- *dicha* — 1 acción

- *diferente* — 1 acción

- *Dios del cielo* — 1 acción

- *dos* — 1 acción

- *ejército* — 1 acción

- *el barro* — 1 acción

- *el continuo* — 1 acción

- *el cuerno* — 1 acción

- *el Dios del cielo* — 1 acción

- *el mayordomo* — 1 acción

- *el santuario* — 1 acción

- *el secreto* — 1 acción

- *el Señor* — 1 acción

- *el sueño* — 1 acción

- *enojo* — 1 acción

- *espíritu* — 1 acción

- *est* — 1 acción

- *Esta* — 1 acción

- *fin* — 1 acción

- *fuera* — 1 acción

- *fuere* — 1 acción

- *grandeza* — 1 acción

- *habrán* — 1 acción

- *impi* — 1 acción

- *inundación* — 1 acción

- *Israel* — 1 acción

- *la escritura* — 1 acción

- *la imagen* — 1 acción

- *la semana* — 1 acción

- *la visión* — 1 acción

- *las estrellas* — 1 acción

- *las fortalezas* — 1 acción

- *los leones* — 1 acción

- *los magos* — 1 acción

- *los pueblos el* — 1 acción

- *los santos* — 1 acción

- *Luego* — 1 acción

- *mano* — 1 acción

- *mayor* — 1 acción

- *millones* — 1 acción

- *monteses* — 1 acción

- *muchas* — 1 acción

- *multitud* — 1 acción

- *negocio* — 1 acción

- *nombre* — 1 acción

- *nos* — 1 acción

- *perpetua* — 1 acción

- *Persia, la* — 1 acción

- *presencia* — 1 acción

- *príncipes* — 1 acción

- *puestos* — 1 acción

- *reyes* — 1 acción

- *riquezas* — 1 acción

- *santa* — 1 acción

- *santo* — 1 acción

- *santuario* — 1 acción

- *semana* — 1 acción

- *señor* — 1 acción

- *serán* — 1 acción

- *sol* — 1 acción

- *tiempo* — 1 acción

- *tierra la* — 1 acción

- *una piedra* — 1 acción

- *varón* — 1 acción

### Flujo

#### ABUNDANCIA

- *abundancia* → *entrará*

#### ADIVINOS

- *adivinos* → *Habló* → *el rey*

#### ALTIVEZ

- *altivez* → *fue*

#### ALTURA

- *altura* → *llegaba*

- *altura* → *llegaba*

#### ANANÍAS

- *Ananías* → *declaró* → *a Misael*

#### ASÍ

- *Así* → *entrará* → *el rey*

#### ASIMISMO

- *Asimismo* → *extenderá* → *a las otras tierras*

#### ASPENAZ

- *Aspenaz* → *dijo* → *a jefe de*

#### AUN

- *Aun* → *estaba*

- *aun* → *tornará*

#### AZARÍAS

- *Azarías* → *estuvieron*

#### BARRO

- *barro* → *cocido*

#### BELSASAR

- *Belsasar* → *hizo* → *a mil de sus*

- *Belsasar* → *vino*

- *Belsasar* → *mandando*

- *Belsasar* → *vistieron* → *a Daniel*

- *Belsasar* → *fue* → *los caldeos*

- *Belsasar* → *apareció* → *a Daniel*

#### BELTSASAR

- *Beltsasar* → *era*

- *Beltsasar* → *callando* → *El rey*

- *Beltsasar* → *habló*

- *Beltsasar* → *era*

- *Beltsasar* → *era*

#### BESTIA

- *bestia* → *podía*

#### CAÍ

- *caí* → *dormido*

#### CAMA

- *cama* → *subieron*

#### CIRO

- *Ciro* → *Daniel*

#### CONFIRMAR LA

- *confirmar la* → *profecía*

#### CONTRA ÉL

- *contra él* → *hará* → *a su*

#### COPA

- *copa* → *era*

- *copa* → *era*

#### CORAZÓN

- *corazón* → *fue*

- *corazón* → *será*

#### CUARTO

- *cuarto* → *será*

#### CUERNO

- *cuerno* → *fue*

#### CUERPO

- *cuerpo* → *fue*

- *cuerpo* → *fue*

#### CUYO

- *cuyo* → *vestido*

#### DANIEL

- *Daniel* → *puso* → *a Beltsasar*

- *Daniel* → *puso*

- *Daniel* → *dijo* → *el jefe de los eunucos*

- *Daniel* → *sabiduría*

- *Daniel* → *buscaron* → *a y a*

- *Daniel* → *habló* → *a Arioch, capitán de*

- *Daniel* → *entró*

- *Daniel* → *Fue* → *a su casa, y*

- *Daniel* → *otros*

- *Daniel* → *revelado* → *a Dios del cielo*

- *Daniel* → *habló* → *Dios*

- *Daniel* → *entró* → *a el rey*

- *Daniel* → *llevó* → *a delante del*

- *Daniel* → *dijo*

- *Daniel* → *humilló* → *a y*

- *Daniel* → *mandó*

- *Daniel* → *engrandeció* → *a y le*

- *Daniel* → *dió*

- *Daniel* → *solicitó*

- *Daniel* → *entró*

- *Daniel* → *declarando* → *a Beltsasar*

- *Daniel* → *fue*

- *Daniel* → *habló* → *a tú*

- *Daniel* → *fue*

- *Daniel* → *era* → *a el rey*

- *Daniel* → *era* → *a el rey*

- *Daniel* → *podían*

- *Daniel* → *cuando*

- *Daniel* → *hallaron* → *a su Dios*

- *Daniel* → *respondieron*

- *Daniel* → *es*

- *Daniel* → *puso*

- *Daniel* → *mandó* → *a y le*

- *Daniel* → *echaron*

- *Daniel* → *dijo* → *a Dios*

- *Daniel* → *llamó* → *a Dios*

- *Daniel* → *mandó* → *a del foso*

- *Daniel* → *fue*

- *Daniel* → *sacado*

- *Daniel* → *acusado* → *a ellos*

- *Daniel* → *libró* → *a del poder*

- *Daniel* → *fue* → *Darío*

- *Daniel* → *vio*

- *Daniel* → *escribió*

- *Daniel* → *turbaron*

- *Daniel* → *había*

- *Daniel* → *dijo*

- *Daniel* → *fue* → *a cuyo nombre*

- *Daniel* → *dijo* → *a las palabras que*

- *Daniel* → *dijo*

#### DARÍO

- *Darío* → *tomó*

- *Darío* → *Pareció* → *a constituir sobre*

- *Darío* → *Firmó* → *el rey*

- *Darío* → *escribió*

#### DEMANDA

- *demanda* → *es*

#### DICHA

- *dicha* → *es* → *tú*

#### DIFERENTE

- *diferente* → *era*

#### DIOS

- *Dios* → *dio* → *a Daniel*

- *Dios* → *dio*

- *Dios* → *mostrado* → *al rey lo que*

- *Dios* → *ardiendo* → *tu*

- *dios* → *levantado*

- *Dios* → *dijo* → *Sadrac*

- *dios* → *hay*

- *Dios* → *alto*

- *Dios* → *habían*

- *Dios* → *estaba* → *el rey*

- *Dios* → *Contó* → *tu*

- *dios* → *echado*

- *Dios* → *envió*

- *Dios* → *es*

- *Dios* → *es*

- *dios* → *engrandecerá*

- *Dios* → *hablará*

- *dios* → *engrandecerá*

- *dios* → *honrará* → *al Mauzim dios*

- *dios* → *conocieron*

- *dios* → *conocerá*

#### DIOS DEL CIELO

- *Dios del cielo* → *dado*

#### DOS

- *dos* → *semanas*

#### EJÉRCITO

- *ejército* → *será*

#### EL ALTÍSIMO

- *el altísimo* → *conoció* → *al que quisiera*

- *el Altísimo* → *hablará* → *a los santos del*

- *el Altísimo* → *quebrantará*

#### EL BARRO

- *el barro* → *cocido*

#### EL CONTINUO

- *el continuo* → *sacrificio*

#### EL CUERNO

- *el cuerno* → *miraba*

#### EL DIOS DEL CIELO

- *el Dios del cielo* → *levantará*

#### EL JEFE DE LOS EUNUCOS

- *el jefe de los eunucos* → *puso*

- *el jefe de los eunucos* → *dijo* → *a Daniel*

- *el jefe de los eunucos* → *había* → *Daniel*

- *el jefe de los eunucos* → *había*

- *el jefe de los eunucos* → *trajo* → *Nabucodonosor*

#### EL MAYORDOMO

- *el mayordomo* → *aconteció*

#### EL PUEBLO

- *el pueblo* → *ciudad*

- *el pueblo* → *hará* → *a su Dios*

#### EL SANTUARIO

- *el santuario* → *será*

#### EL SECRETO

- *el secreto* → *fue*

#### EL SEÑOR

- *el Señor* → *entregó* → *a Joacim*

#### EL SUEÑO

- *el sueño* → *es*

#### ELLOS

- *ellos* → *hubo* → *Daniel*

- *ellos* → *habló*

- *ellos* → *vino* → *a Dios*

- *ellos* → *cuando*

- *ellos* → *subía*

- *ellos* → *había*

- *ellos* → *salió*

- *ellos* → *hará* → *a su arbitrio, y*

- *ellos* → *predominará*

- *ellos* → *llevará*

#### ENOJO

- *enojo* → *mandó*

#### ESPÍRITU

- *espíritu* → *fue*

#### EST

- *est* → *cuando*

#### ESTA

- *Esta* → *es* → *el rey*

#### FIN

- *fin* → *pasarán*

#### FUEGO

- *fuego* → *ardiendo*

- *fuego* → *ardiendo*

- *fuego* → *ardiendo*

- *fuego* → *procedía*

#### FUERA

- *fuera* → *echado*

#### FUERE

- *fuere* → *quitado*

#### GRANDEZA

- *grandeza* → *volvieron* → *a mí, y mis*

#### HABRÁN

- *habrán* → *desamparado*

#### HORA

- *hora* → *será*

- *hora* → *salieron*

#### IMPI

- *impi* → *entenderá*

#### INUNDACIÓN

- *inundación* → *serán*

#### ISRAEL

- *Israel* → *traspasó* → *tu*

#### LA ESCRITURA

- *la escritura* → *estaba*

#### LA IMAGEN

- *la imagen* → *fue*

#### LA SEMANA

- *la semana* → *hará* → *el pueblo*

#### LA VISIÓN

- *la visión* → *es*

#### LAS ESTRELLAS

- *las estrellas* → *echó*

#### LAS FORTALEZAS

- *las fortalezas* → *formará*

#### LOS CALDEOS

- *los caldeos* → *fue*

- *Los caldeos* → *respondieron*

- *los caldeos* → *fue*

#### LOS LEONES

- *los leones* → *Respondió* → *a la ley de*

#### LOS MAGOS

- *los magos* → *preguntó* → *a todos*

#### LOS PUEBLOS EL

- *los pueblos el* → *sonido* → *Nabucodonosor*

#### LOS SABIOS

- *los sabios* → *mandó* → *a todos*

- *los sabios* → *buscaron*

- *los sabios* → *había*

- *los sabios* → *había* → *a de*

- *los sabios* → *sueño*

- *los sabios* → *será* → *a su cuello; y*

- *los sabios* → *sabiduría* → *a muchos: y caerán*

- *los sabios* → *determinado*

#### LOS SANTOS

- *los santos* → *dijo* → *a aquél que hablaba*

#### LUEGO

- *Luego* → *volverá* → *a las fortalezas de*

#### MANO

- *mano* → *será*

#### MAYOR

- *mayor* → *sabiduría*

#### MESAC

- *Mesac* → *Abed* → *tú*

- *Mesac* → *Abed* → *Al punto fueron os*

- *Mesac* → *Abed* → *Nabucodonosor*

- *Mesac* → *Abed*

- *Mesac* → *Abed*

- *Mesac* → *Abed*

- *Mesac* → *Abed*

#### MIGUEL

- *Miguel* → *puso*

- *Miguel* → *levantará* → *tu*

- *Miguel* → *será*

#### MILLONES

- *millones* → *asistían*

#### MONTESES

- *monteses* → *fue*

#### MUCHAS

- *muchas* → *provincias*

#### MULTITUD

- *multitud* → *será*

#### NABUCODONOSOR

- *Nabucodonosor* → *soñó*

- *Nabucodonosor* → *turbó*

- *Nabucodonosor* → *es*

- *Nabucodonosor* → *cayó*

- *Nabucodonosor* → *hizo*

- *Nabucodonosor* → *envió* → *a Nabucodonosor*

- *Nabucodonosor* → *había*

- *Nabucodonosor* → *había*

- *Nabucodonosor* → *dijo* → *a Sadrac*

- *Nabucodonosor* → *fue*

- *Nabucodonosor* → *espantó*

- *Nabucodonosor* → *acercó* → *a la puerta del*

- *Nabucodonosor* → *habló*

- *Nabucodonosor* → *sea*

- *Nabucodonosor* → *vino* → *el rey*

- *Nabucodonosor* → *cumplió*

- *Nabucodonosor* → *fue*

- *Nabucodonosor* → *había* → *el rey*

- *Nabucodonosor* → *dió* → *a tu*

#### NABUCODONOSOR, REY DE BABEL

- *Nabucodonosor, rey de Babel* → *vino* → *a Jerusalén y la*

- *Nabucodonosor, rey de Babel* → *sitió*

#### NEGOCIO

- *negocio* → *es*

#### NOMBRE

- *nombre* → *hablaron* → *a el pueblo*

#### NORTE

- *norte* → *volverá*

- *norte* → *levantará*

#### NOS

- *nos* → *librará*

#### NOSOTROS

- *nosotros* → *puso*

- *nosotros* → *fluido* → *Dios*

- *nosotros* → *habló*

- *nosotros* → *gobernaron*

- *nosotros* → *vino*

- *nosotros* → *rogado* → *a Dios*

- *nosotros* → *trajo*

#### PERPETUA

- *perpetua* → *eternidad*

#### PERSIA, LA

- *Persia, la* → *cual*

#### PRESENCIA

- *presencia* → *fue*

#### PRÍNCIPES

- *príncipes* → *entró* → *a la sala del*

#### PUESTOS

- *puestos* → *brazos*

#### RAMAS

- *ramas* → *hacían*

- *ramas* → *derribad*

#### REYES

- *reyes* → *será*

#### RIQUEZAS

- *riquezas* → *despertará* → *a todos contra el*

#### SADRAC

- *Sadrac* → *demudó* → *Mesac*

- *Sadrac* → *engrandeció* → *a Mesac*

#### SANTA

- *santa* → *ciudad* → *al Santo de los*

#### SANTO

- *santo* → *hará*

#### SANTUARIO

- *santuario* → *fue*

#### SEMANA

- *semana* → *confirmará* → *a muchos, y a*

#### SEÑOR

- *señor* → *preguntó* → *a ningún mago, ni*

#### SERÁN

- *serán* → *despertados*

#### SOL

- *sol* → *trabajó*

#### SU DIOS

- *su dios* → *llevó* → *a su dios*

- *su Dios* → *halló*

#### TAMBIÉN

- *también* → *desmenuzado*

- *también* → *quitado* → *a las otras bestias*

#### TIEMPO

- *tiempo* → *señalado*

#### TIERRA LA

- *tierra la* → *verdad*

#### TODOS

- *todos* → *había*

- *todos* → *había*

#### UNA PIEDRA

- *una piedra* → *fue*

#### VARÓN

- *varón* → *vestido*

#### VOSOTROS

- *vosotros* → *son* → *el rey*

- *vosotros* → *respondió* → *Yo*

- *vosotros* → *será* → *yo*

#### YO

- *yo* → *conviene*

- *Yo* → *estaba*

- *yo* → *cual* → *los sabios*

- *Yo* → *pudieron* → *tú*

- *yo* → *sentido*

- *Yo* → *halló*

- *Yo* → *vestido*

- *yo* → *debiese*

- *yo* → *Habló* → *Daniel*

- *Yo* → *tenía*

- *Yo* → *estaba*

- *yo* → *miraba* → *a un tigre, y*

- *yo* → *miraba*

- *yo* → *Estando*

- *yo* → *contemplando*

- *Yo* → *miraba* → *a causa de la*

- *yo* → *Miraba*

- *yo* → *turbado* → *Daniel*

- *yo* → *veía*

- *Yo* → *fue* → *Daniel*

- *yo* → *cuando*

- *yo* → *estaba*

- *yo* → *estando*

- *yo* → *había*

- *yo* → *estando* → *Daniel*

- *yo* → *Vino*

- *yo* → *estaba*

- *yo* → *dijo* → *al tiempo se cumplirá*

- *yo* → *quebrantado*

- *yo* → *habló* → *al profeta Jeremías, que*

- *yo* → *salió*

- *yo* → *espacio*

- *yo* → *estaba* → *a la orilla del*

- *yo* → *vieron*

- *yo* → *quedó*

- *yo* → *estaba*

- *yo* → *adormecido*

- *yo* → *hablando*

- *yo* → *vino*

- *yo* → *verdad* → *Miguel*

- *yo* → *verdad*

- *yo* → *estaban* → *a la orilla del*

- *yo* → *será*

## Movimiento

### Palabras que regresan

- *rey* — 171 · 1:1 · 1:2 · 1:3 · 1:4 · 1:5 · 1:8↩ · 1:10↩ · 1:13↩ · 1:15↩ · 1:18↩ · 1:19 · 1:20 · …

- *Daniel* — 75 · 1:6 · 1:7 · 1:8 · 1:9 · 1:10 · 1:11 · 1:17↩ · 1:19↩ · 1:21↩ · 2:13↩ · 2:14 · 2:15 · …

- *Dios* — 67 · 1:2 · 1:9↩ · 1:17↩ · 2:18↩ · 2:19 · 2:20 · 2:23↩ · 2:28↩ · 2:37↩ · 2:44↩ · 2:45 · 2:47↩ · …

- *reino* — 66 · 1:1 · 1:20↩ · 2:1↩ · 2:37↩ · 2:39↩ · 2:40 · 2:41 · 2:42 · 2:44↩ · 4:3↩ · 4:17↩ · 4:18 · …

- *delante* — 48 · 1:5 · 1:9↩ · 1:13↩ · 1:18↩ · 1:19 · 2:2↩ · 2:9↩ · 2:10 · 2:11 · 2:24↩ · 2:25 · 2:27↩ · …

- *dijo* — 43 · 1:3 · 1:10↩ · 1:11 · 2:3↩ · 2:5↩ · 2:8↩ · 2:15↩ · 2:20↩ · 2:24↩ · 2:25 · 2:26 · 2:27 · …

- *tierra* — 41 · 1:2 · 2:10↩ · 2:35↩ · 2:39↩ · 4:1↩ · 4:10↩ · 4:11 · 4:15↩ · 4:20↩ · 4:22↩ · 4:23 · 4:26↩ · …

- *será* — 40 · 2:9 · 2:40↩ · 2:41 · 2:42 · 2:44↩ · 3:6↩ · 3:15↩ · 4:25↩ · 4:27↩ · 4:32↩ · 5:7↩ · 6:26↩ · …

- *Entonces* — 39 · 2:4 · 2:14↩ · 2:15 · 2:19↩ · 2:25↩ · 2:35↩ · 2:46↩ · 2:48↩ · 3:13↩ · 3:19↩ · 3:21↩ · 3:24↩ · …

- *Nabucodonosor* — 32 · 1:1 · 1:18↩ · 2:1↩ · 2:28↩ · 2:46↩ · 3:1↩ · 3:2 · 3:3 · 3:5↩ · 3:7↩ · 3:9↩ · 3:13↩ · …

- *cielo* — 31 · 2:18 · 2:19 · 2:37↩ · 2:38 · 2:44↩ · 4:11↩ · 4:12 · 4:13 · 4:15↩ · 4:20↩ · 4:21 · 4:22 · …

- *interpretación* — 31 · 2:4 · 2:5 · 2:6 · 2:7 · 2:9↩ · 2:16↩ · 2:24↩ · 2:25 · 2:26 · 2:30↩ · 2:36↩ · 2:45↩ · …

- *días* — 26 · 1:12 · 1:14↩ · 1:15 · 1:18↩ · 2:28↩ · 2:44↩ · 5:11↩ · 6:7↩ · 6:12↩ · 7:9↩ · 7:13↩ · 7:22↩ · …

- *sueño* — 25 · 2:1 · 2:3↩ · 2:4 · 2:5 · 2:6 · 2:7 · 2:9↩ · 2:26↩ · 2:28↩ · 2:36↩ · 2:45↩ · 4:5↩ · …

- *tiempo* — 25 · 2:9 · 2:16↩ · 3:8↩ · 4:34↩ · 4:36↩ · 7:12↩ · 7:22↩ · 7:25↩ · 8:17↩ · 8:19↩ · 10:1↩ · 11:6↩ · …

- *Señor* — 23 · 1:2 · 1:10↩ · 2:10↩ · 2:47↩ · 4:19↩ · 4:24↩ · 5:16↩ · 5:23↩ · 5:29↩ · 9:3↩ · 9:4 · 9:7↩ · …

- *aquí* — 22 · 2:31 · 3:17↩ · 3:25↩ · 4:13↩ · 7:2↩ · 7:5↩ · 7:6 · 7:7 · 7:8 · 7:13↩ · 7:28↩ · 8:3↩ · …

- *visión* — 22 · 1:17 · 2:19↩ · 7:2↩ · 7:13↩ · 8:1↩ · 8:2 · 8:13↩ · 8:15↩ · 8:16 · 8:17 · 8:26↩ · 8:27 · …

- *habló* — 21 · 1:19 · 2:14↩ · 2:15 · 2:20↩ · 2:47↩ · 3:14↩ · 3:19↩ · 3:24↩ · 3:26↩ · 3:28↩ · 4:19↩ · 4:30↩ · …

- *oro* — 21 · 2:32 · 2:35↩ · 2:38↩ · 2:45↩ · 3:1↩ · 3:5↩ · 3:7↩ · 3:10↩ · 3:12↩ · 3:14↩ · 5:2↩ · 5:3 · …

- *fuego* — 20 · 3:6 · 3:11↩ · 3:15↩ · 3:17↩ · 3:20↩ · 3:21 · 3:22 · 3:23 · 3:24 · 3:25 · 3:26 · 3:27 · …

- *hará* — 20 · 8:24 · 8:25 · 9:27↩ · 11:2↩ · 11:3 · 11:5↩ · 11:7↩ · 11:16↩ · 11:17 · 11:18 · 11:20↩ · 11:23↩ · …

- *hierro* — 20 · 2:33 · 2:34 · 2:35 · 2:40↩ · 2:41 · 2:42 · 2:43 · 2:45↩ · 4:15↩ · 4:23↩ · 5:4↩ · 5:23↩ · …

- *mano* — 20 · 1:2 · 2:34↩ · 2:38↩ · 3:17↩ · 4:35↩ · 5:5↩ · 5:23↩ · 5:24 · 7:25↩ · 8:4↩ · 8:7↩ · 8:25↩ · …

- *parte* — 20 · 1:2 · 2:15↩ · 2:33↩ · 2:41↩ · 2:42 · 4:15↩ · 4:23↩ · 6:4↩ · 6:26↩ · 8:5↩ · 8:10↩ · 11:6↩ · …

- *pueblo* — 20 · 2:44 · 3:29↩ · 7:27↩ · 8:24↩ · 9:6↩ · 9:15↩ · 9:16 · 9:19↩ · 9:20 · 9:24↩ · 9:26↩ · 9:27 · …

- *gran* — 19 · 2:35 · 2:45↩ · 4:30↩ · 5:1↩ · 6:14↩ · 6:23↩ · 7:2↩ · 7:19↩ · 8:8↩ · 10:4↩ · 10:7↩ · 10:8 · …

- *Babel* — 17 · 1:1 · 2:12↩ · 2:14↩ · 2:18↩ · 2:24↩ · 2:48↩ · 2:49 · 3:1 · 3:12↩ · 3:30↩ · 4:6↩ · 4:29↩ · …

- *corazón* — 16 · 1:8 · 2:30↩ · 4:16↩ · 5:20↩ · 5:21 · 5:22 · 7:4↩ · 7:28↩ · 8:25↩ · 10:12↩ · 11:12↩ · 11:25↩ · …

- *grande* — 16 · 2:6 · 2:12↩ · 2:31↩ · 4:10↩ · 7:7↩ · 7:23↩ · 8:21↩ · 9:4↩ · 9:12↩ · 11:5↩ · 11:13↩ · 11:25↩ · …

- *hombre* — 16 · 2:10 · 3:10↩ · 4:16↩ · 5:5↩ · 6:7↩ · 6:12↩ · 7:4↩ · 7:8↩ · 7:13↩ · 8:15↩ · 8:16 · 8:17 · …

- *hombres* — 16 · 2:38 · 3:20↩ · 4:17↩ · 4:25↩ · 4:32↩ · 4:33 · 5:21↩ · 6:5↩ · 6:11↩ · 6:15↩ · 6:24↩ · 10:7↩

- *imagen* — 16 · 2:31 · 2:32 · 2:34↩ · 2:35 · 3:1↩ · 3:2 · 3:3 · 3:5↩ · 3:7↩ · 3:10↩ · 3:12↩ · 3:14↩ · …

- *rostro* — 16 · 2:46 · 3:19↩ · 7:28↩ · 8:17↩ · 8:18 · 8:23↩ · 9:3↩ · 9:7↩ · 9:8 · 9:17↩ · 10:6↩ · 10:9↩ · …

- *sabios* — 16 · 2:12 · 2:13 · 2:14 · 2:18↩ · 2:21↩ · 2:24↩ · 2:27↩ · 2:48↩ · 4:6↩ · 4:18↩ · 5:7↩ · 5:8 · …

- *vino* — 16 · 1:1 · 1:5↩ · 1:8↩ · 1:16↩ · 4:28↩ · 5:1↩ · 5:2 · 5:4↩ · 5:23↩ · 7:22↩ · 8:6↩ · 8:17↩ · …

- *Abed* — 15 · 1:7 · 2:49↩ · 3:12↩ · 3:13 · 3:14 · 3:16↩ · 3:19↩ · 3:20 · 3:22↩ · 3:23 · 3:26↩ · 3:28↩ · …

- *Mesac* — 15 · 1:7 · 2:49↩ · 3:12↩ · 3:13 · 3:14 · 3:16↩ · 3:19↩ · 3:20 · 3:22↩ · 3:23 · 3:26↩ · 3:28↩ · …

- *muchos* — 15 · 2:48 · 8:25↩ · 8:26 · 9:27↩ · 11:12↩ · 11:14↩ · 11:26↩ · 11:33↩ · 11:34 · 11:39↩ · 11:40 · 11:44↩ · …

- *nego* — 15 · 1:7 · 2:49↩ · 3:12↩ · 3:13 · 3:14 · 3:16↩ · 3:19↩ · 3:20 · 3:22↩ · 3:23 · 3:26↩ · 3:28↩ · …

### Fórmulas que regresan

- *En esto…* — 5 · 1:14 · 1:14 · 5:15 · 7:6 · 10:21

- *Sabemos / conocemos* — 2 · 3:18 · 6:15

- *Permanece* — 2 · 2:44 · 11:15

## Convergencia

{Puntos donde varias señales coinciden — evidencia para nombrar H2, no un título automático.}

- *5:23* — score 75 · opens · vocab-return, repeated-word-return, student-contrast, repeated-word

- *3:7* — score 57 · intensifies · student-pressure, repeated-word-return, repeated-word

- *5:7* — score 54 · intensifies · repeated-word-return, repeated-word

- *10:1* — score 51 · intensifies · vocab-return, vocab-convergence, repeated-word-return, repeated-word

- *4:23* — score 48 · intensifies · imperative, repeated-word-return, repeated-word

- *11:13* — score 48 · intensifies · repeated-word-return, repeated-word

- *7:19* — score 45 · intensifies · vocab-return, repeated-word-return, repeated-word

- *12:1* — score 45 · intensifies · vocab-return, repeated-word-return, repeated-word

- *3:10* — score 42 · intensifies · repeated-word-return, repeated-word

- *3:12* — score 42 · intensifies · repeated-word-return, repeated-word

- *5:21* — score 42 · intensifies · repeated-word-return, repeated-word

- *6:13* — score 42 · intensifies · vocab-return, repeated-word-return, repeated-word

- *2:45* — score 39 · intensifies · repeated-word-return, repeated-word

- *3:26* — score 39 · intensifies · imperative, repeated-word-return, repeated-word

- *4:32* — score 39 · intensifies · student-pressure, repeated-word-return, repeated-word

- *7:7* — score 39 · intensifies · repeated-word-return, repeated-word

- *8:8* — score 39 · intensifies · repeated-word-return, repeated-word

- *2:44* — score 38 · opens · vocab-return, repeated-word-return, student-contrast, formula, repeated-word

- *3:19* — score 36 · intensifies · repeated-word-return, repeated-word

- *3:28* — score 36 · intensifies · vocab-return, repeated-word-return, repeated-word

## Tensión

### Contrastes observados

- *1:8* — *manjares del rey* / *no contaminarse*

- *1:20* — *Daniel y compañeros* / *magos y encantadores*

- *2:27* — *sabios de Babel* / *Dios en el cielo*

- *2:32* — *oro* / *barro*

- *2:44* — *reinos de hombres* / *reino que no será destruido*

- *3:18* — *imagen de oro* / *servir a Dios*

- *3:25* — *horno de fuego* / *librados en medio*

- *4:17* — *soberbia del rey* / *dominio del Altísimo*

- *5:23* — *vasos de la casa de Dios* / *dioses de oro y plata*

- *6:10* — *decreto del rey* / *oración a Dios*

- *6:22* — *leones* / *ángel cerró su boca*

- *7:14* — *bestias* / *dominio eterno*

- *7:27* — *cuerno / reyes* / *pueblo de los santos*

- *12:2* — *despertar a vida eterna* / *despertar a vergüenza*

### Costuras de presión (taller)

- *after 1:8:1*

- *after 2:12:5*

- *after 3:6:4*

- *after 4:31:8*

- *after 5:5:3*

- *after 6:7:1*

- *after 12:1:3*

## Desarrollos H2 (taller)

{Inicios colocados por el estudiante — hipótesis de desarrollo continuo, no títulos H1/H2.}

- *after 1:8:1 → 1:8:17 · Daniel-puso-en-su-corazon*

- *after 2:1:5 → 2:1:8 · sueno-del-rey*

- *after 2:19:7 → 2:20:4 · secreto-revelado*

- *after 3:1:3 → 3:2:3 · imagen-de-oro*

- *after 4:1:13 → 4:2:4 · arbol-y-humillacion*

- *after 5:1:3 → 5:2:2 · escritura-en-la-pared*

- *after 7:1:8 → 7:1:15 · cuatro-bestias*

- *after 8:1:7 → 8:3:1 · carnero-y-macho-cabrío*

- *after 9:1:9 → 9:2:6 · setenta-semanas*

- *after 10:1:7 → 10:1:17 · vision-final*

- *after 12:1:3 → 12:2:5 · tiempo-del-fin*

## Definiciones (taller)

{Uso del autor en este libro — dossier del estudiante; no léxico ni sentido compuesto por la app.}

### *dios*

- *Relacionados* — *señor* · *altísimo* · *cielo*

- *2:28* — (equative) — Hay un Dios en el cielo, el cual revela los misterios

- *2:47* — (equative) — Ciertamente que vuestro Dios es Dios de dioses

- *1:9* — (use) — Y Dios dio a Daniel misericordia

- *1:17* — (use) — Dios les dio conocimiento y entendimiento

- *6:26* — (use) — él es el Dios viviente, y permanece para siempre

- *1:2* — (use)

- *2:11* — (use)

- *2:18* — (use)

- *2:19* — (use)

* Definición de trabajo: En Daniel, Dios / el Dios del cielo es quien da reinos, revela misterios y juzga a los reyes; no es un dios de Babel entre muchos.

### *reino*

- *Relacionados* — *reinado* · *reyes* · *poder*

- *2:21* — (use) — él muda los tiempos y las edades; quita reyes, y pone reyes

- *2:44* — (use) — el Dios del cielo levantará un reino que no será jamás destruido

- *4:17* — (use) — el Altísimo tiene dominio en el reino de los hombres

- *7:14* — (use) — su dominio es dominio eterno, que no pasará

- *7:27* — (use) — el reino y el dominio… será dado al pueblo de los santos

- *1:1* — (use)

- *1:20* — (use)

- *2:1* — (use)

- *2:37* — (use)

* Definición de trabajo: Reino nombra el dominio que Dios da y quita a los reyes de la tierra, y el reino eterno que no será destruido.

### *sueño*

- *Relacionados* — *sueños* · *visión* · *visiones*

- *2:1* — (use) — Nabucodonosor soñó sueños, y su espíritu se angustió

- *2:28* — (use) — él ha hecho saber al rey Nabucodonosor lo que ha de acontecer

- *4:5* — (use) — vi un sueño que me espantó

- *7:1* — (use) — Daniel tuvo un sueño y visiones de su cabeza

- *2:19* — (use) — Entonces el secreto fue revelado a Daniel en visión de noche

- *1:17* — (use)

- *2:2* — (use)

- *2:3* — (use)

- *2:4* — (use)

* Definición de trabajo: Sueño / visión es el medio por el cual Dios revela lo que ha de venir; exige interpretación que solo Dios da.

### *interpretación*

- *Relacionados* — *secreto* · *misterio* · *misterios*

- *2:5* — (use) — me daréis a conocer el sueño y su interpretación

- *2:27* — (contrast) — El secreto que el rey demanda, ni sabios… lo pueden declarar

- *2:30* — (use) — no por… sabiduría… sino para que… sepas la interpretación

- *5:15* — (contrast) — los sabios… no han podido mostrar la interpretación

- *5:26* — (use) — Esta es la interpretación del asunto

- *2:4* — (use)

- *2:6* — (use)

- *2:7* — (use)

- *2:9* — (use)

* Definición de trabajo: Interpretación es la explicación del sueño/secreto que los sabios de Babel no pueden dar y que Dios revela a Daniel.

### *sabios*

- *Relacionados* — *sabiduría* · *magos* · *caldeos* · *encantadores*

- *1:17* — (use) — Dios les dio conocimiento y entendimiento… y sabiduría

- *1:20* — (contrast) — diez veces superiores a todos los magos y encantadores

- *2:12* — (use) — mandó… que matasen a todos los sabios de Babel

- *2:27* — (contrast) — ni sabios, magos, ni… pueden declarar al rey

- *5:8* — (contrast) — no pudieron… leer la escritura ni hacer saber… la interpretación

- *2:13* — (use)

- *2:14* — (use)

- *2:18* — (use)

- *2:21* — (use)

* Definición de trabajo: Los sabios de Babel representan la sabiduría de la corte que falla ante el secreto de Dios; la sabiduría verdadera es don de Dios a Daniel.

### *imagen*

- *Relacionados* — *estatua* · *oro* · *hierro* · *barro*

- *2:31* — (use) — una grande imagen… su apariencia era terrible

- *2:32* — (contrast) — la cabeza… de oro fino; el pecho… de plata

- *2:33* — (contrast) — sus piernas de hierro; sus pies… hierro y… barro

- *3:1* — (use) — el rey Nabucodonosor hizo una imagen de oro

- *3:18* — (contrast) — no serviremos a tus dioses, ni adoraremos la imagen

- *2:34* — (use)

- *2:35* — (use)

- *3:2* — (use)

- *3:3* — (use)

* Definición de trabajo: La imagen del sueño (y la de oro en ch. 3) concentra reinos humanos y el desafío de adorar lo que no es Dios.

### *fuego*

- *Relacionados* — *horno* · *llama*

- *3:6* — (use) — será echado dentro de un horno de fuego ardiendo

- *3:17* — (use) — nuestro Dios… puede librarnos del horno de fuego

- *3:25* — (use) — he aquí yo veo cuatro varones sueltos… en medio del fuego

- *3:27* — (use) — ni el cabello… se había quemado

- *3:11* — (use)

- *3:15* — (use)

- *3:20* — (use)

- *3:21* — (use)

* Definición de trabajo: El fuego del horno es la prueba donde el rey exige adoración y Dios libró a sus siervos en medio de la llama.

### *leones*

- *Relacionados* — *foso* · *fosa*

- *6:7* — (use) — cualquiera que pidiere… sea echado en el foso de los leones

- *6:16* — (use) — fue echado en el foso de los leones

- *6:22* — (use) — mi Dios envió su ángel, el cual cerró la boca de los leones

- *6:24* — (contrast) — fueron echados… los hombres que habían acusado… y los leones se apoderaron de ellos

- *6:12* — (use)

- *6:19* — (use)

- *6:20* — (use)

- *6:27* — (use)

* Definición de trabajo: Los leones marcan la sentencia de la corte meda contra la oración a Dios; Dios cierra la boca de los leones.

## Hilo de taller

{Cadena nombrada por el estudiante — hipótesis de movimiento; no es título H1/H2.}

- *1:1* — Exile court — Nabucodonosor sitia Jerusalén; jóvenes en Babel

- *1:8* — Resolve — Daniel puso en su corazón no contaminarse

- *2:1* — Dream crisis — sueño del rey; sabios condenados

- *2:19* — Mystery given — secreto revelado a Daniel en visión

- *2:44* — Kingdom not destroyed — Dios del cielo levantará un reino eterno

- *3:1* — Image / furnace — imagen de oro; horno de fuego

- *4:1* — Tree / humbling — Nabucodonosor humillado hasta conocer al Altísimo

- *5:1* — Writing on the wall — Belsasar; mene tequel ufarsin

- *6:1* — Lions — decreto contra la oración; foso de leones

- *7:1* — Beasts / saints — cuatro bestias; dominio al Hijo del hombre / santos

- *9:1* — Seventy weeks — oración de Daniel; setenta semanas

- *10:1* — Final conflict — visión del hombre vestido de lino; príncipes

- *12:1* — End sealed — tiempo de angustia; sellar el libro

## Apéndice A — Conectores griegos

[^kai]: **καί**. Une esta cláusula con la anterior. Solo suma: añade otra idea a la misma línea. No da razón ni contraste.
[^de]: **δέ**. Continúa el desarrollo. A veces solo avanza («y…»); a veces marca un leve contraste («pero…»). Sigue conectada a lo anterior.
[^gar]: **γάρ**. Introduce la razón — el «por qué» de lo que se acaba de decir. No es propósito («para que…»).
[^dioti]: **διότι**. Introduce la razón, como γάρ: el fundamento de la frase anterior.
[^alla]: **ἀλλά**. Introduce un contraste: lo que sigue se aparta de la dirección anterior («pero» / «sino»).
[^oun]: **οὖν**. Introduce la conclusión: «entonces» / «por eso» — el siguiente paso lógico.
[^e]: **ἤ**. Une alternativas («o»).
[^hina]: **ἵνα**. Introduce el propósito — el «para qué» de la acción gobernante.
[^ei]: **εἰ**. Introduce una condición: lo que sigue depende de que se cumpla esa condición.
[^hoti]: **ὅτι**. Puede introducir el contenido (lo que se dice, se sabe o se piensa) o la razón (el «por qué»), según el contexto.
[^hos]: **ὡς**. Marca el momento o la manera relacionada con la frase anterior — a menudo el «cuándo» o el «como».
[^hote]: **ὅτε**. Marca el momento — el «cuándo».
[^conn]: Conector relacional. Une esta cláusula con lo anterior.

## Apéndice B — Formas verbales

[^part]: **Participio**. Forma verbal que no actúa como el verbo principal. Añade acción o detalle ligado a un nombre o a la afirmación cercana (a menudo se parece a «-ando / -iendo» o a un adjetivo hecho de un verbo).
[^inf]: **Infinitivo**. Nombra una acción sin ser el verbo principal. Completa el «qué» de un verbo cercano (debe, pide, quiere, puede…).

## Apéndice C — Observando la estructura

[^rel]: **Cláusula relativa**. No es el verbo principal de la sección; cuelga de un nombre (o persona o cosa) ya mencionado y añade detalle sobre ese anfitrión.