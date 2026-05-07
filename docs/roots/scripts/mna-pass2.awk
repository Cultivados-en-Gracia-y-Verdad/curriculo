BEGIN {
    has_prev = 0
}

function print_block(g, s, a) {
    print "- greek: " g
    print "  spanish: " (s == "" ? "\"\"" : s)
    print "  alignment: " a
    print ""
}

# pass headers unchanged
/^###/ {
    if (has_prev) {
        print_block(prev_g, prev_s, prev_a)
        has_prev = 0
    }
    print
    print ""
    next
}

# read a full block (3 lines)
function read_block(g, s, a,    l1,l2,l3,p) {

    l1 = $0
    getline l2
    getline l3

    split(l1, p, " ")
    g = p[3]

    split(l2, p, " ")
    s = p[2]

    split(l3, p, " ")
    a = p[2]

    return g SUBSEP s SUBSEP a
}

# process blocks
/^- greek:/ {

    block = read_block(g, s, a)

    split(block, parts, SUBSEP)
    g = parts[1]
    s = parts[2]
    a = parts[3]

    if (has_prev) {

        # 🔴 MERGE RULE
        if (prev_g == "Χριστοῦ" &&
            g == "Ἰησοῦ" &&
            s == "jesucristo") {

            print_block("Χριστοῦ", "jesucristo", "merged-forward")
            print_block("Ἰησοῦ", "", "merged-backward")

            has_prev = 0
            next
        }

        # no merge → print previous
        print_block(prev_g, prev_s, prev_a)
    }

    # shift current → previous
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