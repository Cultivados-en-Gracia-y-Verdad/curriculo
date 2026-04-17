#!/usr/bin/awk -f

BEGIN {
    FS=" "
    errors = 0
    verse_count = 0
}

/^###/ {
    current_ref = $3
    gsub(/[{}#]/, "", current_ref)
    verse_count++
    next
}

# --- NORMALIZATION FUNCTION ---
function normalize(s) {

    # remove editorial symbols
    gsub(/[⸀⸂⸃⸄⸅⸆⸇⸈⸉]/, "", s)

    # remove punctuation
    gsub(/[.,;·:!?]/, "", s)

    # remove extra spaces
    gsub(/^ +| +$/, "", s)

    return s
}

# --- BUILD GREEK WORD SET FROM SBLGNT ---
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

# --- PROCESS VERB FILE ---
/^- / {

    # extract Greek word (first token after "- ")
    match($0, /^- ([^ ]+)/)
    word = substr($0, RSTART + 2, RLENGTH - 2)

    word_norm = normalize(word)

    if (!(word_norm in sbl_words)) {
        print "ERROR: Greek not found → " word " (" current_ref ")"
        errors++
    }

    # check RMAC exists
if ($0 !~ /\(V-[A-Z]+(-[A-Z0-9]+)?\)/) {
    print "ERROR: Missing or invalid RMAC → " $0
    errors++
}

    # check [F] or [NF]
    if ($0 !~ /\[(F|NF)\]/) {
        print "ERROR: Missing F/NF → " $0
        errors++
    }
}

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