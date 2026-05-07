# mna-pass2.awk — STABLE ALIGNER (NO DRIFT, NO HACKS)

BEGIN {
    FS=" "
    si = 1
    skip_next = 0
    nbla_file = "../NBLA/" book ".nbla.md"
}

# ----------------------------
# BUILD NBLA MAP
# ----------------------------
function build_nbla(   line, parts, key, text, i) {

    while ((getline line < nbla_file) > 0) {

        clean = line
        gsub(/[.,;«»¿?¡!]/, "", clean)

        split(clean, parts, " ")

        key = parts[1]

        text = ""
        for (i = 2; i <= length(parts); i++) {
            text = text (i>2 ? " " : "") parts[i]
        }

        nbla_map[key] = tolower(text)
    }

    close(nbla_file)
}

# ----------------------------
# LOAD WORD STREAM
# ----------------------------
function load_nbla(line,    i,n,tmp) {

    delete nbla
    nbla_len = 0

    n = split(line, tmp, " ")

    for (i = 1; i <= n; i++) {
        if (tmp[i] != "") {
            nbla[++nbla_len] = tmp[i]
        }
    }

    si = 1
}

# ----------------------------
# OUTPUT
# ----------------------------
function out(g, m, word, type) {
    printf "- greek: %s\n", g
    printf "  morph: %s\n", m
    printf "  spanish: [%s]\n", word
    printf "  alignment: %s\n\n", type
}

# ----------------------------
# INIT
# ----------------------------
BEGIN {
    build_nbla()
}

# ----------------------------
# DETECT VERSE
# ----------------------------
/^###/ {

    print
    print ""

    if (match($0, /[0-9]+:[0-9]+/)) {
        verse_key = substr($0, RSTART, RLENGTH)
    } else {
        print "# ERROR: no verse key"
        next
    }

    nbla_line = nbla_map[verse_key]

    if (nbla_line == "") {
        print "# ERROR: missing NBLA for [" verse_key "]"
        next
    }

    load_nbla(nbla_line)
    next
}

# ----------------------------
# PROCESS TOKENS
# ----------------------------
/^[^ ]+ \(.*\)$/ {

    greek = $1
    morph = substr($0, index($0, "("))

    # 1. absorb second half of compound
    if (skip_next) {
        out(greek, morph, "", "absorbed")
        skip_next = 0
        next
    }

    # 2. articles (do not consume Spanish)
    if (morph ~ /^\(RA/) {
        out(greek, morph, "", "article")
        next
    }

    if (si > nbla_len) {
        out(greek, morph, "", "unresolved")
        next
    }

    word = nbla[si]

    # ----------------------------
    # CLEAN SKIP STRATEGY (KEY FIX)
    # ----------------------------
    while (word ~ /^(a|de|la|el|los|las|ser|que|está|han|sido|en)$/) {
    si++
    if (si > nbla_len) break
    word = nbla[si]
}

    if (si > nbla_len) {
        out(greek, morph, "", "unresolved")
        next
    }

    # ----------------------------
    # COMPOUND
    # ----------------------------
    if (word == "jesucristo" && greek == "Χριστοῦ") {
        out(greek, morph, word, "compound")
        si++
        skip_next = 1
        next
    }

    # ----------------------------
    # CONTROLLED EXPANSION
    # ----------------------------
    phrase = word

    if (word ~ /^(nuestro|nuestra|nuestros|nuestras|mi|mis|su|sus)$/) {
        if (si+1 <= nbla_len) {
            next_word = nbla[si+1]

            if (next_word !~ /^(a|de|la|el|los|las|y|ser|que)$/) {
                phrase = word " " next_word
                si++
            }
        }
    }

    si++
    out(greek, morph, phrase, "assigned")
}