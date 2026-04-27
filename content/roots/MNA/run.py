import sys
from core.loader import load_sblgnt

# ----------------------------
# GET BOOK FROM COMMAND LINE
# ----------------------------
if len(sys.argv) < 2:
    print("Usage: python3 run.py <book>")
    sys.exit(1)

book = sys.argv[1]

# ----------------------------
# LOAD FILE BASED ON BOOK
# ----------------------------
path = f"data/SBLGNT/{book}.md"

sbl = load_sblgnt(path)

# ----------------------------
# TEST: PRINT FIRST VERSE
# ----------------------------
first_ref = list(sbl.keys())[0]

print(first_ref)
for w in sbl[first_ref]:
    print(w)