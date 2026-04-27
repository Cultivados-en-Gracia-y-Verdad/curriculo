with open("data/1corintios.md", encoding="utf-8") as f:
    for line in f:
        line = line.strip()

        if line.startswith("- greek:"):
            word = line.split(":", 1)[1].strip()
            print(word)