# split-morphgnt.awk
# Takes full sblgnt.txt and creates per-book MorphGNT files
# Output format: ID WORD LEMMA MORPH

BEGIN {
    FS=" "
}

{
    id    = $1
    word  = $2
    lemma = $3
    morph = $4

    if (id == "" || word == "" || lemma == "" || morph == "") next

    # Book code = first 2 digits of ID
    book = substr(id,1,2)

    # Map only what you need (expand later if desired)
    if (book == "46") file = "1corintios-morphgnt.txt"
    else if (book == "51") file = "colosenses-morphgnt.txt"
    else next

    # Write correct format
    print id " " word " " lemma " " morph >> ("../SBLGNT/MorphGNT/" file)
}