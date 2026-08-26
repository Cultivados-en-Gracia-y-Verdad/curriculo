#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Authority gate — did an agent change only what it was authorized to change?

    SOURCE --> agent --> OUTPUT
                 |
            this script compares them

Each agent has a clearance. Editor may touch whitespace. Verificador and the
specialists may touch nothing at all. Escriba may write `>` commentary and split `+`
phrases but may never alter a `####` or a `-`. Arquitecto may set navigation headings
but may never alter Scripture or technical `*` data.

If Editor was authorized to fix whitespace and a paragraph changed: FAIL.
**The agent does not get to explain itself.** The diff is the verdict.

    python3 scripts/check-authority.py \
        --before data/lbf/ot/daniel-manual.md \
        --after  data/lbf/ot/daniel-manual.edited.md \
        --agent  editor

Exit codes:  0 PASS   1 FAIL (unauthorized change)   2 usage / IO error
"""

from __future__ import annotations

import argparse
import difflib
from collections import Counter
import re
import sys
from pathlib import Path

ITALIC = re.compile(r"\*([^*]+)\*")
HEB = re.compile(r"[֐-׿]")
GRK = re.compile(r"[Ͱ-Ͽἀ-῿]")

# What each agent may change. Anything not listed is forbidden.
#   whitespace  blank-line runs, trailing space, indentation-only changes
#   commentary  `>` lines
#   phrase      `+` Scripture lines (splitting only -- words must be preserved)
#   nav         `#`, `##`, `###` heading text
#   nothing     read-only
AUTHORITY: dict[str, set[str]] = {
    "python":           {"whitespace"},
    "editor":           {"whitespace"},
    "verificador":      set(),
    "esp-texto":        set(),
    "esp-estructura":   set(),
    "esp-lenguas":      set(),
    "esp-historico":    set(),
    "esp-observacion":  set(),
    "escriba":          {"whitespace", "commentary", "phrase", "nav"},
    "arquitecto":       {"whitespace", "nav"},
    "human":            {"whitespace", "commentary", "phrase", "nav", "scripture", "technical"},
}

MARKERS = ("######", "#####", "####", "###", "##", "#")


def classify(line: str) -> str:
    s = line.lstrip()
    for m in MARKERS:
        if s.startswith(m + " "):
            return "nav" if m in ("#", "##", "###") else "anchor"
    if s.startswith("- "):
        return "dependent"
    if s.startswith("+ "):
        return "phrase"
    if s.startswith("* "):
        return "technical"
    if s.startswith("> "):
        return "commentary"
    return "prose" if s else "blank"


# Which authority token is needed to legitimately change a line of this kind.
NEEDS = {
    "anchor": "scripture",
    "dependent": "scripture",
    "phrase": "phrase",
    "technical": "technical",
    "commentary": "commentary",
    "nav": "nav",
    "prose": "commentary",
    "blank": "whitespace",
}


def scripture_words(line: str) -> list[str]:
    found = ITALIC.findall(line)
    return " ".join(found).split() if found else line.split()


def main() -> int:
    ap = argparse.ArgumentParser(description="Agent authority gate.")
    ap.add_argument("--before", required=True, type=Path)
    ap.add_argument("--after", required=True, type=Path)
    ap.add_argument("--agent", required=True, choices=sorted(AUTHORITY))
    ap.add_argument("--report", type=Path, help="write findings here as markdown")
    args = ap.parse_args()

    for p in (args.before, args.after):
        if not p.is_file():
            print(f"error: no such file: {p}", file=sys.stderr)
            return 2

    allowed = AUTHORITY[args.agent]
    a = args.before.read_text(encoding="utf-8").splitlines()
    b = args.after.read_text(encoding="utf-8").splitlines()

    violations: list[str] = []
    notes: list[str] = []

    # ---- structural invariants that hold for EVERY agent -------------------
    def anchors(lines):
        return [l.strip() for l in lines if classify(l) == "anchor"]

    a_anchor, b_anchor = anchors(a), anchors(b)
    if len(a_anchor) != len(b_anchor):
        violations.append(
            f"H4 count changed: {len(a_anchor)} → {len(b_anchor)} "
            f"({len(b_anchor) - len(a_anchor):+d})")
    lost = [x for x in a_anchor if x not in b_anchor]
    gained = [x for x in b_anchor if x not in a_anchor]
    for x in lost[:20]:
        violations.append(f"H4 desaparecido: `{x[:80]}`")
    for x in gained[:20]:
        violations.append(f"H4 nuevo: `{x[:80]}`")

    # new source-language material appearing is always suspicious
    a_script = "\n".join(a)
    b_script = "\n".join(b)
    if not HEB.search(a_script) and HEB.search(b_script):
        violations.append("apareció texto hebreo/arameo que no estaba en el original")
    if not GRK.search(a_script) and GRK.search(b_script):
        violations.append("apareció texto griego que no estaba en el original")

    # ---- line-level diff ---------------------------------------------------
    sm = difflib.SequenceMatcher(None, a, b, autojunk=False)
    changed_kinds: dict[str, int] = {}

    for tag, i1, i2, j1, j2 in sm.get_opcodes():
        if tag == "equal":
            continue
        old = a[i1:i2]
        new = b[j1:j2]

        for line in old + new:
            kind = classify(line)
            # whitespace-only change?
            if tag == "replace" and len(old) == len(new):
                pass
            changed_kinds[kind] = changed_kinds.get(kind, 0) + 1

        # whitespace-only replacements are exempt
        if tag == "replace" and [x.strip() for x in old] == [x.strip() for x in new]:
            continue
        if tag in ("insert", "delete") and all(not x.strip() for x in old + new):
            continue

        # A `replace` opcode can span lines that are actually identical -- difflib
        # groups them. Flagging every line in the block produces hundreds of false
        # violations, and a gate that cries wolf gets ignored. Compare by content
        # and flag only lines that genuinely appear on one side and not the other.
        old_stripped = [x.strip() for x in old if x.strip()]
        new_stripped = [x.strip() for x in new if x.strip()]
        old_pool, new_pool = Counter(old_stripped), Counter(new_stripped)
        really_changed = list((old_pool - new_pool).elements()) + \
                         list((new_pool - old_pool).elements())

        for line in really_changed:
            kind = classify(line)
            need = NEEDS.get(kind, "scripture")
            if need not in allowed:
                violations.append(
                    f"L{i1 + 1} — `{args.agent}` no tiene autoridad sobre «{kind}» "
                    f"(requiere «{need}»): `{line[:70]}`")

    # ---- phrase splitting must preserve every word -------------------------
    if "phrase" in allowed:
        aw = [w for l in a if classify(l) == "phrase" for w in scripture_words(l)]
        bw = [w for l in b if classify(l) == "phrase" for w in scripture_words(l)]
        if aw != bw:
            missing = [w for w in aw if w not in bw]
            added = [w for w in bw if w not in aw]
            if missing or added:
                violations.append(
                    f"la división de `+` alteró palabras — faltan {missing[:8]}, "
                    f"sobran {added[:8]}")
            else:
                notes.append("`+` reordenado pero sin pérdida de palabras — revisar a ojo")

    # ---- report ------------------------------------------------------------
    status = "FAIL" if violations else "PASS"
    out = [
        f"# AUTHORITY CHECK — {args.agent}",
        "",
        f"Antes: `{args.before}`",
        f"Después: `{args.after}`",
        f"Autoridad concedida: {', '.join(sorted(allowed)) or '**ninguna (solo lectura)**'}",
        "",
        f"## RESULTADO: {status}",
        "",
    ]
    if violations:
        out.append(f"### Cambios fuera de autoridad ({len(violations)})")
        out.append("")
        out += [f"- {v}" for v in violations[:80]]
        out.append("")
        out.append("El agente no puede justificar estos cambios. Revertir y reasignar la tarea.")
        out.append("")
    else:
        out.append("Todos los cambios caen dentro de la autoridad del agente.")
        out.append("")
        out.append("**Esto no dice que los cambios sean correctos** — solo que estaban permitidos.")
        out.append("")
    if notes:
        out.append("### Notas")
        out += [f"- {n}" for n in notes]
        out.append("")
    if changed_kinds:
        out.append("### Líneas tocadas por tipo")
        out.append("")
        out += [f"- {k}: {v}" for k, v in sorted(changed_kinds.items())]
        out.append("")

    text = "\n".join(out) + "\n"
    if args.report:
        args.report.parent.mkdir(parents=True, exist_ok=True)
        args.report.write_text(text, encoding="utf-8")
        print(f"→ {args.report}")
    print(f"{status} — {args.agent}: {len(violations)} cambios fuera de autoridad")
    for v in violations[:10]:
        print(f"  - {v}")
    return 1 if violations else 0


if __name__ == "__main__":
    sys.exit(main())
