# build_roots.awk

BEGIN {
    FS=" "
    
    greek_file = "../SBLGTN/MorphGNT/" book "-morphgnt.txt"
    nbla_file  = "../NBLA/" book ".nbla.md"

    # ---- LOAD NBLA ----
    while ((getline line < nbla_file) > 0) {
        if (line ~ /^### /) {
            ref = line
            getline nbla_line
            gsub(/^\[|\]$/, "", nbla_line)
            nbla_map[ref] = nbla_line
        }
    }
    close(nbla_file)
}

# ---- FAILURE FUNCTION ----
function fail(msg) {
    print "ERROR: " msg > "/dev/stderr"
    exit 1
}

# ---- CONNECTOR LIST ----
function isConnector(w) {
    return (w ~ /^(καί|δέ|ἀλλά|ἀλλʼ|γάρ|ἵνα|ὅτι|εἰ)$/)
}

# ---- VERB CHECK ----
function isVerb(m) {
    return (m ~ /^V-/)
}

function isFinite(m) {
    return (m ~ /^V-..[ISM]-/)
}

# ---- PROCESS FILE ----
{
    if ($0 ~ /^[0-9]+ /) {

        ref = $1 " " $2
        sub(/^[0-9]+ /, "", $0)
        greek_line = $0

        header = "### " ref " {#" tolower(book) "-" gensub(/:/,"-","g",ref) "}"

        if (!(header in nbla_map)) {
            fail("NBLA verse missing → " header)
        }

        nbla_line = nbla_map[header]

        print header
        print ""
        print greek_line
        print ""
        print "[" nbla_line "]"
        print ""

        delete verbs
        delete conns

        split(greek_line, words, " ")

        for (i in words) {
            w = words[i]

            # ---- MATCH MORPH FROM FULL FILE ----
            cmd = "grep -w \"" w "\" " greek_file
            cmd | getline morph_line
            close(cmd)

            split(morph_line, parts, " ")
            morph = parts[2]

            if (isVerb(morph)) {

                tag = isFinite(morph) ? "[F]" : "[NF]"

                print "- " w " (" morph ") " tag
            }

            if (isConnector(w)) {
                print "- " w " → ???"
            }
        }

        print ""
    }
}