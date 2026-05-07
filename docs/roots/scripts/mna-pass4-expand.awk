BEGIN {
    has_prev = 0
    has_prev2 = 0
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
    if (has_prev2) print_block(prev2_g, prev2_s, prev2_a)
    if (has_prev)  print_block(prev_g, prev_s, prev_a)

    has_prev = has_prev2 = 0

    print
    print ""
    next
}

/^- greek:/ {

    block = read_block()
    split(block, p, SUBSEP)

    g = p[1]
    s = p[2]
    a = p[3]

    # ----------------------------
    # HANDLE 3-WORD EXPANSION
    # ἡγιασμένοις → han sido santificados
    # ----------------------------
    if (has_prev2) {

        if (prev2_g == "ἡγιασμένοις" &&
            prev_s == "sido" &&
            s == "santificados") {

            print_block("ἡγιασμένοις", "han sido santificados", "expanded")

            print_block(prev_g, "", "absorbed")
            print_block(g, "", "absorbed")

            has_prev = has_prev2 = 0
            next
        }

        # shift forward safely
        print_block(prev2_g, prev2_s, prev2_a)
    }

    # ----------------------------
    # HANDLE 2-WORD EXPANSION
    # θελήματος → la voluntad
    # ----------------------------
    if (has_prev) {

        if (prev_g == "θελήματος" &&
            prev_s == "la" &&
            s == "voluntad") {

            print_block("θελήματος", "la voluntad", "expanded")
            print_block(g, "", "absorbed")

            has_prev = 0
            next
        }

        prev2_g = prev_g
        prev2_s = prev_s
        prev2_a = prev_a
        has_prev2 = 1
    }

    prev_g = g
    prev_s = s
    prev_a = a
    has_prev = 1

    next
}

END {
    if (has_prev2) print_block(prev2_g, prev2_s, prev2_a)
    if (has_prev)  print_block(prev_g, prev_s, prev_a)
}