#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Deterministic pre-pass for the CGV manual pipeline.

    PYTHON (this) -> Editor 4B -> Verificador 9B -> especialistas -> Escriba -> Arquitecto

This runs BEFORE any model. Everything a script can state exactly, it states here, so no
model spends context re-deriving it and no model is trusted to count.

    python3 scripts/run-manual-checks.py \
        --manual "data/lbf/ot/daniel-manual.md" \
        --lbf    data/lbf/ot/daniel.md \
        --book   daniel

Writes reports/{book}/PYTHON_REPORT.md.

DESIGN NOTE — why this script never prints PASS
------------------------------------------------
`verify-skeleton-h4-packaging.py` returned PASS on the Daniel skeleton
(dangling 0 / overlaps 0 / missing 3-gram 0). Reading the same file found 21 atonic
tails, 22 one-word H4s, seven overlap runs, and the body of 9:25 -- the hinge verse of
the seventy weeks -- present in no line at all. The script was not lying; its word list
and overlap rule simply did not cover those cases.

So this script emits EVIDENCE and its own blind spots. It states counts. It never
certifies a manuscript. The gate is a human reading the surface, with this as one
witness.

Exit codes:  0 report written   2 usage / IO error
"""

from __future__ import annotations

import argparse
import re
import sys
import unicodedata
from collections import Counter
from pathlib import Path

# Words that must never END a Scripture line -- truncation signals.
# Deliberately broader than the older gate, which missed `sera` and `mojado`.
ATONIC_TAILS = {
    # copulas / auxiliaries
    "es", "son", "era", "eran", "fue", "fueron", "ha", "han", "habia", "habian",
    "he", "hemos", "sea", "sean", "sera", "seran", "seria", "esta", "estan",
    "estaba", "ser", "sido", "haber", "hay",
    # connectors / particles
    "y", "e", "o", "u", "ni", "que", "quien", "cual", "cuales", "mas", "pero",
    "sino", "porque", "pues", "ya", "si", "aunque", "cuando", "mientras",
    "entonces", "ahora", "tambien", "tanto", "cuanto", "segun", "hasta",
    "desde", "para", "por", "con", "sin", "sobre", "entre", "tras", "de", "a",
    "en", "al", "del",
    # articles / unstressed determiners -- NOT "el"/"ella"/"ellos" etc, the
    # stressed personal/prepositional pronouns, which are grammatical clause
    # endings ("...se fue de él" is complete), not truncation signals.
    "la", "lo", "los", "las", "un", "una", "unos", "unas", "su", "sus",
    "mi", "mis", "tu", "tus", "nuestro", "nuestra", "se", "le", "les", "me",
    "te", "nos", "esta", "este", "estos", "estas", "ese", "esa", "aquel",
}

STOPWORDS = ATONIC_TAILS | {
    "no", "si", "todo", "toda", "todos", "todas", "muy", "asi", "como", "donde",
}

FOOTNOTE_REF = re.compile(r"\[\^([A-Za-z0-9_-]+)\]")
FOOTNOTE_DEF = re.compile(r"^\[\^([A-Za-z0-9_-]+)\]:")
ITALIC = re.compile(r"\*([^*]+)\*")
LBF_VERSE = re.compile(r"^###\s+(\d+):(\d+)\s*$")
H3_REF = re.compile(r"^###\s+(.+?)(?:\s+—|\s+--|$)")


def norm(word: str) -> str:
    """Lowercase, strip accents and surrounding punctuation."""
    w = unicodedata.normalize("NFD", word.lower())
    w = "".join(c for c in w if unicodedata.category(c) != "Mn")
    return w.strip(".,;:!?¡¿()[]{}«»\"'—–-…*_")


def words_of(text: str) -> list[str]:
    return [w for w in (norm(t) for t in text.split()) if w]


class Line:
    __slots__ = ("n", "raw", "indent", "marker", "text")

    def __init__(self, n: int, raw: str):
        self.n = n
        self.raw = raw.rstrip("\n")
        stripped = self.raw.lstrip()
        self.indent = len(self.raw) - len(stripped)
        self.marker = ""
        self.text = stripped
        for m in ("######", "#####", "####", "###", "##", "#"):
            if stripped.startswith(m + " "):
                self.marker = m
                self.text = stripped[len(m) + 1:]
                return
        if stripped[:2] in ("- ", "+ ", "* ", "> "):
            self.marker = stripped[0]
            self.text = stripped[2:]

    @property
    def is_scripture(self) -> bool:
        return self.marker in ("####", "-", "+")

    def scripture_text(self) -> str:
        """Text inside italics, else the raw text (Scripture is italicised in CGV)."""
        found = ITALIC.findall(self.text)
        return " ".join(found) if found else self.text


def parse(path: Path) -> list[Line]:
    return [Line(i, raw) for i, raw in enumerate(path.read_text(encoding="utf-8").splitlines(), 1)]


def load_lbf(path: Path) -> dict[str, str]:
    verses: dict[str, str] = {}
    ref, buf = None, []
    for raw in path.read_text(encoding="utf-8").splitlines():
        m = LBF_VERSE.match(raw.strip())
        if m:
            if ref:
                verses[ref] = " ".join(buf).strip()
            ref, buf = f"{m.group(1)}:{m.group(2)}", []
        elif ref and raw.strip() and not raw.startswith(("#", ">")):
            buf.append(raw.strip())
    if ref:
        verses[ref] = " ".join(buf).strip()
    return verses


def longest_shared_run(a: list[str], b: list[str]) -> list[str]:
    best: list[str] = []
    for i in range(len(a)):
        for j in range(len(b)):
            k = 0
            while i + k < len(a) and j + k < len(b) and a[i + k] == b[j + k]:
                k += 1
            if k > len(best):
                best = a[i:i + k]
    return best


def main() -> int:
    ap = argparse.ArgumentParser(description="Deterministic CGV manual checks.")
    ap.add_argument("--manual", required=True, type=Path)
    ap.add_argument("--lbf", type=Path, help="LBF source md (enables coverage checks)")
    ap.add_argument("--book", default="libro")
    ap.add_argument("--out", type=Path)
    args = ap.parse_args()

    if not args.manual.is_file():
        print(f"error: no such manual: {args.manual}", file=sys.stderr)
        return 2

    lines = parse(args.manual)
    out: list[str] = []
    w = out.append

    w(f"# PYTHON_REPORT — {args.book}")
    w("")
    w(f"Manual: `{args.manual}`  ·  {len(lines)} líneas")
    if args.lbf:
        w(f"Fuente LBF: `{args.lbf}`")
    w("")
    w("**Este reporte es evidencia, no un veredicto.** Ver «Lo que este script no puede ver».")
    w("")

    # ---------------------------------------------------------------- counts
    counts = Counter(l.marker for l in lines if l.marker)
    h4 = [l for l in lines if l.marker == "####"]
    h3 = [l for l in lines if l.marker == "###"]

    w("## Conteo")
    w("")
    w("| Marcador | n |")
    w("|---|---|")
    for m in ("#", "##", "###", "####", "-", "+", "*", ">"):
        w(f"| `{m}` | {counts.get(m, 0)} |")
    for bad in ("#####", "######"):
        if counts.get(bad):
            w(f"| `{bad}` **(nunca válido en CGV)** | {counts[bad]} |")
    w("")

    findings: list[tuple[str, str]] = []

    # ------------------------------------------------------- H4 packaging
    by_n = {l.n: l for l in lines}

    def next_continues(n: int) -> bool:
        """True if the next non-blank line is a `-` continuation -- a legitimate
        independent+dependent split, not a truncation. Compiler emits these
        correctly; only flag a tail with NO such continuation."""
        i = n + 1
        while i in by_n and not by_n[i].raw.strip():
            i += 1
        nxt = by_n.get(i)
        return bool(nxt and nxt.marker == "-")

    one_word, tails = [], []
    for l in h4:
        ws = words_of(l.scripture_text())
        if len(ws) == 1:
            one_word.append((l.n, l.scripture_text()))
        if ws and ws[-1] in ATONIC_TAILS and not next_continues(l.n):
            tails.append((l.n, l.scripture_text(), ws[-1]))

    # Bucketed on purpose. A flat ">=3 consecutive words" rule fires on ordinary
    # repeated noun phrases ("jefe de los eunucos") appearing in two real clauses,
    # and a checker that cries wolf gets ignored -- the false-PASS problem inverted.
    # >=6 consecutive words is a span defect; 3-5 needs a human glance.
    overlaps, overlaps_weak = [], []
    for a, b in zip(h4, h4[1:]):
        run = longest_shared_run(words_of(a.scripture_text()), words_of(b.scripture_text()))
        if len(run) >= 6:
            overlaps.append((a.n, b.n, " ".join(run)))
        elif len(run) >= 3:
            overlaps_weak.append((a.n, b.n, " ".join(run)))

    w("## Empaquetado H4")
    w("")
    w(f"- H4 de una sola palabra: **{len(one_word)}**")
    w(f"- H4 que terminan en palabra átona o auxiliar: **{len(tails)}**")
    w(f"- Solapamientos entre H4 adyacentes, ≥6 palabras seguidas (defecto de span): **{len(overlaps)}**")
    w(f"- Coincidencias de 3–5 palabras (puede ser una frase repetida legítima): **{len(overlaps_weak)}**")
    w("")
    if one_word:
        w("### H4 de una palabra")
        w("")
        for n, t in one_word[:60]:
            w(f"- L{n} — `{t}`")
        w("")
    if tails:
        w("### Colas átonas")
        w("")
        for n, t, tail in tails[:60]:
            w(f"- L{n} — termina en **{tail}** — `{t[:90]}`")
        w("")
    if overlaps:
        w("### Solapamiento de costura (≥6 palabras — defecto de span)")
        w("")
        for n1, n2, run in overlaps[:60]:
            w(f"- L{n1} → L{n2} — repiten: `{run}`")
        w("")
    if overlaps_weak:
        w("### Coincidencias de 3–5 palabras (revisar a ojo)")
        w("")
        for n1, n2, run in overlaps_weak[:40]:
            w(f"- L{n1} → L{n2} — `{run}`")
        w("")
    for label, seq in (("H4 de una palabra", one_word), ("colas átonas", tails),
                       ("solapamientos de costura ≥6 palabras", overlaps)):
        if seq:
            findings.append(("empaquetado", f"{len(seq)} {label}"))

    # ------------------------------------------------- Scripture coverage
    if args.lbf and args.lbf.is_file():
        verses = load_lbf(args.lbf)
        manual_words = Counter()
        for l in lines:
            if l.is_scripture:
                manual_words.update(words_of(l.scripture_text()))

        missing_all, partial = [], []
        for ref, text in verses.items():
            content = [x for x in words_of(text) if len(x) >= 4 and x not in STOPWORDS]
            if not content:
                continue
            absent = [x for x in content if manual_words[x] == 0]
            if len(absent) == len(content):
                missing_all.append((ref, text[:110]))
            elif absent:
                partial.append((ref, absent))

        w("## Cobertura de Escritura")
        w("")
        w(f"- Versículos en la fuente: **{len(verses)}**")
        w(f"- Versículos cuyo contenido no aparece en NINGUNA línea: **{len(missing_all)}**")
        w(f"- Versículos con palabras de contenido ausentes: **{len(partial)}**")
        w("")
        if missing_all:
            w("### Ausentes por completo (bloqueo)")
            w("")
            for ref, t in missing_all:
                w(f"- **{ref}** — `{t}…`")
            w("")
            findings.append(("cobertura", f"{len(missing_all)} versículos ausentes por completo"))
        if partial:
            w("### Palabras de contenido ausentes")
            w("")
            for ref, absent in partial[:60]:
                w(f"- **{ref}** — falta: {', '.join(absent[:12])}")
            w("")
            findings.append(("cobertura", f"{len(partial)} versículos con palabras ausentes"))

    # ------------------------------------------------------ markup hygiene
    text_all = "\n".join(l.raw for l in lines)
    u_open, u_close = text_all.count("<u>"), text_all.count("</u>")

    refs = {m for l in lines for m in FOOTNOTE_REF.findall(l.raw)
            if not FOOTNOTE_DEF.match(l.raw.lstrip())}
    defs = {m.group(1) for l in lines if (m := FOOTNOTE_DEF.match(l.raw.lstrip()))}

    blank_runs, run, start = [], 0, 0
    for l in lines:
        if not l.raw.strip():
            run = run + 1 if run else 1
            start = start or l.n
        else:
            if run >= 2:
                blank_runs.append((start, run))
            run, start = 0, 0

    trailing = sum(1 for l in lines if l.raw != l.raw.rstrip())

    # non-Scripture riding a Scripture marker
    non_scripture = [
        (l.n, l.text[:70]) for l in lines
        if l.is_scripture and not ITALIC.search(l.text)
        and (l.text.isupper() or ":" in l.text[:28])
    ]

    w("## Marcado")
    w("")
    w(f"- `<u>` abre **{u_open}** / cierra **{u_close}**"
      f"{'  ← DESBALANCEADO' if u_open != u_close else ''}")
    w(f"- Notas al pie referenciadas sin definir: **{len(refs - defs)}**"
      f"{' — ' + ', '.join(sorted(refs - defs)) if refs - defs else ''}")
    w(f"- Notas al pie definidas sin usar: **{len(defs - refs)}**"
      f"{' — ' + ', '.join(sorted(defs - refs)) if defs - refs else ''}")
    w(f"- Rachas de 2+ líneas en blanco: **{len(blank_runs)}**")
    w(f"- Líneas con espacio final: **{trailing}**")
    w(f"- Líneas Escritura sin cursivas (posible texto no bíblico): **{len(non_scripture)}**")
    w("")
    if non_scripture:
        for n, t in non_scripture[:40]:
            w(f"  - L{n} — `{t}`")
        w("")
        findings.append(("marcado", f"{len(non_scripture)} líneas Escritura sin cursivas"))
    if u_open != u_close:
        findings.append(("marcado", "etiquetas <u> desbalanceadas"))
    if refs - defs:
        findings.append(("marcado", f"{len(refs - defs)} notas al pie sin definición"))

    # ---------------------------------------------------------- duplication
    h4_texts = Counter(l.scripture_text() for l in h4)
    dup_h4 = [(t, c) for t, c in h4_texts.items() if c > 1]
    quotes = Counter(l.text for l in lines if l.marker == ">" and len(l.text) > 40)
    dup_q = [(t, c) for t, c in quotes.items() if c > 1]

    w("## Duplicación (idéntica — cierta)")
    w("")
    w(f"- H4 repetidos: **{len(dup_h4)}**")
    w(f"- Comentarios `>` repetidos: **{len(dup_q)}**")
    w("")
    for t, c in dup_h4[:25]:
        w(f"  - ×{c} — `{t[:80]}`")
    for t, c in dup_q[:25]:
        w(f"  - ×{c} — `{t[:80]}`")
    w("")
    if dup_h4 or dup_q:
        findings.append(("duplicación", f"{len(dup_h4)} H4 y {len(dup_q)} comentarios repetidos"))

    # ------------------------------------------------------- blind spots
    w("## Lo que este script NO puede ver")
    w("")
    w("No trate un reporte sin hallazgos como una aprobación. Este script no puede juzgar:")
    w("")
    w("- si una cláusula marcada independiente realmente lo es")
    w("- si falta un independiente (un imperativo enterrado en `-` o `+`)")
    w("- si un comentario interpreta en vez de observar")
    w("- si un H1 es cierto de todos sus H2, o si los rangos teselan el libro")
    w("- si una forma hebrea, aramea o griega está bien nombrada")
    w("- si una afirmación histórica es defendible")
    w("- si el telos fue fabricado")
    w("- cobertura palabra por palabra: compara palabras de contenido (≥4 letras) contra")
    w("  todo el manual, así que una palabra movida al versículo equivocado no se detecta")
    w("")
    w("Esas preguntas son de Editor → Verificador → especialistas → Arquitecto,")
    w("y ninguna se cierra sin que un humano lea la superficie.")
    w("")

    w("## Resumen")
    w("")
    if findings:
        for kind, msg in findings:
            w(f"- **{kind}** — {msg}")
    else:
        w("- Sin hallazgos determinísticos. **Esto no significa que el manual esté bien.**")
    w("")

    dest = args.out or Path("reports") / args.book / "PYTHON_REPORT.md"
    dest.parent.mkdir(parents=True, exist_ok=True)
    dest.write_text("\n".join(out) + "\n", encoding="utf-8")

    print(f"→ {dest}")
    print(f"  H4 {len(h4)} · H3 {len(h3)} · hallazgos determinísticos: {len(findings)}")
    for kind, msg in findings:
        print(f"  - {kind}: {msg}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
