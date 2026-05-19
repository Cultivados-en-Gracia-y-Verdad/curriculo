---
title: "Manual de CGV Presenter"
date: 2026-05-19T00:00:00-04:00
draft: false
image: "img/cgv-logo.jpg"
---

CGV Presenter es una aplicación diseñada para la enseñanza bíblica y el uso congregacional en iglesias locales. Su propósito principal es permitir que una iglesia o centro de capacitación pueda enseñar, presentar, cantar y realizar cuestionarios desde una computadora local, sin depender del internet durante la clase o reunión.

La aplicación trabaja de forma **offline-first**. Esto significa que los cursos, canciones, Biblias y materiales deben estar disponibles localmente. El internet puede servir para descargar cursos, actualizaciones o permitir que los alumnos respondan cuestionarios desde sus teléfonos, pero la enseñanza no debe depender de una conexión estable.

## 1. Instalación

### macOS

1. Descargue el archivo para macOS desde la página de descargas.
2. Abra el archivo `.zip`.
3. Mueva **CGV Presenter** a la carpeta **Aplicaciones** si desea dejarlo instalado.
4. Abra la aplicación.

Si macOS muestra una advertencia de seguridad, abra la aplicación desde el Finder con clic derecho y luego seleccione **Abrir**.

### Windows

1. Descargue el instalador para Windows desde la página de descargas.
2. Ejecute el archivo `.exe`.
3. Siga las instrucciones del instalador.
4. Abra **CGV Presenter** desde el menú de inicio o acceso directo.

## 2. Organización básica

CGV Presenter tiene tres áreas principales de uso:

- **Enseñanza:** cursos, diapositivas, notas, referencias bíblicas y cuestionarios.
- **Presentación congregacional:** canciones, fondos, director y vista de escenario.
- **Participación local:** alumnos o participantes pueden conectarse desde un navegador para responder cuestionarios o ver contenido.

La computadora donde se ejecuta CGV Presenter funciona como el centro local. Los demás dispositivos se conectan a la dirección local que muestra la aplicación, normalmente algo como:

```text
http://192.168.1.25:3000
```

La dirección exacta depende de la red local.

## 3. Modos de presentación

### Modo pantalla extendida

Este modo se usa cuando la computadora está conectada a un proyector o segunda pantalla.

El maestro ve:

- diapositiva actual,
- próxima línea o próxima diapositiva,
- notas,
- controles,
- temporizador,
- opciones de cuestionario.

La audiencia ve solamente:

- la presentación limpia,
- sin notas,
- sin controles,
- sin información privada del maestro.

Este es el modo recomendado para clases y enseñanza formal.

### Modo pantalla duplicada

Este modo se usa cuando todos ven la misma pantalla.

En este caso, CGV Presenter debe mostrar una vista limpia y segura para la audiencia:

- sin notas del presentador,
- sin vista previa privada,
- sin controles visibles innecesarios,
- con atajos de teclado todavía disponibles.

## 4. Vistas disponibles

CGV Presenter puede mostrar diferentes vistas según la persona que usa el sistema.

### Vista principal

Es la vista que se proyecta a la audiencia. Debe ser limpia, legible y sin controles.

Se usa para:

- enseñanza,
- canciones,
- referencias bíblicas,
- cuestionarios,
- pantalla en blanco.

### Vista del presentador

Es la vista para el maestro.

Incluye:

- controles de avance,
- vista actual,
- próxima diapositiva,
- notas,
- acceso a cuestionarios,
- referencias bíblicas.

Esta vista es para enseñanza. No debe mostrarse a la audiencia.

### Vista de audiencia

La vista de audiencia es una vista web. Se puede abrir desde teléfonos, tablets o computadoras conectadas a la misma red.

Se usa para:

- ver información básica,
- participar en cuestionarios,
- seguir la sesión cuando sea necesario.

### Vista de escenario

La vista de escenario está pensada especialmente para músicos o personas en la plataforma.

En modo canciones puede mostrar:

- letra actual,
- acordes,
- siguiente línea o siguiente sección,
- transposición de acordes.

En teléfonos debe priorizar la vista actual y mostrar la siguiente sección debajo.

### Vista de director

La vista de director es para un pastor, director de culto o líder en la plataforma que necesita avanzar o retroceder sin usar la vista completa del maestro.

Permite:

- avanzar y retroceder,
- usar gestos de deslizamiento en dispositivos táctiles,
- abrir referencias bíblicas,
- buscar canciones en modo canción,
- volver a enseñanza cuando sea necesario.

### Vista de controlador

La vista de controlador es para los encargados de medios.

Permite:

- seleccionar canciones,
- enviar canciones en vivo,
- cambiar fondos,
- mostrar pantalla en blanco,
- regresar al modo enseñanza,
- editar canciones,
- preparar el contenido sin interrumpir al maestro.

## 5. Cursos

Los cursos se organizan como carpetas locales. Cada curso debe tener su propio directorio con su contenido.

Ejemplo:

```text
CGV Presenter/
└── Cursos/
    ├── Filipenses/
    │   ├── manifest.json
    │   ├── slides/
    │   └── quizzes/
    └── 1Corintios/
        ├── manifest.json
        ├── slides/
        └── quizzes/
```

El archivo `manifest.json` describe el curso. La carpeta `slides` contiene el archivo Markdown principal. La carpeta `quizzes` contiene los cuestionarios.

## 6. Markdown de enseñanza

CGV Presenter usa Markdown para generar la presentación. Los encabezados tienen significado especial.

### Estructura visual

- `#` H1: título principal.
- `##` H2: subtítulo o sección mayor.
- `###` H3: referencia bíblica principal.
- Texto en cursiva debajo de H3: texto bíblico.
- `####` H4: ancla o título de una sección bíblica.
- `#####` H5: comentario de primer nivel.
- `######` H6: comentario de segundo nivel.
- Viñetas debajo de H6: puntos subordinados.

H1 y H2 se centran. H3, H4, H5, H6 y viñetas se alinean a la izquierda con sangría progresiva.

Todo texto bíblico debe estar en cursiva y debe estar encerrado en comillas españolas:

```markdown
### Filipenses 1:6

*«Porque estoy convencido de esto: que el que comenzó tan buena obra en ustedes, la perfeccionará hasta el día de Cristo Jesús.»*
```

Las palabras en negrita dentro de los manuales se muestran en la presentación como texto resaltado, normalmente con negrita y subrayado.

## 7. Referencias bíblicas

Las referencias bíblicas se convierten en enlaces interactivos cuando la Biblia correspondiente está disponible localmente.

Ejemplos:

```text
Romanos 1:1-17
Hechos 8:3, 9:4, 13:2
Romanos 1:3; Filipenses 1:6
```

Cuando se abre una referencia, se muestra una ventana emergente con el texto bíblico. En la vista del presentador, al abrir una referencia también debe reflejarse en la vista principal cuando corresponda.

Para cerrar una referencia, haga clic fuera de la ventana emergente o avance a otro elemento.

## 8. Cuestionarios

Los cuestionarios se guardan separados del Markdown principal. El Markdown solamente incluye un marcador que avisa al maestro que hay un cuestionario disponible.

Ejemplo:

```markdown
<!-- @quiz #filipenses-1 -->
```

Cuando el maestro llega a ese punto, aparece la opción de lanzar el cuestionario.

### Formato básico del cuestionario

Los cuestionarios se guardan en archivos `.yaml` dentro de la carpeta `quizzes` del curso.

Ejemplo:

```yaml
id: filipenses-1
title: Filipenses 1
questions:
  - prompt: ¿Quién escribió Filipenses?
    answers:
      - Pablo
      - Pedro
      - Juan
      - Santiago
    correct: Pablo
```

Las respuestas se presentan en orden aleatorio para los alumnos. Aunque el archivo tenga la respuesta correcta primero, el alumno no debe verla siempre en la misma posición.

### Durante el cuestionario

Los alumnos entran desde sus teléfonos usando la dirección local o el código QR mostrado en pantalla.

Cada alumno debe identificarse con su nombre. Al terminar, el alumno recibe su resultado.

### Revisión del cuestionario

Después de terminar el cuestionario, el maestro puede revisar las preguntas con la clase. Esto permite mostrar la respuesta correcta y usar cada pregunta como oportunidad de explicación y conversación.

## 9. Canciones

CGV Presenter también puede presentar canciones para uso congregacional.

Las canciones pueden guardarse en formato ChordPro (`.cho`).

Ejemplo:

```text
{title: Sublime Gracia}

[Verso 1]
[G]Sublime gracia del [C]Señor
que a un [G]infeliz salvó

[Coro]
Fui [G]ciego mas hoy [C]veo yo
per[G]dido y Él me halló
```

### Etiquetas de secciones

Puede usar etiquetas como:

```text
[Verso 1]
[Verso 2]
[Coro]
[Puente]
[Final]
```

Estas etiquetas ayudan a identificar las secciones en las miniaturas y en la vista de control.

### Acordes

Los acordes se escriben dentro de corchetes, como en ChordPro:

```text
[G]Sublime gracia del [C]Señor
```

La vista principal muestra la letra para la congregación. La vista de escenario puede mostrar los acordes sobre la letra para los músicos.

En la vista de escenario, `+` sube la tonalidad medio tono y `-` la baja medio tono.

## 10. Fondos y pantalla en blanco

El controlador puede cambiar fondos para las canciones. Los fondos deben llenar la pantalla y mantener la letra legible.

Recomendaciones:

- usar imágenes horizontales,
- evitar fondos demasiado detallados,
- usar buen contraste,
- probar la imagen antes de la reunión,
- mantener una pantalla en blanco disponible.

La pantalla en blanco permite limpiar la proyección sin cerrar la aplicación ni detener la sesión.

## 11. Uso recomendado en una iglesia

Un flujo común puede ser:

1. El encargado de medios abre CGV Presenter.
2. El controlador selecciona canciones, fondos o pantalla en blanco.
3. El director usa `director.html` desde un teléfono o tablet para avanzar.
4. Los músicos usan `stage.html` para ver letra, acordes y próxima sección.
5. La audiencia ve la pantalla principal.
6. Cuando empieza la enseñanza, se vuelve al modo enseñanza.
7. El maestro usa la vista del presentador para avanzar, abrir referencias y lanzar cuestionarios.

Esto permite que canciones y enseñanza convivan en el mismo sistema sin mezclar controles privados con la vista pública.

## 12. Consejos de uso

- Pruebe la conexión del proyector antes de la clase.
- Descargue los cursos antes del día de enseñanza.
- No dependa del internet durante la clase.
- Use texto grande y legible.
- Evite fondos con demasiado movimiento o poco contraste.
- Prepare los cuestionarios antes de iniciar.
- Revise que los alumnos puedan entrar a la dirección local antes de lanzar un cuestionario.
- En canciones, mantenga estrofas cortas de cuatro líneas cuando sea posible.

## 13. Solución de problemas

### No aparece la segunda pantalla

Revise que el sistema operativo esté usando pantalla extendida y no pantalla duplicada. Luego vuelva a abrir o iniciar la presentación.

### Los alumnos no pueden entrar al cuestionario

Revise que todos estén conectados a la misma red local. Verifique la dirección IP y el puerto que muestra CGV Presenter.

### Las referencias bíblicas no se abren

Confirme que los archivos bíblicos necesarios estén instalados localmente y que los nombres de libros coincidan con los nombres esperados por la aplicación.

### Una canción se corta en la pantalla

Divida la canción en secciones más pequeñas. Procure estrofas de cuatro líneas. Evite líneas demasiado largas.

### El fondo dificulta leer la letra

Use una imagen más sencilla o cambie a un fondo oscuro con mejor contraste.

## 14. Prioridad del sistema

CGV Presenter debe servir a la enseñanza y a la iglesia local. Por eso las prioridades son:

- estabilidad,
- lectura clara,
- funcionamiento offline,
- sencillez para maestros y encargados,
- buen uso en pantallas grandes y teléfonos,
- mínima distracción.

El objetivo no es tener una aplicación complicada, sino una herramienta confiable para enseñar, cantar y formar discípulos con claridad.
