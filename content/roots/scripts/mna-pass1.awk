# mna-pass1.awk — FIXED (adds verse structure)

BEGIN {
    FS=" "
    prev_ref = ""
}

{
    if (NF < 4) next

    ref   = $1
    pos   = $2
    morph = $3
    greek = $4

    # clean punctuation
    gsub(/[⸀⸂⸃,.;·]/, "", greek)

    # ---- EXTRACT CHAPTER + VERSE ----
    chapter = substr(ref, 3, 2) + 0
    verse   = substr(ref, 5, 2) + 0

    current_ref = chapter ":" verse

    # ---- NEW VERSE ----
    if (current_ref != prev_ref) {
        if (NR > 1) print ""
        print "### " current_ref
        prev_ref = current_ref
    }

    # ---- OUTPUT TOKEN ----
    print greek " (" pos morph ")"
}