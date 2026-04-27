def load_sblgnt(path):
    verses = {}

    with open(path, encoding="utf-8") as f:
        for line in f:
            line = line.strip()

            if not line:
                continue

            parts = line.split()

            # we need at least: ref + something
            if len(parts) < 2:
                continue

            ref = parts[0]
            words = parts[1:]

            verses[ref] = words

    return verses