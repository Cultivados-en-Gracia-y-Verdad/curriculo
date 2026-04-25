BEGIN {
    has_prev = 0
}

function clean_greek(w) {
    gsub(/[⸀⸂⸃]/, "", w)
    return w
}

function print_block(g, s, a) {
    print "- greek: " g
    print "  spanish: " (s == "" ? "\"\"" : s)
    print "  alignment: " a
    print ""
}

function read_block(    l1,l2,l3,p,g,s,a) {
    l1 = $0
    getline l2
    getline l3

    split(l1, p, " "); g = p[3]
    split(l2, p, " "); s = p[2]
    split(l3, p, " "); a = p[2]

    return g SUBSEP s SUBSEP a
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

    block = read_block()
    split(block, p, SUBSEP)

    g = clean_greek(p[1])
    s = p[2]
    a = p[3]

    # ----------------------------
    # 🔴 LEXICAL OVERRIDE (FIXED)
    # ----------------------------
    if (g == "ἡγιασμένοις") {

        # flush previous safely
        if (has_prev) {
            print_block(prev_g, prev_s, prev_a)
            has_prev = 0
        }

        # print authoritative meaning
        print "- greek: " g
        print "  spanish: han sido santificados"
        print "  alignment: expanded"
        print ""

        next
    }

    # ----------------------------
    # DEFAULT FLOW
    # ----------------------------
    if (has_prev) {
        print_block(prev_g, prev_s, prev_a)
    }

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