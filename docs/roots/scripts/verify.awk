#!/usr/bin/env gawk -f

BEGIN {
    FS=" "
    errors = 0
    verse_count = 0
}

# -----------------------------
# NORMALIZATION FUNCTION
# -----------------------------
function normalize(s) {

    gsub(/[⸀⸂⸃⸄⸅⸆⸇⸈⸉]/, "", s)
    gsub(/[.,;·:!?]/, "", s)
    gsub(/^ +| +$/, "", s)

    return s
}

# -----------------------------
# BUILD GREEK WORD SET (SBLGNT)
# -----------------------------
FNR==NR {

    line = normalize($0)
    n = split(line, words, " ")

    for (i = 1; i <= n; i++) {
        if (words[i] != "") {
            sbl_words[words[i]] = 1
        }
    }

    next
}

# -----------------------------
# VERSE HEADER
# -----------------------------
/^###/ {
    current_ref = $3
    gsub(/[{}#]/, "", current_ref)
    verse_count++
    next
}

# -----------------------------
# FORBIDDEN SEPARATOR LINES
# -----------------------------
/^-{2,}$/ {
    print "ERROR: Separator line detected (" current_ref ")"
    errors++
    next
}

# -----------------------------
# VERB LINES (-)
# -----------------------------
/^- / {

    line = $0

    match(line, /^- ([^ ]+)/)
    word = substr(line, RSTART + 2, RLENGTH - 2)
    word_norm = normalize(word)

    if (!(word_norm in sbl_words)) {
        print "ERROR: Greek not found → " word " (" current_ref ")"
        errors++
    }

    # RMAC required
    if (line !~ /\(V-[A-Z]+(-[A-Z0-9]+)?\)/) {
        print "ERROR: Missing or invalid RMAC → " line
        errors++
    }

    # F/NF required
    if (line !~ /\[(F|NF)\]/) {
        print "ERROR: Missing F/NF → " line
        errors++
    }

    next
}

# -----------------------------
# CONNECTOR LINES (+)
# -----------------------------
/^\+ / {

    line = $0

    match(line, /^\+ ([^ ]+)/)
    word = substr(line, RSTART + 2, RLENGTH - 2)
    word_norm = normalize(word)

    if (!(word_norm in sbl_words)) {
        print "ERROR: Greek not found → " word " (" current_ref ")"
        errors++
    }

    # must have Spanish gloss
    if (line !~ /\(.+\)/) {
        print "ERROR: Missing Spanish gloss → " line
        errors++
    }

    # MUST NOT have RMAC
    if (line ~ /\(V-/) {
        print "ERROR: Connector has RMAC → " line
        errors++
    }

    # MUST NOT have F/NF
    if (line ~ /\[(F|NF)\]/) {
        print "ERROR: Connector has F/NF → " line
        errors++
    }

    next
}

# -----------------------------
# SUMMARY
# -----------------------------
END {
    print "-----------------------------"
    print "Verses checked:", verse_count

    if (errors == 0) {
        print "STATUS: PASS ✅"
    } else {
        print "STATUS: FAIL ❌"
        print "Errors found:", errors
    }
}