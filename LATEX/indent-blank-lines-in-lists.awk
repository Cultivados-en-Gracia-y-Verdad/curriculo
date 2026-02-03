#!/usr/bin/awk -f

function count_indent(line,   i, c) {
    c = 0
    for (i = 1; i <= length(line); i++) {
        if (substr(line, i, 1) == " ") c++
        else break
    }
    return int(c / 4)
}

BEGIN {
    current_level = 0
    pending_item = 0
}

function indent_string(n,   out, i) {
    out = ""
    for (i = 0; i < n * 4; i++) out = out " "
    return out
}

{
    if ($0 ~ /^[ ]*[0-9]+\.[ ]+/) {
        indent = count_indent($0)

        # Adjust levels (open or close)
        while (current_level > indent) {
            print indent_string(current_level - 1) "\\end{enumerate}"
            current_level--
        }
        while (current_level < indent) {
            print indent_string(current_level) "\\begin{enumerate}"
            current_level++
        }

        sub(/^[ ]*[0-9]+\.[ ]+/, indent_string(indent) "\\item ")
        print
        pending_item = 1
        next
    }

    # Preserve indented blank lines
    if ($0 ~ /^[[:space:]]*$/) {
        print indent_string(current_level)
        next
    }

    # If it's not a list, and we were in a list, close the list cleanly
    if (current_level > 0 && !pending_item) {
        while (current_level > 0) {
            print indent_string(current_level - 1) "\\end{enumerate}"
            current_level--
        }
    }

    print
    pending_item = 0
}

END {
    while (current_level > 0) {
        print indent_string(current_level - 1) "\\end{enumerate}"
        current_level--
    }
}
