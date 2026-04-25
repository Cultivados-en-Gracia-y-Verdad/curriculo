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
    word = $4

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
# ALIGNMENT ENGINE
# ----------------------------
function print_block(    key,i,j,spanish,align) {

    key = tolower(book) " " current_ref
    tokenize_nbla(nbla_map[key])

    print "### " book " " current_ref
    print ""

    si = 1

    for (i = 1; i <= gcount; i++) {

        g = g_words[i]

        # default
        spanish = ""
        align = "missing"

        if (si <= nbla_len) {

            spanish = nbla_words[si]

            # lookahead merge detection
            if (i < gcount && si < nbla_len) {

                next_spanish = nbla_words[si+1]

                # detect expansion (multi-word unit)
                if (next_spanish != "" && g ~ /[α-ω]/) {
                    if (length(next_spanish) > 3 && next_spanish ~ /(ado|ido|ando|iendo)$/) {
                        spanish = spanish " " next_spanish
                        align = "expanded"
                        si += 2
                    } else {
                        align = "direct"
                        si++
                    }
                } else {
                    align = "direct"
                    si++
                }

            } else {
                align = "direct"
                si++
            }

        }

        # merge correction (very basic pass)
        if (spanish ~ /jesucristo/) {
            if (g ~ /χριστοῦ/) {
                align = "merged-forward"
            } else if (g ~ /ἰησοῦ/) {
                spanish = ""
                align = "merged-backward"
            }
        }

        print "- greek: " g
        print "  spanish: " (spanish == "" ? "\"\"" : spanish)
        print "  alignment: " align
        print ""
    }
}