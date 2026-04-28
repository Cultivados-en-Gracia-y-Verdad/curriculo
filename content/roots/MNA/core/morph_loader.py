def load_morphgnt(path):
    data = {}

    with open(path, encoding="utf-8") as f:
        for line in f:
            parts = line.strip().split()

            if len(parts) < 4:
                continue

            ref = parts[0]
            morph = parts[2]
            greek = parts[3]

            if ref not in data:
                data[ref] = []

            data[ref].append((greek, morph))

    return data