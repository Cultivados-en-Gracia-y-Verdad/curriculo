BEGIN {
    FS=" "

    if (book == "") {
        print "ERROR: book not provided" > "/dev/stderr"
        exit 1
    }

    nbla_file = "../NBLA/" book ".nbla.md"

    while ((getline line < nbla_file) > 0) {

        split(line, parts, " ")
        if (!(3 in parts)) continue

        key = tolower(parts[1]) " " parts[2]

        verse = ""
        for (i = 3; i in parts; i++) verse = verse parts[i] " "
        sub(/ $/, "", verse)

        nbla_map[key] = verse
    }
    close(nbla_file)
}

# ----------------------------
# CLEAN NBLA
# ----------------------------
function clean_text(t,    s) {
    s = t
    gsub(/[\[\],.;:¿?¡!]/, "", s)
    gsub(/[[:space:]]+/, " ", s)
    return tolower(s)
}

function tokenize_nbla(text,    i) {
    clean = clean_text(text)
    split(clean, nbla_words, " ")
    nbla_len = length(nbla_words)
}

# ----------------------------
# MAIN PARSER
# ----------------------------
{
    id = $1
    word = $5

    if (id == "" || word == "") next

    chapter = substr(id,3,2) + 0
    verse = substr(id,5,2) + 0
    ref = chapter ":" verse

    if (ref != current_ref) {
        if (current_ref != "") print_block()

        current_ref = ref
        delete g_words
        gcount = 0
    }

    gcount++
    g_words[gcount] = word
}

END {
    if (current_ref != "") print_block()
}

# ----------------------------
# HELPERS
# ----------------------------
function clean_greek(w) {
    gsub(/[⸂⸃]/, "", w)
    return w
}

function is_noise(w) {
    return (w ~ /^(a|ser|que)$/)
}

# ----------------------------
# ALIGNMENT ENGINE
# ----------------------------
function print_block(    key,i,g,spanish,align,si,w1,w2) {

    key = tolower(book) " " current_ref
    tokenize_nbla(nbla_map[key])

    print "### " book " " current_ref
    print ""

    si = 1

    for (i = 1; i <= gcount; i++) {

        g = clean_greek(g_words[i])
        spanish = ""
        align = "missing"

        # ----------------------------
        # 🔴 MERGE: Χριστοῦ + Ἰησοῦ
        # ----------------------------
        if (i < gcount &&
            g == "Χριστοῦ" &&
            clean_greek(g_words[i+1]) == "Ἰησοῦ") {

            if (nbla_words[si] == "jesucristo") {

                print "- greek: " g
                print "  spanish: jesucristo"
                print "  alignment: merged-forward"
                print ""

                print "- greek: " clean_greek(g_words[i+1])
                print "  spanish: \"\""
                print "  alignment: merged-backward"
                print ""

                si++
                i++   # skip next Greek
                continue
            }
        }

        # ----------------------------
        # 🟢 TRUE EXPANSIONS ONLY
        # ----------------------------
        w1 = nbla_words[si]
        w2 = (si+1 <= nbla_len) ? nbla_words[si+1] : ""
        w3 = (si+2 <= nbla_len) ? nbla_words[si+2] : ""

        # θελήματος → la voluntad
        if (g == "θελήματος" && w1 == "la" && w2 == "voluntad") {
            spanish = "la voluntad"
            align = "expanded"
            si += 2
        }

        # ἡγιασμένοις → han sido santificados
        else if (g == "ἡγιασμένοις" &&
                 w1 == "han" && w2 == "sido" && w3 == "santificados") {
            spanish = "han sido santificados"
            align = "expanded"
            si += 3
        }

        # ----------------------------
        # 🟡 DIRECT MATCH ONLY (STRICT)
        # ----------------------------
        else if (si <= nbla_len && !is_noise(nbla_words[si])) {
            spanish = nbla_words[si]
            align = "direct"
            si++
        }

        # ----------------------------
        # 🔵 OTHERWISE: DO NOTHING
        # ----------------------------
        else {
            spanish = ""
            align = "missing"

            # advance pointer to avoid deadlock
            if (si <= nbla_len) {
            si++
            }
        }

        # ----------------------------
        # OUTPUT
        # ----------------------------
        print "- greek: " g

        if (spanish == "")
            print "  spanish: \"\""
        else
            print "  spanish: " spanish

        print "  alignment: " align
        print ""
    }
}