import sys

from core.loader import load_sblgnt, load_nbla
from core.morph_loader import load_morphgnt
from core.aligner import (
    build_verse,
    apply_alignment,
    print_alignment,
    suggest_alignment,
)

# ----------------------------
# INPUT
# ----------------------------
if len(sys.argv) < 2:
    print("Usage: python3 run.py <book>")
    sys.exit(1)

book = sys.argv[1]

# ----------------------------
# LOAD DATA
# ----------------------------
sbl_path = f"data/SBLGNT/{book}.md"
nbla_path = f"data/NBLA/{book}.nbla.md"
morph_path = f"data/MorphGNT/{book}.txt"

sbl = load_sblgnt(sbl_path)
nbla = load_nbla(nbla_path)
morph = load_morphgnt(morph_path)

# ----------------------------
# TARGET VERSE
# ----------------------------
target_ref = "1corintios 1:4"

# ----------------------------
# GET TOKENS
# ----------------------------
full_tokens = sbl[target_ref]

print("\nTARGET REF:", target_ref)

print("\nALL TOKENS:")
for t in full_tokens:
    print(t)

# ----------------------------
# LIMIT TOKENS
# ----------------------------
N = 18
greek_words = full_tokens[:N]

print("\nUSING FIRST", N, "TOKENS:")
for t in greek_words:
    print(t)

# ----------------------------
# BUILD VERSE
# ----------------------------
verse = build_verse(target_ref, greek_words)

# ----------------------------
# ATTACH MORPHOLOGY
# ----------------------------
morph_tokens = morph[target_ref][:N]

for token, (g, m) in zip(verse.tokens, morph_tokens):
    if token.greek != g:
        raise ValueError(f"Morph mismatch: {token.greek} != {g}")
    token.morph = m

# ----------------------------
# SUGGESTIONS
# ----------------------------
print("\nSUGGESTIONS:")
for t in verse.tokens:
    print(f"{t.greek} → {suggest_alignment(t)}")

# ----------------------------
# ALIGNMENT (MUST MATCH N)
# ----------------------------
alignment = [
    ("Εὐχαριστῶ", "doy gracias", "expanded"),
    ("τῷ", "a", "expanded"),
    ("θεῷ", "Dios", "direct"),
    ("μου", "mi", "expanded"),
    ("πάντοτε", "siempre", "direct"),
    ("περὶ", "por", "expanded"),
    ("ὑμῶν", "ustedes", "expanded"),
    ("ἐπὶ", "por", "expanded"),
    ("τῇ", "la", "expanded"),
    ("χάριτι", "gracia", "direct"),
    ("τοῦ", "de", "direct"),
    ("θεοῦ", "Dios", "direct"),
    ("τῇ", "que", "expanded"),
    ("δοθείσῃ", "fue dada", "expanded"),
    ("ὑμῖν", "les", "expanded"),
    ("ἐν", "en", "direct"),
    ("Χριστῷ", "en Cristo Jesús", "merged-forward"),
    ("Ἰησοῦ", "", "merged-backward"),
]

# ----------------------------
# VALIDATION
# ----------------------------
if len(greek_words) != len(alignment):
    print("\n❌ LENGTH MISMATCH")
    print("TOKENS:", len(greek_words))
    print("ALIGNMENT:", len(alignment))
    sys.exit(1)

# ----------------------------
# APPLY + PRINT
# ----------------------------
apply_alignment(verse, alignment)
print_alignment(verse)