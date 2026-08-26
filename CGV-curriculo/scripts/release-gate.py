#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Release gate — can we DEMONSTRATE that the manual satisfies its contract?

The question is not "does the final manual look good?" It is: does it satisfy the
manifest, with every required review complete and no unresolved blocking finding?

**The default is NOT RELEASED.** A manuscript earns FINAL; it is never assumed to have
it. A gate that cannot prove a requirement reports it unproven, never absent.

    python3 scripts/release-gate.py --manifest manifests/daniel.json

Exit codes:  0 RELEASED   1 NOT RELEASED   2 usage / IO error
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

TICK, CROSS, DASH = "✓", "✗", "–"

BLOCKING_WORDS = re.compile(r"\b(BLOQUEADO|CRITICAL|CRÍTICO|FAIL|INCORRECTO)\b")
HIGH_WORDS = re.compile(r"\b(HIGH|ALTA|INTERPRETACIÓN|INFERENCIA)\b")


class Check:
    def __init__(self, group: str, label: str, ok: bool | None, detail: str = ""):
        self.group, self.label, self.ok, self.detail = group, label, ok, detail

    @property
    def mark(self) -> str:
        return TICK if self.ok else (DASH if self.ok is None else CROSS)


def count_marker(lines: list[str], marker: str) -> int:
    n = 0
    for raw in lines:
        s = raw.lstrip()
        if marker in ("#", "##", "###", "####"):
            if s.startswith(marker + " ") and not s.startswith(marker + "# "):
                n += 1
        elif s.startswith(marker + " "):
            n += 1
    return n


def main() -> int:
    ap = argparse.ArgumentParser(description="CGV manual release gate.")
    ap.add_argument("--manifest", required=True, type=Path)
    ap.add_argument("--out", type=Path)
    args = ap.parse_args()

    if not args.manifest.is_file():
        print(f"error: no such manifest: {args.manifest}", file=sys.stderr)
        return 2

    mf = json.loads(args.manifest.read_text(encoding="utf-8"))
    book = mf.get("book", "libro")
    root = args.manifest.parent.parent
    checks: list[Check] = []

    # ---------------------------------------------------------------- STRUCTURE
    manual = root / mf["source"]["manual"]
    if manual.is_file():
        lines = manual.read_text(encoding="utf-8").splitlines()
        req = mf.get("required", {})
        confirmed = req.get("_confirmed_by_human", False)

        for key, marker, label in (("h4_clauses", "####", "H4 anchors"),
                                   ("h3_units", "###", "H3 units")):
            want = req.get(key)
            got = count_marker(lines, marker)
            if want is None:
                checks.append(Check("STRUCTURE", label, None, "sin requisito en el manifiesto"))
            elif not confirmed:
                checks.append(Check("STRUCTURE", label, None,
                                    f"{got}/{want} — requisito NO confirmado por humano"))
            else:
                checks.append(Check("STRUCTURE", label, got == want, f"{got}/{want}"))

        for bad in ("#####", "######"):
            n = sum(1 for l in lines if l.lstrip().startswith(bad + " "))
            checks.append(Check("STRUCTURE", f"sin {bad}", n == 0, f"{n} encontrados"))
    else:
        checks.append(Check("STRUCTURE", "manual presente", False, str(manual)))

    # ----------------------------------------------------------------- MARKDOWN
    if manual.is_file():
        text = manual.read_text(encoding="utf-8")
        o, c = text.count("<u>"), text.count("</u>")
        checks.append(Check("MARKDOWN", "etiquetas <u> balanceadas", o == c, f"{o}/{c}"))
        checks.append(Check("MARKDOWN", "sin fences sin cerrar", text.count("```") % 2 == 0))
        runs = len(re.findall(r"\n{3,}", text))
        checks.append(Check("MARKDOWN", "sin rachas de líneas en blanco", runs == 0, f"{runs}"))

    # ---------------------------------------------------------------- REVIEWS
    reviews = mf.get("required_reviews", {})
    unresolved: list[str] = []
    for name, spec in reviews.items():
        rp = root / spec["report"]
        if not rp.is_file():
            checks.append(Check("VERIFICATION", name, False, "reporte ausente"))
            continue
        body = rp.read_text(encoding="utf-8")
        blocking = BLOCKING_WORDS.findall(body)
        if not spec.get("complete", False):
            checks.append(Check("VERIFICATION", name, False,
                                "reporte existe pero no marcado complete en el manifiesto"))
        elif blocking:
            checks.append(Check("VERIFICATION", name, False,
                                f"{len(blocking)} hallazgos bloqueantes sin resolver"))
            unresolved.append(name)
        else:
            checks.append(Check("VERIFICATION", name, True))

    # ------------------------------------------------------------------ DEBT
    debt = mf.get("known_open_debt", [])
    checks.append(Check("EDITORIAL", "sin deuda abierta declarada", not debt, f"{len(debt)} ítems"))

    lang = mf.get("language", {})
    if lang.get("purpose_frame_detection_runs") is False:
        checks.append(Check("EDITORIAL", "telos no fabricado", None,
                            "Observer no entrega candidato en este libro — verificación humana"))

    # ---------------------------------------------------------------- render
    released = all(c.ok for c in checks if c.ok is not None) and not unresolved
    unproven = [c for c in checks if c.ok is None]
    if unproven:
        released = False

    out = [f"{mf.get('project', book).upper()} — RELEASE CHECK", ""]
    for group in ("STRUCTURE", "MARKDOWN", "VERIFICATION", "EDITORIAL"):
        rows = [c for c in checks if c.group == group]
        if not rows:
            continue
        out.append(group)
        for c in rows:
            detail = f"  ({c.detail})" if c.detail else ""
            out.append(f"{c.mark} {c.label}{detail}")
        out.append("")

    out.append(f"STATUS: {'RELEASED' if released else 'NOT RELEASED'}")
    out.append("")
    if not released:
        out.append("Pendiente:")
        for c in checks:
            if c.ok is False:
                out.append(f"  - {c.label} — {c.detail or 'falla'}")
            elif c.ok is None:
                out.append(f"  - {c.label} — NO DEMOSTRADO ({c.detail})")
        out.append("")
        out.append("Un requisito que no se puede demostrar cuenta como no cumplido.")
        out.append("El manuscrito se gana el FINAL; nunca se le presume.")

    text = "\n".join(out) + "\n"
    dest = args.out or root / "reports" / book / "RELEASE_CHECK.md"
    dest.parent.mkdir(parents=True, exist_ok=True)
    dest.write_text(text, encoding="utf-8")
    print(text)
    print(f"→ {dest}")
    return 0 if released else 1


if __name__ == "__main__":
    sys.exit(main())
