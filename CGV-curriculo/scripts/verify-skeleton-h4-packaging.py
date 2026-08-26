#!/usr/bin/env python3
"""Hard gate: Compiler / Step-0 skeleton H4 packaging must be emit-ready.

Run this on the Compiler Generate MD (or the Arquitecto working copy) BEFORE
anyone names H2/H1/telos/title. Exit 0 only when the student-facing Scripture
surface is clean enough to structure on.

This is the check that was missing on Daniel: structural JSON integrity was
treated as “done” while ~34% of H4s ended on a dangling connector and adjacent
H4s repeated text. Those defects lock into weeks of Arquitecto → Escriba →
Editor work. They are Observer/Compiler packaging debt — not soft notes.

  python3 scripts/verify-skeleton-h4-packaging.py \\
    --manual ~/Downloads/daniel-manual-skeleton.md \\
    --lbf data/lbf/ot/daniel.md

Exit codes:
  0  PASS
  1  FAIL (blocking — do not start Arquitecto naming)
  2  usage / IO error
"""

from __future__ import annotations

import argparse
import json
import re
import sys
import unicodedata
from collections import Counter
from pathlib import Path

# Function words that must not end an H4 claim. A real independent clause ends
# on content, not on the word that leans into the next clause.
DANGLING_TAIL = {
    "y", "e", "o", "u", "ni", "mas", "pero", "empero", "sino",
    "que", "quien", "quienes", "cual", "cuales", "cuyo", "cuya",
    "si", "aunque", "porque", "pues", "cuando", "mientras", "como",
    "de", "del", "a", "al", "en", "con", "por", "para", "sin",
    "sobre", "entre", "desde", "hasta", "hacia", "segun", "tras",
    "el", "la", "los", "las", "lo", "un", "una", "unos", "unas",
    "le", "les", "se", "me", "te", "nos", "os",
    "mi", "mis", "tu", "tus", "su", "sus", "no", "ha", "he",
}

# Fail thresholds — intentional hardness. Soft “debt” language is how Daniel
# slipped through. Tune only with an explicit product decision, not ad hoc.
MAX_DANGLING_FRACTION = 0.05   # >5% of H4s ending on a connector → FAIL
MAX_DANGLING_ABS = 10          # or more than 10 absolute, even on a short book
MAX_ADJACENT_OVERLAPS = 0      # any ≥3-word seam repeat → FAIL
MAX_MISSING_VERSE_3GRAMS = 0   # any LBF verse without a 3-gram in Scripture → FAIL

H4_RE = re.compile(r"^#### \*(.+?)\*\s*$", re.M)
DEP_RE = re.compile(r"^[-+] \*(.+?)\*\s*$", re.M)
STOP_SECTIONS = (
    "\n## Actores",
    "\n## Movimiento",
    "\n## Convergencia",
    "\n## Tensión",
    "\n## Apéndice",
    "\n# Apéndices",
)


def fold(s: str) -> str:
    s = unicodedata.normalize("NFD", s.lower())
    return "".join(c for c in s if unicodedata.category(c) != "Mn")


def last_word(text: str) -> str:
    parts = re.findall(r"[\wáéíóúüñÁÉÍÓÚÜÑ]+", text, re.I)
    return fold(parts[-1]) if parts else ""


def last_surface(text: str) -> str:
    parts = re.findall(r"[\wáéíóúüñÁÉÍÓÚÜÑ]+", text, re.I)
    return parts[-1] if parts else ""


def is_dangling_ending(text: str) -> bool:
    """True when the H4 ends on a leaner, not on a finished claim.

    Tonic pronouns Él/Ella fold to el/ella and must not trip the article ban.
    """
    surface = last_surface(text)
    if not surface:
        return False
    # Él / Ella / Ellos / Ellas are valid clause ends («se fue de él»).
    if surface[0] in "Éé" and fold(surface) in {"el", "ella", "ellos", "ellas"}:
        return False
    return fold(surface) in DANGLING_TAIL


def words(text: str) -> list[str]:
    return [fold(w) for w in re.findall(r"[\wáéíóúüñÁÉÍÓÚÜÑ]+", text, re.I)]


def student_body(md: str) -> str:
    """Cut workshop / appendix material that is not student H4 packaging."""
    cut = len(md)
    for marker in STOP_SECTIONS:
        i = md.find(marker)
        if 0 < i < cut:
            cut = i
    return md[:cut]


def load_lbf_verses(path: Path) -> dict[tuple[int, int], str]:
    verses: dict[tuple[int, int], str] = {}
    cur: tuple[int, int] | None = None
    buf: list[str] = []

    def flush() -> None:
        nonlocal cur, buf
        if cur is not None:
            verses[cur] = " ".join(buf).strip()
        buf = []

    for line in path.read_text(encoding="utf-8").splitlines():
        m = re.match(r"^###\s+(\d+):(\d+)\s*$", line)
        if m:
            flush()
            cur = (int(m.group(1)), int(m.group(2)))
            continue
        if cur and line.strip() and not line.startswith("#") and not line.startswith(">"):
            buf.append(line.strip())
    flush()
    return verses


def norm_space(s: str) -> str:
    s = fold(s)
    s = re.sub(r"[^\wáéíóúüñ\s]", " ", s, flags=re.I)
    return re.sub(r"\s+", " ", s).strip()


def audit(manual_path: Path, lbf_path: Path | None) -> dict:
    md = manual_path.read_text(encoding="utf-8")
    body = student_body(md)
    h4s = H4_RE.findall(body)
    deps = DEP_RE.findall(body)

    dangling = [
        (i + 1, h4, last_word(h4)) for i, h4 in enumerate(h4s) if is_dangling_ending(h4)
    ]
    # Mid-phrase bleed: opens on a fragment connector, not a normal clause opener
    # (leading Y/E/Entonces/Pero are fine in Hebrew narrative Spanish).
    mid_starts = [
        (i + 1, h4)
        for i, h4 in enumerate(h4s)
        if re.match(
            r"^(se|de|del|la|el|los|las|a|al|en|con|por|para|su|sus|lo|le|les|ni con)\b",
            h4.strip(),
            re.I,
        )
    ]

    overlaps: list[tuple[int, int, str, str]] = []
    for i, (a, b) in enumerate(zip(h4s, h4s[1:])):
        wa, wb = words(a), words(b)
        for n in range(min(8, len(wa), len(wb)), 2, -1):
            if wa[-n:] == wb[:n]:
                overlaps.append((i + 1, n, a[:80], b[:80]))
                break

    missing_verses: list[tuple[str, str]] = []
    if lbf_path and lbf_path.exists():
        verses = load_lbf_verses(lbf_path)
        scripture_blob = norm_space(" ".join(h4s + deps))
        for (ch, vs), text in sorted(verses.items()):
            w = norm_space(text).split()
            if len(w) < 3:
                continue
            found = False
            for n in (4, 3):
                for j in range(len(w) - n + 1):
                    if " ".join(w[j : j + n]) in scripture_blob:
                        found = True
                        break
                if found:
                    break
            if not found:
                missing_verses.append((f"{ch}:{vs}", text[:100]))

    n = max(len(h4s), 1)
    dangling_frac = len(dangling) / n
    fail_reasons: list[str] = []
    if len(dangling) > MAX_DANGLING_ABS or dangling_frac > MAX_DANGLING_FRACTION:
        fail_reasons.append(
            f"dangling H4 endings: {len(dangling)}/{len(h4s)} "
            f"({dangling_frac:.0%}; fail if >{MAX_DANGLING_FRACTION:.0%} or >{MAX_DANGLING_ABS})"
        )
    if len(overlaps) > MAX_ADJACENT_OVERLAPS:
        fail_reasons.append(
            f"adjacent H4 seam overlaps (≥3 words): {len(overlaps)} "
            f"(fail if >{MAX_ADJACENT_OVERLAPS})"
        )
    if lbf_path and len(missing_verses) > MAX_MISSING_VERSE_3GRAMS:
        fail_reasons.append(
            f"LBF verses with no 3-gram in ####/-/+: {len(missing_verses)} "
            f"(fail if >{MAX_MISSING_VERSE_3GRAMS})"
        )

    return {
        "manual": str(manual_path),
        "lbf": str(lbf_path) if lbf_path else None,
        "h4Count": len(h4s),
        "danglingCount": len(dangling),
        "danglingFraction": round(dangling_frac, 4),
        "midStartCount": len(mid_starts),
        "adjacentOverlapCount": len(overlaps),
        "missingVerseCount": len(missing_verses),
        "danglingSamples": [
            {"n": n, "endsWith": w, "h4": h4[:100]} for n, h4, w in dangling[:12]
        ],
        "overlapSamples": [
            {"afterH4": a, "sharedWords": n, "prev": p, "next": nxt}
            for a, n, p, nxt in overlaps[:8]
        ],
        "missingVerseSamples": [
            {"ref": r, "lbf": t} for r, t in missing_verses[:12]
        ],
        "verdict": "FAIL" if fail_reasons else "PASS",
        "failReasons": fail_reasons,
    }


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--manual", type=Path, required=True, help="Compiler / Step-0 MD")
    ap.add_argument(
        "--lbf",
        type=Path,
        default=None,
        help="Optional LBF book MD for verse-coverage check",
    )
    ap.add_argument("--json", action="store_true", help="Print full JSON report")
    args = ap.parse_args()

    if not args.manual.exists():
        print(f"error: manual not found: {args.manual}", file=sys.stderr)
        sys.exit(2)

    report = audit(args.manual, args.lbf)
    if args.json:
        print(json.dumps(report, ensure_ascii=False, indent=2))
    else:
        print(f"manual: {report['manual']}")
        if report["lbf"]:
            print(f"lbf:    {report['lbf']}")
        print(f"H4s: {report['h4Count']}")
        print(
            f"dangling endings: {report['danglingCount']} "
            f"({report['danglingFraction']:.0%})"
        )
        print(f"mid-phrase H4 starts: {report['midStartCount']} (informational)")
        print(f"adjacent overlaps: {report['adjacentOverlapCount']}")
        if report["lbf"]:
            print(f"LBF verses missing 3-gram: {report['missingVerseCount']}")
        print()
        if report["failReasons"]:
            print("FAIL — do not start Arquitecto naming:")
            for reason in report["failReasons"]:
                print(f"  • {reason}")
            if report["danglingSamples"]:
                print("\ndangling samples:")
                for s in report["danglingSamples"][:5]:
                    print(f"  …{s['endsWith']}: {s['h4']}")
            if report["overlapSamples"]:
                print("\noverlap samples:")
                for s in report["overlapSamples"][:3]:
                    print(f"  shared {s['sharedWords']}: {s['prev']}  ‖  {s['next']}")
            if report["missingVerseSamples"]:
                print("\nmissing-verse samples:")
                for s in report["missingVerseSamples"][:5]:
                    print(f"  {s['ref']}: {s['lbf']}")
        else:
            print("PASS — H4 packaging gate clear.")

    sys.exit(1 if report["verdict"] == "FAIL" else 0)


if __name__ == "__main__":
    main()
