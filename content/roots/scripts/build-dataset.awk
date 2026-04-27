BEGIN {
    FS = " "

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
# UTILITIES
# ----------------------------

function normalize_connector(w) {
    gsub(/[.,;]/, "", w)

    if (w ~ /^κα/) return "καί"
    if (w ~ /^δ/) return "δέ"
    if (w ~ /^ἀλλ/) return "ἀλλά"
    if (w ~ /^γ/) return "γάρ"
    if (w == "ὅτι") return "ὅτι"
    if (w == "ἵνα") return "ἵνα"
    if (w == "εἰ") return "εἰ"
    if (w == "ὥστε") return "ὥστε"

    return w
}

function isConnector(w) {
    return w ~ /^(καί|δέ|ἀλλά|γάρ|ὅτι|ἵνα|εἰ|ὥστε)$/
}

function connector_type(g) {
    if (g ~ /^(καί|δέ|ἀλλά)$/) return "CORD"
    return "DEP"
}

function isVerb(m) {
    return m ~ /^[1-3]/   # MorphGNT finite verbs
}

function toRMAC(m,    per,t,v,mo,num) {
    gsub(/[()]/, "", m)

    per = substr(m,1,1)
    t   = substr(m,2,1)
    v   = substr(m,3,1)
    mo  = substr(m,4,1)
    num = substr(m,6,1)

    return "V-" t v mo "-" per num
}

function fallback_connector(g) {
    if (g == "καί") return "y"
    if (g == "δέ") return "pero"
    if (g == "ἀλλά") return "sino"
    if (g == "γάρ") return "porque"
    if (g == "ἵνα") return "para que"
    if (g == "ὅτι") return "que"
    if (g == "εἰ") return "si"
    if (g == "ὥστε") return "de manera que"
    return "?"
}

function find_nearest_spanish_verb(start,    i,w) {

    # search RIGHT
    for (i = start; i <= nbla_len; i++) {
        w = tolower(nbla_words[i])

        if (is_finite_spanish_verb(w))
            return w
    }

    # fallback LEFT
    for (i = start; i >= 1; i--) {
        w = tolower(nbla_words[i])

        if (is_finite_spanish_verb(w))
            return w
    }

    return "??"
}

function is_bad_match(w) {

    w = tolower(w)

    if (w ~ /^(como|alimento|ahora|porque|pero|sino|en|de|la|el|los|las)$/)
        return 1

    return 0
}

# ----------------------------
# VERB MAPPING (Greek → NBLA)
# ----------------------------

function extract_nbla_words(text,    i) {
    split(text, nbla_words, " ")
    nbla_len = length(nbla_words)
}

function is_finite_spanish_verb(w) {

    # normalize
    w = tolower(w)

    # strong finite endings
    if (w ~ /(é|ó|aste|aron|ieron)$/) return 1
    if (w ~ /(ía|ían)$/) return 1
    if (w ~ /(amos|emos)$/) return 1

    # present tense
    if (w ~ /(o|as|a|amos|an)$/ && length(w) > 3) return 1

    # key irregular verbs (explicit)
    if (w ~ /^(es|son|fue|fueron|está|están|puede|pueden|podía|podían|di|dio|dieron)$/)
        return 1

    return 0
}

function map_verbs_to_nbla(    i) {

    extract_spanish_finite_verbs()

    delete final_verbs

    for (i = 1; i <= vcount; i++) {

        if (i <= nbla_vcount)
            final_verbs[i] = nbla_verbs[i]
        else
            final_verbs[i] = "??"
    }
}

function clean_spanish(w) {
    gsub(/[.,;:]/, "", w)
    return tolower(w)
}

function extract_spanish_finite_verbs(    i,w,nextw) {

    nbla_vcount = 0
    delete nbla_verbs
    delete nbla_vpos   # ← ADD THIS

    for (i = 1; i <= nbla_len; i++) {

        w = clean_spanish(nbla_words[i])
        nextw = clean_spanish(nbla_words[i+1])

        # --- COMPOUND ---
        if (w ~ /^(es|son|fue|fueron)$/ &&
            nextw ~ /(ado|ido|ada|ida|ados|idas)$/) {

            nbla_vcount++
            nbla_verbs[nbla_vcount] = w " " nextw
            nbla_vpos[nbla_vcount] = i   # ← ADD THIS

            i++
            continue
        }

        # --- IRREGULAR ---
        if (w ~ /^(pude|puede|pueden|podía|podían|di|dio|dieron)$/) {
            nbla_vcount++
            nbla_verbs[nbla_vcount] = w
            nbla_vpos[nbla_vcount] = i   # ← ADD THIS
            continue
        }

        # --- REGULAR ---
        if (w ~ /(é|ó|aste|aron|ieron)$/ ||
            w ~ /(ía|ían)$/ ||
            w ~ /^(es|son|fue|fueron)$/) {

            nbla_vcount++
            nbla_verbs[nbla_vcount] = w
            nbla_vpos[nbla_vcount] = i   # ← ADD THIS
        }
    }
}

# ----------------------------
# CLAUSE LINKING (TRUE ROOTS)
# ----------------------------

function get_clause_link(g_pos,    i,left_i,right_i,A,B) {

    left_i = -1
    right_i = -1

    for (i = nbla_vcount; i >= 1; i--) {
        if (nbla_vpos[i] < g_pos) {
            left_i = i
            break
        }
    }

    for (i = 1; i <= nbla_vcount; i++) {
        if (nbla_vpos[i] > g_pos) {
            right_i = i
            break
        }
    }

    if (left_i == -1 || right_i == -1) {
        return "⚠ no conecta dos cláusulas"
    }

    A = nbla_verbs[left_i]
    B = nbla_verbs[right_i]

    return "A: \"" A "\" → B: \"" B "\""
}

# ----------------------------
# MAIN PARSE
# ----------------------------

{
    id = $1
    morph = $3
    word = $4

    if (id == "" || morph == "" || word == "") next

    chapter = substr(id,3,2) + 0
    verse = substr(id,5,2) + 0
    ref = chapter ":" verse

    if (ref != current_ref) {
        if (current_ref != "") print_block()

        current_ref = ref
        greek_line = ""

        delete v_word
        delete v_morph
        delete conns
        delete conn_pos

        vcount = 0
        ccount = 0
        gpos = 0
    }

    gpos++
    greek_line = greek_line " " word

    if (isVerb(morph)) {
        vcount++
        v_word[vcount] = word
        v_morph[vcount] = morph
        v_pos[vcount] = gpos
    }

    norm = normalize_connector(word)

    if (isConnector(norm)) {
        ccount++
        conns[ccount] = norm
        conn_pos[ccount] = gpos
    }
}

END {
    if (current_ref != "") print_block()
}

# ----------------------------
# OUTPUT
# ----------------------------

function print_block(    key,i,line,mapped,type,link) {

    key = tolower(book) " " current_ref

    extract_nbla_words(nbla_map[key])
    map_verbs_to_nbla()

    line = ""
    for (i = 1; i <= nbla_len; i++) {
        line = line nbla_words[i] " "
    }
    sub(/ $/, "", line)

    print "### " book " " current_ref
    print ""
    print substr(greek_line,2)
    print ""
    print "[" line "]"
    print ""

    # VERBS
    for (i = 1; i <= vcount; i++) {
        print "- " v_word[i] " (" toRMAC(v_morph[i]) ") ==" final_verbs[i] "== [F]"
    }

    # CONNECTORS
    delete seen_conn

    for (i = 1; i <= ccount; i++) {

        if (!seen_conn[conns[i]]) {

            type = connector_type(conns[i])
            mapped = fallback_connector(conns[i])

            print "- " conns[i] " [" type "] → [" mapped "]"

            link = get_clause_link(conn_pos[i])
            print "  " link

            seen_conn[conns[i]] = 1
        }
    }

    print ""
}