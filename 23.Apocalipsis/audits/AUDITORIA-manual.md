# Auditoría de *Lo que debe suceder pronto*

**Manuscrito:** `manual.md` — 5.391 líneas · 50.413 palabras · 795 notas al pie
**Alcance solicitado:** integridad estructural · consistencia traducción ↔ comentario · consistencia exegética y de método · flujo general
**Fuera de alcance (por indicación del autor):** verificación de exactitud del griego. Donde una forma griega aparece citada en un hallazgo, es porque contradice al *castellano impreso al lado*, no porque se esté evaluando el griego en sí. Al final hay una lista breve de erratas griegas evidentes, marcada como tal.

---

## 1. Resumen ejecutivo

El manual está construido sobre un método explícito y muy bueno: se imprime el texto en bloques `=`, se lo trocea en lemas citados textualmente, y cada lema recibe una observación sintáctica que declara lo que el texto hace y se niega a resolver lo que el texto deja abierto. En Apocalipsis 1–3 ese método se cumple al **100 %**.

**El hallazgo central de esta auditoría es que el método no sobrevive al libro.** Hay una ruptura localizable —comienza a agrietarse en 4:1 y se rompe del todo en 8:2— tras la cual el manual deja de ser un comentario sintáctico y pasa a ser una paráfrasis con negritas. No se trata de una impresión de lectura: es medible en cinco ejes independientes que se quiebran en el mismo punto (§3.1).

En cambio, **la infraestructura es sólida**. La cobertura de versículos es perfecta, no hay una sola nota rota, la jerarquía de encabezados es válida y el formato Markdown está limpio. Los problemas no son de higiene: son de consistencia de método y de sincronización entre capas del texto.

| | |
|---|---|
| Hallazgos críticos | 5 |
| Hallazgos altos | 6 |
| Hallazgos medios | 8 |
| Hallazgos bajos / cosméticos | 7 |
| Verificaciones superadas sin incidencias | 6 |

---

## 2. Lo que está bien (verificado, no supuesto)

Conviene fijarlo antes de los problemas, porque delimita dónde *no* hay que buscar.

1. **Cobertura de versículos completa y continua.** Los 404 versículos de Apocalipsis, de 1:1 a 22:21, están impresos exactamente una vez. Cero huecos, cero duplicados, cero solapamientos entre las 22 secciones `##`.
2. **Aparato de notas íntegro.** 795 definiciones, 776 referencias únicas. **Cero** referencias sin definir. **Cero** definiciones duplicadas. Solo 4 notas se reutilizan en dos lugares, y las cuatro son remisiones deliberadas.
3. **Jerarquía de encabezados válida.** Ningún salto de nivel (`h2` → `h4` sin `h3`) en todo el documento.
4. **Formato Markdown limpio.** Ningún bloque `=` malformado, ningún `***` desbalanceado, ningún encabezado pegado a su contenido sin línea en blanco, ningún `####` fuera de cursiva.
5. **«En síntesis» completo y parejo.** Las 22 secciones lo tienen; entre 100 y 248 palabras. Es el elemento más consistente del libro de principio a fin.
6. **Apocalipsis 1–3 es excelente.** 129 lemas, 129 citados textualmente. Método declarado y método ejecutado coinciden sin una sola excepción.

---

## 3. Hallazgos críticos

### 3.1 — La ruptura de método en 8:2 *(afecta a más de la mitad del libro)*

En 1:1–3:22 los encabezados `####` son **citas literales** del texto impreso arriba: el lector puede seguir con el dedo del bloque `=` al encabezado y del encabezado al comentario. A partir de 8:2 los `####` pasan a ser **rótulos editoriales** —telegráficos, con punto y coma, en tercera persona— que ya no aparecen en el texto que dicen encabezar.

Cinco métricas independientes se quiebran en el mismo lugar:

| Sección | Línea | vv. | Lemas literales | Notas/v. | Palabras/v. | Viñetas |
|---|---|---|---|---|---|---|
| 1:1–8 | 65 | 8 | **100 %** | 4,5 | 137 | 25 |
| 1:9–20 | 204 | 12 | **88 %** | 3,8 | 108 | 43 |
| 2:1–7 | 401 | 7 | **100 %** | 5,4 | 127 | 21 |
| 2:8–11 | 542 | 4 | **100 %** | 6,5 | 205 | 11 |
| 2:12–17 | 650 | 6 | **100 %** | 6,7 | 133 | 14 |
| 2:18–29 | 770 | 12 | **100 %** | 4,0 | 78 | 18 |
| 3:1–6 | 919 | 6 | **100 %** | 5,5 | 103 | 14 |
| 3:7–13 | 1052 | 7 | **100 %** | 7,0 | 125 | 20 |
| 3:14–22 | 1195 | 9 | **100 %** | 5,7 | 99 | 23 |
| 4:1–5:14 | 1367 | 25 | 80 % | 4,0 | 110 | 17 |
| 6:1–8:1 | 1746 | 35 | 81 % | 2,0 | 50 | 2 |
| **8:2–11:19** | **2054** | **63** | **31 %** | **0,9** | **32** | **1** |
| 12:1–17 | 2437 | 17 | 29 % | 1,3 | 59 | **0** |
| 13:1–18 | 2581 | 18 | 29 % | 1,3 | 66 | **0** |
| 14:1–20 | 2731 | 20 | **0 %** | 0,9 | 56 | **0** |
| 15:1–16:21 | 2863 | 29 | 3 % | 1,0 | 51 | **0** |
| 17:1–19:10 | 3053 | 52 | 10 % | **0,5** | 35 | **0** |
| 19:11–21 | 3289 | 11 | 8 % | 1,0 | 72 | **0** |
| 20:1–10 | 3377 | 10 | 15 % | 1,3 | 80 | **0** |
| 20:11–15 | 3467 | 5 | 22 % | 1,6 | 99 | **0** |
| 21:1–22:5 | 3533 | 32 | 5 % | 0,6 | 36 | **0** |
| 22:6–21 | 3689 | 16 | 8 % | 0,9 | 50 | **0** |

Contraste concreto. Así se ve el método en 2:5 (L490):

> `#### *y quitaré tu candelabro de su lugar, si no te arrepientes*` — cita literal del v. 5 impreso arriba.

Y así en 9:2 (L2267):

> `#### *Y abrió el pozo del abismo; humo; sol y aire oscurecidos*` — no existe en ningún versículo; es un resumen del auditor sobre 9:2, con dos puntos y coma.

**Por qué importa más allá del estilo.** El encabezado dejó de ser una unidad de texto y pasó a ser una unidad de contenido. Con ello desaparece la promesa de la Introducción («¿Qué acaba de decir? ¿Quién habló?»): en 17:1–19:10 el lector no puede saber qué palabras exactas está comentando el manual, porque el encabezado ya no se las devuelve.

**Corrección.** Reescribir los encabezados `####` de 8:2 en adelante como citas literales del bloque `=` de su propia sección. El anexo A lista los 121 encabezados sin correspondencia y el anexo B los 103 casi-literales. Es el trabajo más grande del manuscrito y también el que más devuelve.

---

### 3.2 — El árbol de viñetas anidadas desaparece a partir de 12:1

El dispositivo analítico distintivo del manual —la viñeta anidada que muestra qué cuelga de qué— existe hasta el capítulo 11 y **no aparece ni una sola vez** en las diez secciones finales (12:1 al 22:21, 210 versículos).

Comparación. En 1:1–3 (L89–106) el texto se despliega:

```
- *que Dios le dio*
  - *para mostrar a sus siervos*
    - *las cosas que deben suceder pronto*
- *y la dio a conocer*
  - *enviándola por medio de su ángel*
  - *a su siervo Juan*
    - *quien dio testimonio*
```

En 21:1–22:5, 32 versículos, hay **0 viñetas**. Toda la subordinación —que es precisamente lo que un comentario sintáctico existe para mostrar— queda sin representar en la mitad final del libro.

Ya en 6:1–8:1 la caída es brusca: 35 versículos, 2 viñetas. El punto de quiebre real de este eje está en 6:1, antes que el de §3.1.

---

### 3.3 — El Apéndice D deja de estar subdividido después de 2:18–29

`# Apéndices` (L3791) contiene cuatro apéndices. El Apéndice D — «Notas técnicas por pasaje», que es el aparato completo del libro — tiene encabezados `###` solo para seis secciones:

```
### Apocalipsis 1:1–8      (L3825)
### Apocalipsis 1:9–20     (L3899)
### Apocalipsis 2:1–7      (L3991)
### Apocalipsis 2:8–11     (L4069)
### Apocalipsis 2:12–17    (L4123)
### Apocalipsis 2:18–29    (L4205)   ← último encabezado del apéndice
```

Después de L4205 no hay ni un encabezado más. **544 notas** —de `ap-3-1-grapson` (L4304) hasta `ap-22-21-charis` (L5390), es decir el 68 % del aparato, capítulos 3 a 22 completos— quedan volcadas bajo el rótulo «Apocalipsis 2:18–29».

Consecuencia práctica: en cualquier índice generado, en cualquier navegación por encabezados y en cualquier PDF con marcadores, todo el aparato de los capítulos 3–22 aparece archivado bajo la carta a Tiatira. El apéndice es inconsultable salvo por búsqueda de texto.

**Corrección:** insertar `### Apocalipsis X:Y–Z` antes de la primera nota de cada una de las 16 secciones restantes, replicando exactamente los rótulos `##` del cuerpo.

---

### 3.4 — Colapso de la densidad del comentario

Independiente de §3.1, y medible aparte:

- **Notas por versículo:** 7,0 en 3:7–13 → **0,5** en 17:1–19:10. Una caída de 14×.
- **Palabras de comentario por versículo:** 205 en 2:8–11 → **32** en 8:2–11:19.
- **Profundidad de las notas:** en 1:1–8 el 81 % de las notas contiene análisis morfológico real (lema, caso, tiempo, voz, número). Del capítulo 3 en adelante, solo el **23 %**. El resto son glosas que repiten en castellano lo que el cuerpo ya dijo.

Ejemplo de la degradación. Nota temprana (L3829):

> `[^ap-1-1-hen]: **ἣν** — lema: **ὅς**; pronombre relativo, acusativo femenino singular. Tiene como antecedente **Ἀποκάλυψις** y funciona como objeto de **ἔδωκεν**.`

Nota tardía (L5002):

> `[^ap-11-8-plaza]: **ἐπὶ τῆς πλατείας τῆς πόλεως τῆς μεγάλης** — plaza de la gran ciudad.`

La segunda no aporta nada que el lector no tenga ya en el bloque `=`. No es una nota técnica: es una repetición.

El desequilibrio se ve mejor así: **Apocalipsis 1–3 (73 versículos) tiene 366 notas. Apocalipsis 12–22 (210 versículos) tiene 191.** Casi tres veces menos aparato para casi tres veces más texto.

---

### 3.5 — 28 encabezados convierten el «yo» del texto en «Juan» en tercera persona

Esto contradice una regla que el propio manual formula dos veces y en términos explícitos.

En 5:4 (L1618), sobre `καὶ ἐγὼ ἔκλαιον`:

> «Aquí sí ***yo*** (ἐγώ) — no inventarlo en 5:1–2, pero tomarlo cuando el griego lo trae.»

En 6:1 (L1806):

> «El cordero actúa; Juan narrador-testigo — no inventar *yo* donde el griego no lo trae.»

La distinción entre lo que el texto dice en primera persona y lo que dice en tercera es, por decisión del autor, un dato que el manual sigue con cuidado. A partir del capítulo 9 los encabezados la borran sistemáticamente. Los 28 casos:

| Línea | Encabezado | Texto impreso |
|---|---|---|
| 2313 | «…Juan oyó el número» | *y oí el número* |
| 2343 | «Juan estaba por escribir…» | *yo estaba por escribir* |
| 2617 | «Juan en la arena del mar…» | *Y me paré sobre la arena del mar* |
| 2627 | «Juan vio una cabeza…» | *Y vi una de sus cabezas* |
| 2675 | «Juan vio otra bestia…» | *Y vi otra bestia* |
| 2773 | «Juan oyó voz del cielo…» | *Y oí una voz del cielo* |
| 2783 | «Juan vio otro ángel…» | *y vi otro ángel* |
| 2813 | «Juan oyó: Escribe…» | *y oí una voz… que me decía* |
| 2823 | «Juan vio nube blanca…» | *Y vi… una nube blanca* |
| 2911 | «Juan vio otra señal…» | *Y vi otra señal* |
| 2947 | «Juan oyó gran voz…» | *Y oí una gran voz* |
| 2965 | «Juan oyó al ángel de las aguas…» | *y oí al ángel de las aguas* |
| 2973 | «Juan oyó otro desde el altar…» | *y oí a otro desde el altar* |
| 3001 | «Juan vio tres espíritus impuros…» | *Y vi… tres espíritus impuros* |
| 3161 | «…Juan se asombró» | *y me asombré* |
| 3199 | «Juan vio ángel bajar del cielo…» | *Y después de esto **vi** a otro ángel* |
| 3249 | «…Juan oyó: ¡Aleluya!» | *Y después de estas cosas **oí** una gran voz* |
| 3275 | «Juan cayó para adorar…» | *Y **caí** delante de sus pies para adorarlo* |
| 3311 | «Juan vio el cielo abierto…» | *Y vi el cielo abierto* |
| 3339 | «Juan vio un ángel de pie en el sol» | *y vi a un ángel de pie en el sol* |
| 3353 | «Juan vio la bestia…» | *Y vi a la bestia* |
| 3397 | «Juan vio un ángel con llave…» | *Y vi un ángel* |
| 3415 | «Juan vio tronos…» | *Y vi tronos* |
| 3479 | «Juan vio un trono blanco grande…» | *Y vi un trono blanco grande* |
| 3489 | «Juan vio a los muertos…» | *Y vi a los muertos* |
| 3583 | «Juan vio cielo nuevo…» | *Y vi cielo nuevo* |
| 3587 | «Juan vio la nueva Jerusalén…» | *Y **yo, Juan, vi** la ciudad santa* — el caso más agudo: el texto trae «Yo, Juan» explícito |
| 3641 | «Juan no vio templo…» | *y no vi templo en ella* |

Ninguno aparece antes del capítulo 9. El caso más agudo es L2617 (13:1): el versículo impreso dice *«Y me paré sobre la arena del mar»* —primera persona explícita, la lectura de Scrivener que el manual declara seguir— y el encabezado la convierte en «Juan en la arena del mar». Ver también §4.4, donde la nota correspondiente cita una forma griega que no concuerda con ninguna de las dos.

---

## 4. Hallazgos altos

### 4.1 — Los encabezados de 4:1–5:14 conservan un borrador anterior de la traducción

Once encabezados de esta sección difieren del bloque `=` de forma sistemática: **presente donde el versículo tiene pasado, y artículo omitido donde el versículo lo tiene**. El patrón es demasiado regular para ser casual: la traducción impresa fue revisada y los encabezados no se actualizaron.

| Línea | Encabezado (borrador viejo) | Bloque `=` (versión vigente) |
|---|---|---|
| 1454 | «y sobre el trono uno sentado» | *y uno sentado en el trono* |
| 1460 | «el que **está** sentado… a piedra de jaspe» | *el que **estaba** sentado… a **una** piedra de jaspe* |
| 1464 | «semejante en apariencia a esmeralda» | *semejante en apariencia a **una** esmeralda* |
| 1470 | «Y alrededor del trono veinticuatro tronos» | *y alrededor del trono **había** veinticuatro tronos* |
| 1486 | «relámpagos, truenos y voces» | *relámpagos **y** truenos **y** voces* |
| 1520 | «el tercer ser viviente **tiene** el rostro» | *el tercer ser viviente **tenía** el rostro* |
| 1530 | «cada uno por sí **mismo**, **tienen** seis alas» | *cada uno por sí, **tenían** seis alas* |
| 1564 | «**caerán los veinticuatro ancianos** delante» | *los veinticuatro ancianos **caerán** delante* |
| 1594 | «del que **está** sentado en el trono» (5:1) | *del que **estaba** sentado en el trono* |
| 1655 | «del que **está** sentado en el trono» (5:7) | *del que **estaba** sentado en el trono* |
| 1719 | «y toda criatura… las oí diciendo» | *y toda criatura que está en el cielo…* |

Corrección mecánica: alinear los once con el bloque `=`. Vale la pena revisar además si la revisión de tiempos verbales quedó completa en el propio bloque `=` o si hay más lugares donde el presente sobrevivió.

---

### 4.2 — El encabezado de 12:10 suprime «de nuestro Dios» y cambia a quién pertenece el reino

**L2451 (versículo impreso):**
> *Ahora han llegado la salvación, el poder, el reino **de nuestro Dios** y la autoridad de su Cristo…*

**L2523 (encabezado):**
> `#### *Ahora han llegado la salvación, el poder, el reino y la autoridad de su Cristo*`

**L2525 (comentario):** restituye correctamente *«el reino de nuestro Dios y la autoridad de su Cristo»*.

El encabezado deja «el reino» y «la autoridad» colgando ambos de «de su Cristo». No es una abreviatura inocua: reasigna el reino. Y como el encabezado es lo que un índice o un sumario recogerá, es la versión que más circula. **Corregir el encabezado al texto impreso.**

---

### 4.3 — El encabezado y la glosa de 8:11 sustituyen la palabra del texto por su efecto

**L2072 (versículo impreso):**
> *la tercera parte de las aguas **se convierte en ajenjo**, y muchos de los hombres murieron por las aguas, porque se hicieron amargas*

**L2233 (encabezado):** «la tercera parte de las aguas **se volvió amarga**»
**L2235 (comentario):** «la tercera parte de las aguas **se volvió amarga** (γίνεται τὸ τρίτον τῶν ὑδάτων **εἰς ἄψινθον**)»

Las tres capas se contradicen entre sí: el versículo dice *ajenjo*, el griego citado en la misma línea dice *ajenjo* (`εἰς ἄψινθον`), y el castellano de la glosa dice *amarga*. «Amarga» es lo que el versículo explica **después** («porque se hicieron amargas»); adelantarlo al lugar de la palabra propia es exactamente el movimiento interpretativo que la Introducción se compromete a no hacer. **Restituir «se convierte en ajenjo» en encabezado y glosa.**

---

### 4.4 — Apocalipsis 13:1: el versículo, el comentario y la nota dicen tres cosas distintas

| Capa | Línea | Contenido |
|---|---|---|
| Versículo impreso | 2583 | *«**Y me paré** sobre la arena del mar»* — primera persona |
| Encabezado | 2617 | «**Juan en** la arena del mar» — tercera persona |
| Comentario | 2619 | «**Juan estaba de pie** sobre la arena (Καὶ **εἱστηκότος** ἐπὶ τὴν ἄμμον)» |
| Nota | 5064 | `**Καὶ εἱστηκότος ἐπὶ τὴν ἄμμον τῆς θαλάσσης** — Juan de pie sobre la arena del mar.` |

La traducción impresa corresponde a la lectura de Scrivener, que es la base declarada en L3823. La forma citada en el comentario y en la nota es un participio en genitivo que no concuerda con esa lectura ni con la que traduce el versículo impreso arriba. Sea cual sea la decisión textual, **las cuatro capas tienen que decir lo mismo**, y hoy no lo hacen. Este es además el único lugar donde el manual pierde un «yo» que el texto sí trae — el caso que §3.5 documenta como regla violada.

---

### 4.5 — Cita griega adosada a la frase castellana equivocada (13:4)

**L2633:**
> «***adoraron al dragón*** (ὁ ἔδωκεν τὴν ἐξουσίαν τῷ θηρίῳ) ***y adoraron a la bestia***»

El griego entre paréntesis significa *«que dio la autoridad a la bestia»* — es la cláusula relativa, no «adoraron al dragón». El versículo impreso (L2589) trae ambas cosas correctamente separadas: *«Y adoraron al dragón, que dio autoridad a la bestia»*. La cita quedó pegada al segmento anterior. Dado que en este manual el paréntesis griego es un compromiso de correspondencia uno a uno, el desliz es de fondo. Conviene revisar la sección completa buscando otros paréntesis desplazados.

---

### 4.6 — 121 encabezados sin correspondencia verificable en su propio bloque `=`

Es la manifestación cuantificada de §3.1, separada aquí porque cada caso requiere una edición individual. Ningún caso está antes de 1:9–20; el 94 % está a partir de 8:2. Lista completa en el **anexo A**. Los 103 casos «casi-literales» —donde la corrección es de una o dos palabras— están en el **anexo B**; conviene atacarlos primero por relación esfuerzo/beneficio.

---

## 5. Hallazgos medios

### 5.1 — El sistema de énfasis cambia dos veces en las primeras tres secciones y nunca se explica

| Sección | `<u>subrayado</u>` | `***negrita***` |
|---|---|---|
| 1:1–8 | 10 | 17 |
| 1:9–20 | 20 | **0** |
| 2:1–7 en adelante | **0** | 35–143 por sección |

Tres convenciones distintas en las tres primeras secciones: 1:1–8 usa ambas, 1:9–20 usa solo subrayado, y de 2:1 hasta el final solo negrita. El subrayado no vuelve a aparecer jamás después de la línea 384. Ningún lugar del libro dice qué significa cada marca ni en qué se diferencian. **Decidir una convención, aplicarla a todo el libro y declararla** (ver §5.2).

### 5.2 — No hay sección «Cómo usar este manual»

El lector llega a L67 y se encuentra con `= **1** *Revelación de Jesús Cristo…*`, y enseguida con encabezados en cursiva, viñetas anidadas, bloques de cita, negrita triple, subrayado y llamadas a notas — sin ninguna clave. La Introducción explica la *actitud* de lectura («leer, oír y guardar») pero no la *mecánica* de la página. Falta una sección breve —media página— que explique: el bloque `=`, el lema en `####`, la viñeta de subordinación, la observación en `>`, el sistema de énfasis, el paréntesis griego, la nota al pie y el «En síntesis».

### 5.3 — «LBF» se usa diez veces sin expandir nunca

Aparece en L588, L684 y en ocho notas (L3891, 3937, 3949, 3953, 3957, 3985, 4139, 4219, 4233). Nunca se dice qué es. Un lector que llegue a L588 —«Sin cópula repetida en griego ni en LBF»— no tiene forma de saber a qué se refiere. **Expandir en su primera aparición y declararlo en la sección de convenciones.**

### 5.4 — El texto griego de base se declara enterrado en el Apéndice D

L3823: *«Texto griego de referencia: Scrivener 1894 (Textus Receptus). Variantes solo cuando afectan la observación.»*

Es una decisión editorial de primer orden —determina cada lectura del libro— y está en la línea 3823, dentro de un apéndice, después de todo el cuerpo. La Introducción, que sí discute la fecha de composición y el género literario, no menciona ni el texto griego usado ni la traducción castellana empleada. **Ambas cosas pertenecen a la Introducción.**

### 5.5 — Los apéndices A, B y C son notas al pie que nadie referencia

19 definiciones (L3795–L3819) constituyen los tres primeros apéndices: `[^kai]`, `[^de]`, `[^gar]`, `[^part]`, `[^inf]`, `[^nom]`, `[^rel]`, etc. **Ninguna se cita ni una sola vez en el cuerpo.**

Están escritas como glosario —y son buenas, explican los conectores griegos y las formas verbales en lenguaje llano— pero implementadas como notas al pie. Según el procesador de Markdown, o bien no se renderizan en absoluto, o bien aparecen como notas huérfanas al final. En cualquier caso el lector que tropiece con `γάρ` en el cuerpo no llega a `[^gar]`, porque nada lo enlaza.

Además, `[^part]` (L3811) y `[^P]` (L3813) son **idénticas palabra por palabra**, igual que `[^inf]` (L3812) y `[^I]` (L3814). Cuatro definiciones para dos conceptos.

**Corrección:** convertir A, B y C en listas de definición normales (no notas al pie), o bien enlazarlas efectivamente desde el cuerpo. Y eliminar el par duplicado.

### 5.6 — Dos formatos de numeración de versículo conviven

Las secciones de un solo capítulo usan `= **1**`; las de varios capítulos usan `= **4:1**`. Es defendible, pero produce saltos visibles (la sección 12:1–17 vuelve a `**1**` justo después de que 8:2–11:19 usara `**11:19**`). **Recomendación: `capítulo:versículo` en todo el libro**, que además hace cada bloque citable de forma autónoma.

### 5.7 — Identificador de nota mal etiquetado

`[^ap-10-6-ouai]` (referenciada en L2349, definida en L4984) contiene `ὅτι χρόνος οὐκ ἔσται ἔτι` — «el tiempo ya no será». Nada que ver con `οὐαί` («ay»). El identificador viene arrastrado de `[^ap-8-13-ouai]` / `[^ap-12-12-ouai]`, que sí tratan de los ayes. En un aparato donde el identificador *es* el índice, un rótulo falso es un error de catálogo. Sugerido: `ap-10-6-chronos`.

### 5.8 — La Parte II es un bloque indiviso de diecinueve capítulos

```
# APOCALIPSIS 1:1–3:22    (L63)    →   3 capítulos, 1.302 líneas
# APOCALIPSIS 4:1–22:5    (L1365)  →  19 capítulos, 2.322 líneas
# APOCALIPSIS 22:6–21     (L3687)  →  16 versículos,  104 líneas
```

La Parte II abarca el 86 % del texto bíblico bajo un solo encabezado de primer nivel. Los grandes movimientos internos —sellos, trompetas, señales, copas, juicio de Babilonia, ciudad nueva— quedan todos al mismo nivel `##`, sin ninguna articulación superior. La propia Introducción anuncia que «el libro cambia de escala constantemente»; la estructura no refleja ese cambio de escala en ningún punto entre 4:1 y 22:5.

---

## 6. Hallazgos bajos y cosméticos

| # | Línea | Problema | Corrección |
|---|---|---|---|
| 6.1 | 1574 | «ahora **las** ancianos las depositan» | «**los** ancianos» |
| 6.2 | 2273, 4960 | «escorpios» — el texto impreso dice «escorpiones» (L2082, L2094) | unificar en «escorpiones» |
| 6.3 | 3737–3739 | El encabezado recoge 2 de las 4 líneas paralelas de 22:11, mientras el comentario justo debajo dice «Cuatro líneas paralelas» | completar el encabezado |
| 6.4 | 2745 vs 3085 | 14:8 «Babilonia, la ciudad grande» / 18:2 «Babilonia la grande». La diferencia responde a Scrivener, pero nada lo dice y el lector la leerá como descuido | nota al pie en 14:8 |
| 6.5 | 63, 1365, 3687 | Títulos de parte en VERSALES; «Introducción» y «Apéndices» en caja normal | unificar |
| 6.6 | — | No hay índice ni tabla de contenidos | añadir |
| 6.7 | — | Hay Introducción pero no cierre. El libro termina en el «En síntesis» de 22:6–21 (L3787) y pasa directo a los apéndices | la Introducción promete un recorrido «hacia el cumplimiento»; una página final que lo recoja cerraría el arco |

### Erratas griegas evidentes *(fuera del alcance solicitado — se anotan sin analizar)*

| Línea | Impreso | Probable |
|---|---|---|
| 2405 | `φωναὶ μεγάλες` | `φωναὶ μεγάλαι` |
| 2417 | `ἡ κιβωτὸς τοῦ διαθήκης` | `τῆς διαθήκης` |
| 2371 | `τοῖς δύο μάρτυρες μου` | `τοῖς δυσὶν μάρτυσίν μου` |
| 2681 | `τῆς πρώτης θηρίου` | `τοῦ πρώτου θηρίου` |

No se hizo verificación sistemática del griego. Estos cuatro saltaron a la vista durante la lectura; **es razonable suponer que hay más**, y la ausencia de una revisión de este eje conviene tenerla presente al planificar el trabajo.

---

## 7. Plan de corrección sugerido

**Orden por relación esfuerzo / beneficio, no por severidad.**

**Fase 1 — mecánico, alto impacto (unas pocas horas)**
1. Insertar los 16 encabezados `###` faltantes en el Apéndice D (§3.3). Devuelve la navegabilidad del 68 % del aparato.
2. Corregir los 11 encabezados de 4:1–5:14 (§4.1) — lista cerrada, edición literal.
3. Corregir 12:10 (§4.2), 8:11 (§4.3), 13:4 (§4.5), y las erratas de §6.1–6.3.
4. Renombrar `ap-10-6-ouai` (§5.7); eliminar el par duplicado de notas (§5.5).

**Fase 2 — decisiones editoriales (media jornada)**
5. Redactar «Cómo usar este manual» (§5.2), declarando en ella el sistema de énfasis (§5.1), «LBF» (§5.3) y el texto griego de base (§5.4).
6. Unificar el formato de numeración de versículos (§5.6).
7. Resolver 13:1 en las cuatro capas (§4.4).

**Fase 3 — el trabajo de fondo**
8. Reescribir los encabezados de 8:2 en adelante como lemas literales (§3.1). Empezar por el anexo B (103 casos de una o dos palabras) antes que por el anexo A.
9. Deshacer los 28 encabezados en tercera persona (§3.5) — se resuelve dentro del paso 8.
10. Restituir el árbol de viñetas en 12:1–22:21 (§3.2).
11. Nivelar el aparato de los capítulos 12–22 (§3.4).

**Fase 4 — pendiente de decisión**
12. Articular la Parte II en movimientos (§5.8).
13. Índice y cierre (§6.6, §6.7).
14. Encargar una revisión del griego, no cubierta aquí.

**Nota realista sobre el alcance.** Las fases 1 y 2 son acotadas y dejan el manuscrito consistente en todo lo verificable mecánicamente. La fase 3 es de otra magnitud: son ~224 encabezados, ~210 versículos sin viñetas y un aparato a duplicar. Si el objetivo es publicar antes de poder hacer la fase 3, la alternativa honesta no es dejarla a medias, sino **declarar el cambio de registro en el prólogo** —decir que la Parte II presenta el texto en tramos más amplios— para que el lector no lo lea como un libro que se cansó, sino como una decisión.

---

## Anexo A — Encabezados sin correspondencia en su bloque `=` (121)

Líneas: 290, 877, 1227, 1454, 1977, 2026, 2267, 2271, 2275, 2279, 2287, 2291, 2305, 2309, 2317, 2325, 2347, 2351, 2365, 2377, 2381, 2385, 2389, 2407, 2411, 2485, 2531, 2617, 2621, 2631, 2663, 2675, 2679, 2689, 2695, 2699, 2709, 2773, 2777, 2783, 2803, 2823, 2827, 2837, 2841, 2845, 2911, 2919, 2923, 2941, 2947, 2951, 2959, 2965, 2973, 2983, 2991, 2997, 3001, 3005, 3019, 3027, 3035, 3145, 3149, 3153, 3157, 3161, 3175, 3179, 3189, 3199, 3207, 3215, 3225, 3229, 3239, 3243, 3249, 3253, 3257, 3261, 3275, 3315, 3329, 3339, 3343, 3347, 3353, 3357, 3361, 3397, 3405, 3415, 3423, 3427, 3437, 3583, 3587, 3591, 3595, 3603, 3613, 3617, 3621, 3631, 3635, 3641, 3645, 3649, 3655, 3659, 3663, 3725, 3729, 3737, 3741, 3745, 3749, 3755, 3765

## Anexo B — Encabezados casi-literales, corrección de 1–2 palabras (103)

Líneas: 348, 878, 1460, 1464, 1470, 1486, 1520, 1530, 1564, 1594, 1655, 1969, 1992, 1996, 2012, 2176, 2180, 2184, 2198, 2202, 2220, 2229, 2233, 2243, 2263, 2283, 2295, 2313, 2335, 2339, 2343, 2361, 2369, 2373, 2393, 2403, 2415, 2419, 2477, 2481, 2491, 2499, 2505, 2509, 2513, 2519, 2523, 2527, 2543, 2549, 2553, 2627, 2645, 2659, 2685, 2703, 2769, 2787, 2793, 2799, 2807, 2813, 2817, 2831, 2915, 2933, 2937, 2955, 2969, 2979, 2987, 3009, 3013, 3023, 3031, 3171, 3185, 3203, 3211, 3221, 3235, 3267, 3311, 3319, 3325, 3401, 3419, 3433, 3441, 3447, 3479, 3483, 3489, 3493, 3497, 3503, 3511, 3599, 3667, 3715, 3719, 3759, 3769

## Anexo C — Notas definidas y nunca referenciadas (19)

L3795–3807 (Apéndice A): `kai`, `de`, `gar`, `dioti`, `alla`, `oun`, `e`, `hina`, `ei`, `hoti`, `hos`, `hote`, `conn`
L3811–3814 (Apéndice B): `part`, `inf`, `P`, `I`
L3818–3819 (Apéndice C): `nom`, `rel`

---

*Auditoría realizada sobre `manual.md`, versión 1.0, fechada 2026-08-27. Las líneas citadas corresponden a ese archivo sin modificar; cualquier edición las desplazará.*
