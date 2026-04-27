function trim(s) {
    sub(/^[[:space:]]+/, "", s)
    sub(/[[:space:]]+$/, "", s)
    return s
}

# ---- BOOK MAP (EDITABLE + CONTROLLED) ----
function book_id(book) {
    if (book == "1Corintios") return "1co"
    if (book == "2Corintios") return "2co"
    if (book == "Romanos") return "rom"
    if (book == "Gálatas") return "gal"
    if (book == "Efesios") return "efe"
    if (book == "Filipenses") return "fil"
    if (book == "Colosenses") return "col"
    if (book == "Tito") return "tit"
    if (book == "1Tesalonicenses") return "1ts"
    if (book == "2Tesalonicenses") return "2ts"

    return "UNK"  # fallback for debugging
}

# Extract reference
function get_ref(line,   match_arr) {
    if (match(line, /^([^[:space:]]+)[[:space:]]+([0-9]+):([0-9]+)/, match_arr)) {
        book = match_arr[1]
        chap = match_arr[2]
        verse = match_arr[3]
        return book " " chap ":" verse
    }
    return ""
}

# Build anchor
function build_anchor(ref,   parts, book, chapverse, chap, verse) {
    split(ref, parts, " ")
    book = parts[1]
    chapverse = parts[2]

    split(chapverse, cv, ":")
    chap = cv[1]
    verse = cv[2]

    return "{#" book_id(book) "-" chap "-" verse "}"
}

# Remove reference from line
function remove_ref(line) {
    sub(/^[^[:space:]]+[[:space:]]+[0-9]+:[0-9]+[[:space:]]*/, "", line)
    return line
}

# FIRST FILE (NBLA)
FNR == NR {
    ref = get_ref($0)
    text = remove_ref($0)

    if (ref != "") {
        nbla[ref] = trim(text)
    }
    next
}

# SECOND FILE (SBLGNT)
{
    ref = get_ref($0)
    text = remove_ref($0)

    if (ref in nbla) {
        anchor = build_anchor(ref)

        print "### " ref " " anchor
        print text
        print "[" nbla[ref] "]"
        print ""
    }
}