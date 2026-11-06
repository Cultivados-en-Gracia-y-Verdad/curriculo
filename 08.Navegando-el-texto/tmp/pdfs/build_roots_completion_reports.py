from pathlib import Path
from xml.sax.saxutils import escape

from reportlab.lib import colors
from reportlab.lib.enums import TA_CENTER, TA_LEFT
from reportlab.lib.pagesizes import letter
from reportlab.lib.styles import ParagraphStyle, getSampleStyleSheet
from reportlab.lib.units import inch
from reportlab.platypus import (
    BaseDocTemplate,
    CondPageBreak,
    Frame,
    KeepTogether,
    PageBreak,
    PageTemplate,
    Paragraph,
    Spacer,
    Table,
    TableStyle,
)


ROOT = Path(__file__).resolve().parents[2]
OUT = ROOT / "output" / "pdf"
OUT.mkdir(parents=True, exist_ok=True)


COLORS = {
    "navy": colors.HexColor("#17324D"),
    "blue": colors.HexColor("#2F6F8F"),
    "pale": colors.HexColor("#EAF3F7"),
    "green": colors.HexColor("#2F6B4F"),
    "green_pale": colors.HexColor("#EAF4EE"),
    "amber": colors.HexColor("#A96619"),
    "amber_pale": colors.HexColor("#FFF3DD"),
    "red": colors.HexColor("#9B3A35"),
    "red_pale": colors.HexColor("#FBEAE8"),
    "ink": colors.HexColor("#202A33"),
    "muted": colors.HexColor("#56636F"),
    "rule": colors.HexColor("#B9C7D1"),
}


styles = getSampleStyleSheet()
styles.add(ParagraphStyle(
    name="CoverTitle", parent=styles["Title"], fontName="Helvetica-Bold",
    fontSize=25, leading=30, alignment=TA_CENTER, textColor=COLORS["navy"],
    spaceAfter=18,
))
styles.add(ParagraphStyle(
    name="CoverSub", parent=styles["Normal"], fontName="Helvetica",
    fontSize=14, leading=19, alignment=TA_CENTER, textColor=COLORS["muted"],
    spaceAfter=12,
))
styles.add(ParagraphStyle(
    name="H1x", parent=styles["Heading1"], fontName="Helvetica-Bold",
    fontSize=19, leading=23, textColor=COLORS["navy"], spaceBefore=8, spaceAfter=10,
))
styles.add(ParagraphStyle(
    name="H2x", parent=styles["Heading2"], fontName="Helvetica-Bold",
    fontSize=15, leading=19, textColor=COLORS["blue"], spaceBefore=12, spaceAfter=7,
))
styles.add(ParagraphStyle(
    name="BodyX", parent=styles["BodyText"], fontName="Helvetica",
    fontSize=12.2, leading=17.2, textColor=COLORS["ink"], spaceAfter=7,
))
styles.add(ParagraphStyle(
    name="SmallX", parent=styles["BodyText"], fontName="Helvetica",
    fontSize=10.2, leading=13.2, textColor=COLORS["ink"], spaceAfter=4,
))
styles.add(ParagraphStyle(
    name="BoxTitle", parent=styles["BodyText"], fontName="Helvetica-Bold",
    fontSize=12.3, leading=15, textColor=COLORS["navy"], spaceAfter=4,
))
styles.add(ParagraphStyle(
    name="Unit", parent=styles["BodyText"], fontName="Helvetica-Bold",
    fontSize=12.4, leading=16, textColor=COLORS["green"], spaceBefore=5, spaceAfter=3,
))
styles.add(ParagraphStyle(
    name="Footer", parent=styles["Normal"], fontName="Helvetica",
    fontSize=8.5, leading=10, alignment=TA_CENTER, textColor=COLORS["muted"],
))


def p(text, style="BodyX"):
    return Paragraph(escape(text).replace("\n", "<br/>"), styles[style])


def rich(text, style="BodyX"):
    return Paragraph(text, styles[style])


def bullets(items):
    out = []
    for item in items:
        out.append(Paragraph("• " + escape(item), ParagraphStyle(
            name=f"bullet-{len(out)}-{id(items)}", parent=styles["BodyX"],
            leftIndent=16, firstLineIndent=-10, spaceAfter=5,
        )))
    return out


def callout(title, body, color="blue"):
    bg = {"blue": COLORS["pale"], "green": COLORS["green_pale"],
          "amber": COLORS["amber_pale"], "red": COLORS["red_pale"]}[color]
    border = {"blue": COLORS["blue"], "green": COLORS["green"],
              "amber": COLORS["amber"], "red": COLORS["red"]}[color]
    data = [[p(title, "BoxTitle")], [p(body, "BodyX")]]
    t = Table(data, colWidths=[6.55 * inch], hAlign="LEFT", splitByRow=False)
    t.setStyle(TableStyle([
        ("BACKGROUND", (0, 0), (-1, -1), bg),
        ("BOX", (0, 0), (-1, -1), 1.2, border),
        ("LEFTPADDING", (0, 0), (-1, -1), 12),
        ("RIGHTPADDING", (0, 0), (-1, -1), 12),
        ("TOPPADDING", (0, 0), (-1, -1), 8),
        ("BOTTOMPADDING", (0, 0), (-1, -1), 8),
    ]))
    return KeepTogether([t])


MODEL_UNITS = [
    {
        "span": "1:1-12",
        "label": "Saludo, gratitud y testimonio sin vergüenza",
        "trunk": "Pablo saluda; da gracias; recuerda a Timoteo; lo llama a reavivar el don y a no avergonzarse; declara la obra de Dios, su propio encargo y su confianza.",
        "behavior": "EXPONE -> RAZON -> EXHORTA -> RAZON -> CONTRASTE -> RAZON",
        "step13": "Pablo expone su gratitud y recuerdo de Timoteo, lo exhorta a reavivar el don y a no avergonzarse, y declara que Dios salvó y llamó, que él fue constituido para el evangelio y que sabe en quién ha creído.",
    },
    {
        "span": "1:13-18",
        "label": "Retener, guardar y recordar la fidelidad de Onesíforo",
        "trunk": "Pablo manda retener y guardar; recuerda el abandono de algunos; pide misericordia para Onesíforo y recuerda su servicio.",
        "behavior": "EXHORTA -> EXPONE -> CONTRASTA/MUESTRA",
        "step13": "Pablo declara a Timoteo que retenga las sanas palabras y guarde el depósito, contrasta a quienes lo abandonaron con Onesíforo y pide misericordia para su casa.",
    },
    {
        "span": "2:1-13",
        "label": "Fortalecerse, encargar, sufrir y recordar",
        "trunk": "Timoteo debe fortalecerse, encargar, sufrir, considerar y recordar; Pablo sufre y soporta; la palabra no está presa; la palabra fiel declara consecuencias de unión o negación.",
        "behavior": "EXHORTA -> ILUSTRA/EXPONE -> RAZON -> CONTRASTE -> RESULTADO",
        "step13": "Pablo declara a Timoteo que se fortalezca, encargue lo oído a hombres fieles, sufra, considere y recuerde a Jesucristo; afirma que él soporta todo por los escogidos y expone la palabra fiel sobre morir, perseverar, negar y la fidelidad de Cristo.",
    },
    {
        "span": "2:14-26",
        "label": "Presentarse aprobado y apartarse de lo que destruye",
        "trunk": "Timoteo debe recordar, encargar, procurar, evitar, apartarse, limpiarse, huir, seguir, rechazar y corregir; el fundamento permanece; el siervo del Señor debe enseñar con mansedumbre.",
        "behavior": "EXHORTA -> RAZON -> CONTRASTE -> RESULTADO/PROPOSITO",
        "step13": "Pablo declara a Timoteo que recuerde estas cosas, evite disputas y palabrerías, se presente aprobado, se limpie, huya de las pasiones, siga justicia, fe, amor y paz, y corrija con mansedumbre a los que se oponen.",
    },
    {
        "span": "3:1-13",
        "label": "Reconocer los tiempos difíciles y el contraste de conductas",
        "trunk": "Timoteo debe saber y evitar; ciertos hombres se oponen y no progresarán; Timoteo siguió la enseñanza de Pablo; el Señor libró; los piadosos serán perseguidos; los malos avanzarán en engaño.",
        "behavior": "ADVIERTE/EXPONE -> EXHORTA -> CONTRASTA -> RESULTADO",
        "step13": "Pablo muestra a Timoteo que vendrán tiempos difíciles, describe y manda evitar a ciertos hombres, contrasta su oposición con el seguimiento de Timoteo y declara que los piadosos serán perseguidos mientras los impostores avanzarán en engaño.",
    },
    {
        "span": "3:14-4:5",
        "label": "Persistir en las Escrituras y cumplir el ministerio",
        "trunk": "Timoteo debe persistir; conoce las Escrituras; toda Escritura es inspirada y útil; Pablo encarga predicar, insistir, corregir y exhortar; vendrá un tiempo de rechazo; Timoteo debe ser sobrio y cumplir su ministerio.",
        "behavior": "CONTRASTA/EXHORTA -> RAZON -> ENCARGA -> RAZON -> CONTRASTA",
        "step13": "Pablo declara a Timoteo que persista en lo aprendido y, porque la Escritura puede hacerlo sabio y equiparlo, le encarga predicar la palabra, insistir, corregir y exhortar, y cumplir su ministerio frente a quienes apartarán sus oídos de la verdad.",
    },
    {
        "span": "4:6-8",
        "label": "La partida, la carrera terminada y la corona",
        "trunk": "Pablo está siendo derramado; su partida ha llegado; peleó, terminó y guardó; la corona está reservada y será entregada.",
        "behavior": "RAZON -> EXPONE -> RESULTADO",
        "step13": "Pablo declara que su partida ha llegado, que ha peleado la buena batalla, terminado la carrera y guardado la fe, y muestra que le está reservada la corona de justicia.",
    },
    {
        "span": "4:9-18",
        "label": "Peticiones personales, oposición y defensa sostenida por el Señor",
        "trunk": "Pablo pide que Timoteo venga, traiga a Marcos, la capa y los libros y se cuide de Alejandro; relata abandono y oposición; contrasta que el Señor estuvo con él, lo fortaleció y lo librará.",
        "behavior": "EXHORTA -> RAZON/EXPONE -> ADVIERTE -> CONTRASTA -> RESULTADO",
        "step13": "Pablo declara a Timoteo que venga pronto, traiga a Marcos, la capa y los libros y se cuide de Alejandro; contrasta el abandono humano con el Señor, quien estuvo con él, lo fortaleció, lo libró y lo llevará a salvo.",
    },
    {
        "span": "4:19-22",
        "label": "Saludos, noticias finales y bendición",
        "trunk": "Pablo manda saludar; informa sobre Erasto y Trófimo; pide que Timoteo venga; transmite saludos; expresa bendición.",
        "behavior": "EXHORTA -> EXPONE -> EXHORTA -> SALUDA/BENDICE",
        "step13": "Pablo declara a Timoteo que salude a Prisca, Aquila y la casa de Onesíforo, informa sobre Erasto y Trófimo, le pide venir antes del invierno y transmite saludos y bendición.",
    },
]


COMMON_INTRO = (
    "Este documento no sustituye el proyecto del estudiante. Lo acompaña. Primero identifica lo que "
    "el estudiante sí observó; después muestra dónde dejó de ser demostrable la cadena de ROOTS; "
    "finalmente toma un pasaje que el estudiante trabajó y lo lleva, paso por paso, hasta una conclusión "
    "modelo. Este pasaje funciona como ejemplo reproducible para terminar las demás unidades. La conclusión debe "
    "comprobarse contra los verbos finitos, conectores y dependencias del texto griego antes de tratarse "
    "como resultado definitivo."
)


REPORTS = [
    {
        "file": "roots-completion-o2.pdf",
        "student": "Proyecto 2 TIMOTEO O2",
        "source": "2 TIMOTEO O2.pdf",
        "status": [
            ("1. Copiar el texto", "Parcial", "Copia pasajes extensos, pero los trabaja por bloques con títulos y comentarios."),
            ("2. Verbos finitos", "Parcial", "Identifica muchos verbos y a veces comenta modo o sujeto, sin inventario griego completo."),
            ("3. Cláusulas", "Parcial", "Distingue acciones y participantes, pero no construye sistemáticamente una línea por verbo finito."),
            ("4-5. Conectores", "Parcial", "Reconoce porque, pero, sino, para que y otros; no aplica de forma visible B -> A a todo el texto."),
            ("6-7. Estructura y reducción", "No demostrado", "No hay árbol de dependencia ni cláusulas base conservando la acción."),
            ("8-9. Tronco y comportamiento", "No demostrado", "No presenta tronco verificable ni las etiquetas permitidas para cada cláusula."),
            ("10-12. Secciones y unidades", "Intuido", "Propone títulos y tramos, pero no los deriva de rupturas observables."),
            ("13. Acción del tronco", "No completado", "No hay una oración controlada por unidad; el archivo termina con 'Y así'."),
        ],
        "strengths": [
            "Observa de manera sostenida quién actúa y qué hace.",
            "Reconoce repeticiones y varios conectores importantes.",
            "Percibe cambios entre mandato, afirmación, razón y contraste.",
            "Cubre la carta completa y muestra atención al flujo del texto.",
        ],
        "break": (
            "El trabajo llega con valor hasta una observación equivalente a los Pasos 4-5. Desde allí salta "
            "a explicación continua. Para terminar ROOTS hacía falta convertir esas observaciones en relaciones "
            "de dependencia, reducir las cláusulas, aislar el tronco y producir una oración por unidad."
        ),
        "bridge": [
            "Volver a cada tramo y conservar solo cláusulas cuyo núcleo sea un verbo finito griego.",
            "Colocar debajo de su A únicamente las B cuya dependencia pueda señalarse con un conector griego.",
            "Reducir cada línea sin perder la acción; después retirar del tronco solo lo visiblemente dependiente.",
            "Usar los títulos que el estudiante ya percibió como hipótesis, no como prueba de límites.",
        ],
        "personal_note": (
            "Tu lectura ya estaba viendo participantes, acciones, repeticiones y relaciones. El siguiente avance "
            "no era escribir más comentario, sino hacer visible la estructura que sostenía esas observaciones."
        ),
        "worked": {
            "passage": "2 Timoteo 4:16-18",
            "start": "Tu comentario ya había identificado el abandono, el contraste introducido por 'pero', la presencia del Señor, el propósito de la proclamación y la liberación. Continuamos exactamente desde esas observaciones.",
            "verbs": [
                "4:16 nadie estuvo a mi lado - paregeneto, V-AMI-3S",
                "4:16 todos me abandonaron - enkatelipon, V-AAI-3P",
                "4:16 que no se les tenga en cuenta - logistheie, V-APO-3S",
                "4:17 el Señor estuvo conmigo - pareste, V-AAI-3S",
                "4:17 me fortaleció - enedynamosen, V-AAI-3S",
                "4:17 para que la proclamación se cumpliera - plerophorethe, V-APS-3S",
                "4:17 y todos los gentiles oyeran - akousosin, V-AAS-3P",
                "4:17 fui librado - errysthen, V-API-1S",
                "4:18 el Señor me librará - rhysetai, V-FMI-3S",
                "4:18 me traerá a salvo - sosei, V-FAI-3S",
            ],
            "connectors": [
                "alla / pero une dos cláusulas iguales en 4:16; no subordina.",
                "de / pero en 4:17 contrasta al Señor con el abandono anterior; no subordina.",
                "hina / a fin de que introduce propósito: 'se cumpliera' y 'oyeran' dependen de 'estuvo / fortaleció'.",
                "kai / y coordina 'fui librado', 'librará' y 'salvará' en el nivel principal.",
            ],
            "structure": [
                "nadie estuvo a mi lado",
                "pero todos me abandonaron",
                "que no se les tenga en cuenta",
                "pero el Señor estuvo conmigo",
                "y me fortaleció",
                "    a fin de que la proclamación se cumpliera",
                "    y todos los gentiles oyeran",
                "y fui librado de la boca del león",
                "el Señor me librará de toda obra mala",
                "y me traerá a salvo a su reino celestial",
            ],
            "trunk": [
                "nadie estuvo conmigo",
                "pero todos me abandonaron",
                "que no se les tenga en cuenta",
                "pero el Señor estuvo conmigo y me fortaleció",
                "y fui librado",
                "el Señor me librará y me salvará",
            ],
            "behavior": [
                "::EXPONE:: nadie estuvo conmigo",
                "::CONTRASTE:: pero todos me abandonaron",
                "::EXPONE:: que no se les tenga en cuenta",
                "::CONTRASTE:: pero el Señor estuvo conmigo y me fortaleció",
                "::EXPONE:: y fui librado",
                "::EXPONE:: el Señor me librará y me salvará",
            ],
            "movement": "[M] en 4:16a: la advertencia imperativa de 4:15 cambia al relato indicativo. [M] en 4:16b: los indicativos cambian al deseo optativo 'que no se les tenga en cuenta'. [M] en 4:17: el deseo vuelve al relato indicativo. [M] en 4:19: el relato cambia al imperativo 'Saluda'. Unidades: 4:16a; 4:16b; 4:17-18.",
            "step13": "Unidad 4:16a - Pablo contrasta que en su primera defensa nadie estuvo con él y que todos lo abandonaron.\nUnidad 4:16b - Pablo expone que no se les tenga en cuenta.\nUnidad 4:17-18 - Pablo contrasta que el Señor estuvo con él, lo fortaleció y lo libró, y expone que el Señor lo librará de toda obra mala y lo salvará para su reino celestial.",
            "excluded": "Las cláusulas introducidas por hina ('para que se cumpliera' y 'que oyeran') explican el propósito de la presencia y fortalecimiento del Señor. Permanecen en la estructura completa, pero salen del tronco en Paso 8.",
        },
    },
    {
        "file": "roots-completion-stefy.pdf",
        "student": "Proyecto ROOTS 2 Timoteo - Stefy",
        "source": "ROOTS 2 timoteo stefy (1).pdf",
        "status": [
            ("1. Copiar el texto", "Realizado", "Incluye el texto completo, aunque conserva divisiones y ruido editorial."),
            ("2-3. Verbos y cláusulas", "Realizado con reparaciones", "Marca numerosos verbos y separa cláusulas; algunas líneas no conservan una correspondencia estable con el griego."),
            ("4-5. Conectores", "Realizado con reparaciones", "Identifica muchos conectores, pero mezcla conectores de cláusula con enlaces internos y etiquetas inciertas."),
            ("6-7. Estructura y reducción", "Intentado", "Presenta estructura y reducción, aunque la dependencia no siempre queda visible."),
            ("8-9. Tronco y comportamiento", "Intentado", "Crea tronco, sujetos, movimientos y etiquetas; marca también no-cambios de sujeto y varias funciones por intuición."),
            ("10-12. Secciones y unidades", "Inconsistente", "Paso 10 propone tres secciones; Paso 12 introduce trece unidades sin mostrar la derivación."),
            ("13. Acción del tronco", "No controlado", "Resume en tres oraciones enormes y luego presenta trece H2 que no coinciden con esas tres conclusiones."),
        ],
        "strengths": [
            "Sigue explícitamente el vocabulario de los trece pasos.",
            "Cubre toda la carta y conserva gran cantidad de evidencia morfológica.",
            "Intenta distinguir sujeto, comportamiento, movimiento, sección y unidad.",
            "Propone trece unidades que pueden servir como hipótesis para una revisión posterior.",
        ],
        "break": (
            "La cadena deja de ser confiable en el Paso 8: algunas eliminaciones, movimientos y cambios de sujeto "
            "no están demostrados con los criterios del curso. Esa inestabilidad se multiplica en los Pasos 10-13, "
            "donde tres secciones, trece unidades y tres resúmenes finales no se corresponden entre sí."
        ),
        "bridge": [
            "Eliminar marcas [S] cuando el sujeto no cambia; conservar solo transiciones reales.",
            "Revisar cada cláusula retirada del tronco: debe mostrar subordinador griego y dependencia visual.",
            "No permitir que Paso 12 invente límites que Paso 10-11 no prepararon.",
            "Escribir una sola oración de Paso 13 para cada unidad delimitada, incluyendo todas las acciones del tronco y ninguna externa.",
        ],
        "personal_note": (
            "Tu proyecto sí recorrió los trece pasos. Lo que faltó fue que cada resultado quedara obligado por el "
            "paso anterior. La revisión modelo trabaja el cierre de la carta para que cada movimiento y cada oración final sean visibles y comprobables."
        ),
        "worked": {
            "passage": "2 Timoteo 4:19-22",
            "start": "Tu proyecto llegó hasta los saludos finales y ya había observado los sujetos, el contraste de 4:20 y la repetición de 'procura'. Aquí ordenamos ese material hasta Paso 13.",
            "verbs": [
                "4:19 saluda - aspasai, V-AMM-2S",
                "4:20 Erasto se quedó - emeinen, V-AAI-3S",
                "4:20 a Trófimo lo dejé - apelipon, V-AAI-1S",
                "4:21 procura venir - spoudason, V-AAM-2S; elthein es infinitivo",
                "4:21 Eubulo te saluda - aspazetai, V-PMI-3S",
                "4:22 no contiene verbo finito griego en las dos bendiciones nominales",
            ],
            "connectors": [
                "kai / y dentro de 4:19 suma los destinatarios del mismo verbo; no crea cláusulas nuevas.",
                "de / pero en 4:20 coordina 'Erasto se quedó' con 'yo dejé a Trófimo'; no subordina.",
                "kai / y en 4:21 suma Pudente, Lino, Claudia y todos los hermanos como sujetos coordinados de 'saluda'.",
            ],
            "structure": [
                "saluda a Prisca, Aquila y la casa de Onesíforo",
                "Erasto se quedó en Corinto",
                "pero a Trófimo lo dejé enfermo en Mileto",
                "procura venir antes del invierno",
                "Eubulo, Pudente, Lino, Claudia y todos los hermanos te saludan",
                "[4:22: bendiciones nominales, sin verbo finito griego]",
            ],
            "trunk": [
                "saluda a Prisca, Aquila y la casa de Onesíforo",
                "Erasto se quedó",
                "pero yo dejé a Trófimo",
                "procura venir",
                "Eubulo y los demás te saludan",
            ],
            "behavior": [
                "::EXPONE:: saluda a Prisca, Aquila y la casa de Onesíforo",
                "::EXPONE:: Erasto se quedó",
                "::CONTRASTE:: pero yo dejé a Trófimo",
                "::EXPONE:: procura venir",
                "::EXPONE:: Eubulo y los demás te saludan",
            ],
            "movement": "[M] en 4:19: el indicativo futuro de 4:18 cambia al imperativo 'Saluda'. [M] en 4:20: el mandato cambia a noticias indicativas. [M] en 4:21a: las noticias cambian al imperativo 'Procura'. [M] en 4:21b: la petición cambia al saludo indicativo. Unidades: 4:19; 4:20; 4:21a; 4:21b-22.",
            "step13": "Unidad 4:19 - Pablo expone que Timoteo salude a Prisca, Aquila y la casa de Onesíforo.\nUnidad 4:20 - Pablo contrasta que Erasto se quedó en Corinto y que él dejó a Trófimo enfermo en Mileto.\nUnidad 4:21a - Pablo expone que Timoteo procure venir antes del invierno.\nUnidad 4:21b-22 - Pablo expone que Eubulo, Pudente, Lino, Claudia y todos los hermanos saludan a Timoteo.",
            "excluded": "Paso 3 del manual vigente no construye una cláusula sin verbo finito. Por eso 'El Señor sea con tu espíritu' y 'La gracia sea con ustedes' se conservan como cierre textual, pero no se introducen artificialmente en el tronco verbal.",
        },
    },
    {
        "file": "roots-completion-ale.pdf",
        "student": "Proyecto 2 Timoteo - Ale",
        "source": "2 Timoteo- Ale (2).pdf",
        "status": [
            ("1. Copiar el texto", "Realizado con reparaciones", "Presenta el texto completo, pero conserva divisiones de versículo en vez de un solo párrafo."),
            ("2-3. Verbos y cláusulas", "Realizado con reparaciones", "Marca verbos y construye cláusulas, aunque algunas formas no finitas o elementos incompletos pasan al inventario."),
            ("4-7. Conectores, estructura y reducción", "Realizado con reparaciones", "Hay trabajo amplio, pero algunas relaciones y reducciones pierden material necesario."),
            ("8-9. Tronco y comportamiento", "Realizado con reparaciones", "Distingue tronco, sujetos y etiquetas; varias relaciones requieren demostración adicional."),
            ("10-12. Secciones y unidades", "Realizado, no estable", "Produce siete secciones y luego más bloques internos; varios límites agrupan desarrollos distintos."),
            ("13. Acción del tronco", "Intentado", "Escribe conclusiones, pero las mezcla con extensas copias del tronco y no mantiene una oración controlada por cada unidad."),
        ],
        "strengths": [
            "Completa formalmente los trece pasos.",
            "Su Paso 10 reconoce siete desarrollos amplios y es más coherente que un solo bloque para casi toda la carta.",
            "Distingue con frecuencia exposición, razón, contraste y resultado.",
            "El final intenta convertir la estructura en encabezados y unidades legibles.",
        ],
        "break": (
            "El proyecto llega más lejos que los otros dos, pero Paso 13 no es todavía una salida controlada: combina "
            "resúmenes, secciones, copias del análisis y nuevos encabezados. Además, varios límites del Paso 12 no "
            "coinciden limpiamente con las siete secciones del Paso 10."
        ),
        "bridge": [
            "Conservar las siete secciones como macrohipótesis, pero separar los desarrollos claramente distintos en 4:6-22.",
            "Revisar que cada unidad tenga inicio y fin estables antes de escribir su conclusión.",
            "Retirar de Paso 13 etiquetas, marcas [M], copias del tronco y explicaciones; dejar una oración controlada.",
            "Usar solo expone, afirma, declara, muestra o contrasta como verbo rector de la oración final.",
        ],
        "personal_note": (
            "Llegaste al final formal del proceso. Tu siguiente aprendizaje es compresión controlada: demostrar el "
            "límite, recorrer todo el tronco de esa unidad y decirlo una sola vez, sin volver a copiar el análisis."
        ),
        "worked": {
            "passage": "2 Timoteo 4:5-8",
            "start": "Tu Paso 10 comenzó una nueva sección en 4:6. La revisión muestra por qué el conector griego gar ('porque') obliga a retroceder: 4:6 da la razón de los mandatos de 4:5. La unidad corregida comienza en 4:5.",
            "verbs": [
                "4:5 sé sobrio - nephe, V-PAM-2S",
                "4:5 sufre penalidades - kakopatheson, V-AAM-2S",
                "4:5 haz obra de evangelista - poieson, V-AAM-2S",
                "4:5 cumple tu ministerio - plerophoreson, V-AAM-2S",
                "4:6 estoy siendo derramado - spendomai, V-PPI-1S",
                "4:6 el tiempo ha llegado - ephesteken, V-XAI-3S",
                "4:7 he peleado - egonismai, V-XMI-1S",
                "4:7 he terminado - teteleka, V-XAI-1S",
                "4:7 he guardado - tetereka, V-XAI-1S",
                "4:8 la corona está reservada - apokeitai, V-PMI-3S",
                "4:8 el Señor me entregará - apodosei, V-FAI-3S",
            ],
            "connectors": [
                "de / pero en 4:5 contrasta a Timoteo con quienes se vuelven a los mitos; no subordina.",
                "gar / porque en 4:6 introduce la razón de los mandatos de 4:5; 4:6 depende de 4:5.",
                "kai / y coordina 'el tiempo ha llegado' dentro de esa misma razón.",
                "hon / la cual en 4:8 introduce la cláusula relativa 'el Señor me entregará'; depende de 'la corona está reservada'.",
            ],
            "structure": [
                "pero tú sé sobrio",
                "sufre penalidades",
                "haz obra de evangelista",
                "cumple tu ministerio",
                "    porque yo estoy siendo derramado",
                "    y el tiempo de mi partida ha llegado",
                "he peleado la buena batalla",
                "he terminado la carrera",
                "he guardado la fe",
                "la corona de justicia está reservada para mí",
                "    la cual el Señor me entregará en aquel día",
            ],
            "trunk": [
                "sé sobrio",
                "sufre penalidades",
                "haz obra de evangelista",
                "cumple tu ministerio",
                "he peleado la buena batalla",
                "he terminado la carrera",
                "he guardado la fe",
                "la corona está reservada",
            ],
            "behavior": [
                "::CONTRASTE:: pero tú sé sobrio",
                "::EXPONE:: sufre, haz y cumple",
                "::EXPONE:: he peleado la buena batalla, he terminado la carrera y he guardado la fe",
                "::RESULTADO:: la corona está reservada",
            ],
            "movement": "[M] en 4:5: la descripción futura de quienes rechazarán la verdad cambia a imperativos dirigidos a Timoteo. 4:6 permanece como razón dependiente de 4:5. [M] en 4:7: la exhortación cambia al testimonio indicativo de Pablo. [M] en 4:9: el testimonio cambia a una nueva petición imperativa. Unidades: 4:5-6; 4:7-8.",
            "step13": "Unidad 4:5-6 - Pablo contrasta que Timoteo sea sobrio, sufra, haga obra de evangelista y cumpla su ministerio.\nUnidad 4:7-8 - Pablo expone que ha peleado la buena batalla, terminado la carrera y guardado la fe, y que la corona de justicia está reservada para él.",
            "excluded": "Las dos cláusulas de 4:6 permanecen en la estructura como RAZÓN, pero salen del tronco por gar. La relativa de 4:8 permanece como explicación de la corona, pero sale del tronco por hon ('la cual').",
        },
    },
]


def page_decor(canvas, doc):
    canvas.saveState()
    canvas.setStrokeColor(COLORS["rule"])
    canvas.setLineWidth(0.6)
    canvas.line(0.75 * inch, 0.55 * inch, 7.75 * inch, 0.55 * inch)
    canvas.setFont("Helvetica", 8.5)
    canvas.setFillColor(COLORS["muted"])
    canvas.drawString(0.75 * inch, 0.35 * inch, "ROOTS - acompañamiento de proyecto")
    canvas.drawRightString(7.75 * inch, 0.35 * inch, f"Página {doc.page}")
    canvas.restoreState()


def make_doc(report):
    path = OUT / report["file"]
    doc = BaseDocTemplate(
        str(path), pagesize=letter,
        rightMargin=0.75 * inch, leftMargin=0.75 * inch,
        topMargin=0.68 * inch, bottomMargin=0.72 * inch,
        title=report["student"] + " - conclusión guiada ROOTS",
        author="CGV - acompañamiento pedagógico",
    )
    frame = Frame(doc.leftMargin, doc.bottomMargin, doc.width, doc.height, id="main")
    doc.addPageTemplates([PageTemplate(id="body", frames=[frame], onPage=page_decor)])

    story = []
    story += [Spacer(1, 0.65 * inch), p("ROOTS", "CoverSub"), p(report["student"], "CoverTitle")]
    story += [p("Lo que lograste y cómo llevarlo hasta una conclusión controlada", "CoverSub")]
    story += [Spacer(1, 0.25 * inch), callout("Propósito", COMMON_INTRO, "blue")]
    story += [Spacer(1, 0.22 * inch), p("Proyecto fuente: " + report["source"], "CoverSub")]
    story += [Spacer(1, 0.1 * inch), callout("Una palabra para el estudiante", report["personal_note"], "green")]
    story += [PageBreak()]

    story += [p("1. Lo que hiciste", "H1x")]
    story += [p("Este mapa reconoce el trabajo visible en tu entrega. 'Parcial' o 'con reparaciones' no significa que no aprendiste; significa que el resultado todavía no puede reproducirse de manera estable desde la evidencia.")]
    rows = [[p("Paso", "BoxTitle"), p("Estado", "BoxTitle"), p("Evidencia observada", "BoxTitle")]]
    for step, state, evidence in report["status"]:
        rows.append([p(step, "SmallX"), p(state, "SmallX"), p(evidence, "SmallX")])
    table = Table(rows, colWidths=[1.55 * inch, 1.2 * inch, 3.8 * inch], repeatRows=1, hAlign="LEFT")
    table.setStyle(TableStyle([
        ("BACKGROUND", (0, 0), (-1, 0), COLORS["navy"]),
        ("TEXTCOLOR", (0, 0), (-1, 0), colors.white),
        ("GRID", (0, 0), (-1, -1), 0.5, COLORS["rule"]),
        ("VALIGN", (0, 0), (-1, -1), "TOP"),
        ("LEFTPADDING", (0, 0), (-1, -1), 7),
        ("RIGHTPADDING", (0, 0), (-1, -1), 7),
        ("TOPPADDING", (0, 0), (-1, -1), 6),
        ("BOTTOMPADDING", (0, 0), (-1, -1), 6),
        ("ROWBACKGROUNDS", (0, 1), (-1, -1), [colors.white, colors.HexColor("#F5F8FA")]),
    ]))
    story += [table, Spacer(1, 10), p("Fortalezas que conviene conservar", "H2x")]
    story += bullets(report["strengths"])

    story += [p("2. Dónde se rompe la cadena", "H1x"), callout("Último punto confiable", report["break"], "amber")]
    story += [p("Puente de reparación", "H2x")]
    story += bullets(report["bridge"])
    story += [callout(
        "Regla de control",
        "No se corrige Paso 13 inventando una mejor frase. Se corrige el primer paso anterior que dejó de ser demostrable y se vuelve a avanzar desde allí.",
        "red",
    )]
    story += [PageBreak()]

    w = report["worked"]
    story += [p("3. Continuación trabajada hasta el final", "H1x")]
    story += [callout("Pasaje retomado: " + w["passage"], w["start"], "green")]
    story += [p("Punto de apoyo: Pasos 2-3", "H2x")]
    story += [p("Primero se confirma qué formas son finitas. Una forma no finita puede permanecer dentro de una cláusula, pero no crea otra línea por sí sola.")]
    story += bullets(w["verbs"])
    story += [p("Paso 5 - Conector + B -> buscar A", "H2x")]
    story += bullets(w["connectors"])
    story += [p("Pasos 6-7 - Estructura y reducción", "H2x")]
    story += [p("La sangría muestra dependencia. Las líneas al mismo nivel se mantienen coordinadas.")]
    for line in w["structure"]:
        indent = len(line) - len(line.lstrip())
        story.append(Paragraph(escape(line.strip()), ParagraphStyle(
            name=f"struct-{id(line)}", parent=styles["BodyX"],
            fontName="Courier", fontSize=10.7, leading=15,
            leftIndent=14 + indent * 5, spaceAfter=2,
        )))
    story += [PageBreak(), p("Paso 8 - Tronco", "H1x")]
    story += [p("Se retira únicamente lo que quedó subordinado de manera visible. El resto permanece, aunque parezca secundario.")]
    story += bullets(w["trunk"])
    story += [callout("Lo que sale del tronco", w["excluded"], "amber")]
    story += [p("Paso 9 - Comportamiento", "H2x")]
    story += [p("Se usan solamente las cuatro etiquetas permitidas: EXPONE, RAZÓN, CONTRASTE y RESULTADO.")]
    for line in w["behavior"]:
        story.append(Paragraph(escape(line), ParagraphStyle(
            name=f"behavior-{id(line)}", parent=styles["BodyX"],
            fontName="Courier", fontSize=10.7, leading=15, leftIndent=14, spaceAfter=3,
        )))
    story += [p("Pasos 10-12 - Movimiento, continuidad y unidad", "H2x")]
    story += [callout("Evidencia del límite", w["movement"], "blue")]
    if report["file"] != "roots-completion-ale.pdf":
        story += [PageBreak()]
    story += [p("Paso 13 - Acción del tronco", "H1x")]
    story += [callout("Conclusión modelo", w["step13"], "green")]
    story += [p("Prueba de rastreo", "H2x")]
    story += [p(
        "La oración final usa un verbo permitido, conserva el orden general del tronco y no convierte las cláusulas dependientes en nuevas acciones principales. El estudiante debe poder subrayar en el tronco cada parte de la oración."
    )]
    story += [p("4. Cómo terminar el resto del proyecto", "H1x")]
    story += [p(
        "Este pasaje muestra el procedimiento completo. Para cerrar toda la carta, repite exactamente la misma secuencia con cada unidad propuesta en tu entrega: confirma formas finitas, prueba los conectores, muestra la dependencia, reduce, forma el tronco, usa solo las cuatro etiquetas, demuestra [M], delimita y escribe una oración de Paso 13. No copies esta conclusión a otra unidad: cada unidad debe producir la suya."
    )]
    story += [p("Lista de autocontrol", "H2x")]
    story += bullets([
        "¿Cada cláusula del tronco tiene un verbo finito griego o una predicación legítima claramente justificada?",
        "¿Toda cláusula eliminada muestra un subordinador y una dependencia visible?",
        "¿Las marcas [S] aparecen solo cuando cambia realmente el participante?",
        "¿Cada límite de unidad puede explicarse desde el desarrollo y no solo desde el tema?",
        "¿Cada oración de Paso 13 usa un verbo permitido, conserva el orden y recorre todo el tronco?",
        "¿Se puede señalar en el texto cada afirmación de la oración final?",
    ])
    doc.build(story)
    return path


if __name__ == "__main__":
    for item in REPORTS:
        print(make_doc(item))
