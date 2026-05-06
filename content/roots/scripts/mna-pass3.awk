# mna-pass3.awk — BLOCK-BASED UNIT GROUPER (CORRECT)

BEGIN {
    FS=":"

    greek_prev = ""
    morph_prev = ""
    spanish_prev = ""

    greek_unit = ""
    spanish_unit = ""
}

# ----------------------------
# FLUSH UNIT
# ----------------------------
function flush_unit() {
    if (greek_unit != "") {
        print "UNIT:"
        print greek_unit
        print "→ " spanish_unit
        print ""

        greek_unit = ""
        spanish_unit = ""
    }
}

# ----------------------------
# NEW VERSE
# ----------------------------
/^###/ {
    flush_unit()
    print
    print ""
    next
}

# ----------------------------
# NEW ENTRY STARTS → PROCESS PREVIOUS
# ----------------------------
/^- greek:/ {

    greek = $2
    gsub(/^ +| +$/, "", greek)

    # process previous entry
    if (greek_prev != "") {

        if (greek_unit == "") {
            greek_unit = greek_prev
            spanish_unit = spanish_prev
        } else {
            greek_unit = greek_unit " " greek_prev

            if (spanish_prev != "")
                spanish_unit = spanish_unit " " spanish_prev
        }

        # break on verb
        if (morph_prev ~ /^V-.*[123][SP]/) {
            flush_unit()
        }
    }

    greek_prev = greek
    next
}

# ----------------------------
# MORPH
# ----------------------------
/^  morph:/ {
    morph_prev = $2
    gsub(/^ +| +$/, "", morph_prev)
    next
}

# ----------------------------
# SPANISH
# ----------------------------
/^  spanish:/ {
    spanish_prev = $2
    gsub(/[\[\]]/, "", spanish_prev)
    gsub(/^ +| +$/, "", spanish_prev)
    next
}

# ----------------------------
# END OF FILE
# ----------------------------
END {
    # process last entry
    if (greek_prev != "") {

        if (greek_unit == "") {
            greek_unit = greek_prev
            spanish_unit = spanish_prev
        } else {
            greek_unit = greek_unit " " greek_prev

            if (spanish_prev != "")
                spanish_unit = spanish_unit " " spanish_prev
        }
    }

    flush_unit()
}