#!/usr/bin/awk -f

BEGIN {
    if (book == "") {
        print "ERROR: provide book name → book=tito"
        exit 1
    }

    file = "SBLGNT/text/" book ".txt"
    verse_count = 0

    while ((getline line < file) > 0) {

        # match lines like: Tito 1:5 ...
        if (line ~ /^[A-Za-z]+ [0-9]+:[0-9]+/) {

            split(line, parts, " ")

            book_name = parts[1]

            split(parts[2], ref, ":")
            chapter = ref[1]
            verse = ref[2]

            # extract verse text
            prefix = book_name " " parts[2] " "
            text = substr(line, length(prefix) + 1)

            verse_count++

            if (verse_count > 1) {
                print ""
            }

            printf("### %s %s:%s {#%s-%s-%s}\n",
                book_name, chapter, verse,
                tolower(book_name), chapter, verse)

            print text
            print ""
        }
    }

    close(file)
}