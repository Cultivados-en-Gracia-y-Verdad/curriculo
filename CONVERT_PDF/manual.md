---
title: "Romanos 1-8"
subtitle: "El Evangelio de Poder"
author: "CGV"
cover: "images/tapa.png"
version: "0.6"
date: "2026-01-29"
---

La sección en la parte superior (antes de cualquier otra cosa) es colocar una sección muy importante. Esto sirve de información para hacer los manuales. Datos que deben incluirse exáctamente de la misma manera (barras intermedias incluidas):

```YAML
---
title: "Romanos 1-8"
subtitle: "El Evangelio de Poder"
author: "CGV"
cover: "images/tapa.png"
version: "0.6"
date: "2026-01-29"
---
```

# Ejemplo: TABLA DE CONTENIDOS 


INTRODUCCIÓN.....................7

ROMANOS 1:1–17 – EL EVANGELIO QUE DIOS ANUNCIÓ..........11 

Romanos 1:18–3:20 – EL MUNDO NECESITA SALVACIÓN......14 

ROMANOS 3:21–5:21 – JUSTIFICACIÓN: LA JUSTICIA QUE DIOS PROVEE...... 15 

ROMANOS 6:1-8:17 SANTIFICACIÓN: LA VIDA QUE BROTA DE LA JUSTIFICACIÓN......32 

Romanos 8:18-39 GLORIFICACIÓN: ESPERANZA Y SEGURIDAD EN EL PROPÓSITO DE DIOS......23 

EPÍLOGO VISUAL......45

APÉNDICE......55


## Para poner el título y subtitulo principal al início del manual:

```LATEX
:::title
ROMANOS 1-8
:::

:::subtitle
El Evangelio de Poder
:::
```

# Nuestros manuales se organizan así: 

```markdown
# TITULOS
## Subtitutlos
### Referencias (versículo debajo)
#### Palabra o frase
##### comentarios 
- puntos de comentarios
```

## Versículos Completos
Cuando citamos el versículo copiamos y pegamos el texto debajo de la cita exáctamente de esta manera:

```markdown
### Romanos 1:1
Pablo, siervo de Cristo Jesús, llamado a ser apóstol, apartado para el evangelio de Dios,
```

### Palabras o frases de enfoque

cuando estamos enfocando en una palabra o frase ingresamos de esta manera:

```markdown
#### Pablo
Pablo, (antes Saulo) se presenta en la carta...

Pablo era de Tarso
- Tarso suena como marzo
- Tarso no es cerca de Bolivia
```
## Espacios entre lineas

Los espacios entre lineas dictan una nueva diapositiva. 
Si las lineas van juntas, aparecerán en una sola diapositiva una linea a la vez. 

## Notas de pie de página

esto es un pie de página donde la cita será puesta abajo -> [^3]

esto un pie de página donde se incluye en el texto -> ^[Nota de prueba.]

```markdown
[^3] esto es el indicador necesario donde es la cita en el manual. 
la cita se coloca asi al final del manual:
[^3]: esto es la cita. www.google.com
```

## Palabras subrayadas

la <u>palabra</u> esta subrayada. Se hace asi:

```html
<u> antes </u> después
```

## Citando Escritura

Citamos la biblia símplemente usando * antes y * después sin espacios. Funciona para palabras y frases. 

```markdown
Por ejemplo: *en el principio creo Dios...*
```

OJO: NUNCA deben usar comillas para citar la Biblia: 

```markdown
"*en el principio creo Dios...*"
```

## Negrillas

para **negrillas** usamos:

```markdown
**palabra**
```

## Ahora tenemos la posibilidad de dar definiciones en una sección especial:

```latex
Apóstol - APOSTOLO
: Enviado con autoridad derivada; no mensajero genérico.
```


Después de una determinado tiempo de  enseñanza es bueno hacer un repaso o resumen. Estos llamamos "En Síntesis": 

## En Síntesis
- este es el primer punto que hemos visto. 
- este es el segundo punto que hemos visto.
- este es el tercer punto que hemos visto. 
- estes es el cuarto punto que hemos visto.
- este será el último punto

[^3]: nota de 3 definición.