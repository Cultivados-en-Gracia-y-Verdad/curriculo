# ----------------------------
# TOKEN OBJECT
# ----------------------------
class Token:
    def __init__(self, greek):
        self.greek = greek
        self.spanish = None
        self.type = None
        self.morph = ""  # placeholder for now


# ----------------------------
# BUILD VERSE
# ----------------------------
def build_verse(ref, greek_words):
    verse = type("Verse", (), {})()
    verse.ref = ref
    verse.tokens = [Token(w) for w in greek_words]
    return verse


# ----------------------------
# APPLY ALIGNMENT
# ----------------------------
def apply_alignment(verse, alignment):

    if len(verse.tokens) != len(alignment):
        raise ValueError("Token count does not match alignment length")

    for token, (g, s, t) in zip(verse.tokens, alignment):

        if token.greek != g:
            raise ValueError(f"Mismatch: {token.greek} != {g}")

        token.spanish = s
        token.type = t


# ----------------------------
# PRINT ALIGNMENT
# ----------------------------
def print_alignment(verse):
    print(f"\n{verse.ref}")
    print("-" * 40)

    for t in verse.tokens:
        print(f"{t.greek} → {t.spanish} [{t.type}]")


# ----------------------------
# SUGGESTION SYSTEM (NEW)
# ----------------------------
def suggest_alignment(token):
    g = token.greek
    m = token.morph

    # participles
    if m.startswith("V-P"):
        return "expanded (participle → clause)"

    # articles
    if m.startswith("T-"):
        return "article (check context)"

    # pronouns
    if m.startswith("P-"):
        return "expanded (pronoun)"

    # prepositions
    if g in ["ἐν", "ἀπὸ", "περὶ", "ἐπὶ"]:
        return "likely preposition"

    return "no suggestion"