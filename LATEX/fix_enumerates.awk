# Wrap nested enumerate lists inside an item block to prevent LaTeX errors
/\\item/ {
    print;
    getline nextline;

    # If the next line is a begin{enumerate}, wrap it in a group
    if (nextline ~ /\\begin{enumerate}/) {
        print "{"
        print nextline;
        inside_wrapped = 1
    } else {
        print nextline;
        inside_wrapped = 0
    }
    next;
}

/\\end{enumerate}/ {
    print;
    if (inside_wrapped == 1) {
        print "}"
        inside_wrapped = 0
    }
    next;
}
