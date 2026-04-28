def clean_token(token):
    return (
        token.replace("⸂", "")
             .replace("⸃", "")
             .replace("⸀", "")
             .replace("·", "")
             .strip(",.;:")
    )


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

            # combine book + verse
            ref = parts[0] + " " + parts[1]

            words = [clean_token(w) for w in parts[2:] if clean_token(w)]

            verses[ref] = words

    return verses


def load_nbla(path):
    verses = {}

    with open(path, encoding="utf-8") as f:
        for line in f:
            line = line.strip()

            if not line:
                continue

            parts = line.split(maxsplit=1)

            if len(parts) < 2:
                continue

            ref = parts[0]
            text = parts[1]

            verses[ref] = text

    return verses