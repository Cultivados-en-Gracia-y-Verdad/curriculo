BEGIN {
    drop["han"]
    drop["sido"]
    drop["santificados"]

    has_prev = 0
}

function print_block(g, s, a) {

    # 🔴 NEVER TOUCH expanded
    if (a == "expanded") {
        print "- greek: " g
        print "  spanish: " s
        print "  alignment: " a
        print ""
        return
    }

    # 🔴 DROP duplicates
    if (s in drop) {
        s = ""
        a = "absorbed"
    }

    print "- greek: " g
    print "  spanish: " (s == "" ? "\"\"" : s)
    print "  alignment: " a
    print ""
}

/^###/ {
    if (has_prev) {
        print_block(prev_g, prev_s, prev_a)
        has_prev = 0
    }
    print
    print ""
    next
}

/^- greek:/ {

    g = $3

    getline
    s = $2

    getline
    a = $2

    # ----------------------------
    # 🔴 HANDLE PREVIOUS FIRST
    # ----------------------------
    if (has_prev) {

        # 🟢 PHRASE MERGES FIRST (before any drop)
        if (prev_a != "expanded" && a != "expanded") {

            # la + voluntad
            if (prev_s == "la" && s == "voluntad") {
                print_block(prev_g, "la voluntad", "expanded")
                has_prev = 0
                next
            }

            # de + dios
            if (prev_s == "de" && s == "dios") {
                print_block(prev_g, "de dios", "expanded")
                has_prev = 0
                next
            }
        }

        # default: print previous
        print_block(prev_g, prev_s, prev_a)
    }

    # store current
    prev_g = g
    prev_s = s
    prev_a = a
    has_prev = 1

    next
}

END {
    if (has_prev) {
        print_block(prev_g, prev_s, prev_a)
    }
}