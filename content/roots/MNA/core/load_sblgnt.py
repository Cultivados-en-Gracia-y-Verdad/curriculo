def load_sblgnt(path):
    verses = {}

    with open(path, encoding="utf-8") as f:
        for line in f:
            line = line.strip()

            if not line:
                continue

            parts = line.split()

            if len(parts) < 3:
                continue

            # FIX: combine first two parts
            ref = parts[0] + " " + parts[1]

            words = parts[2:]

            verses[ref] = words

    return verses