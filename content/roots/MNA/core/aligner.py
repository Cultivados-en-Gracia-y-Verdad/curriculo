def align_greek_morph(greek_words, morph_words):
    tokens = []

    for g, m in zip(greek_words, morph_words):
        tokens.append({
            "greek": g,
            "morph": m
        })

    return tokens