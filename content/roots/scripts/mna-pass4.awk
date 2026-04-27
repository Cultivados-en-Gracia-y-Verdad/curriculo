# ----------------------------
# BUILD STRUCTURE (CONTROLLED)
# ----------------------------
function build_structure(arr, len,    i,word,clean,morph,prev_morph,level,next_word,next_clean,next_morph) {

    prev_morph = ""

    for (i = 1; i <= len; i++) {

        word  = arr[i]
        clean = norm(word)
        morph = morph_map[clean]

      # ----------------------------
# ARTICLE BINDING (FORCED FIRST)
# ----------------------------
if (morph ~ /^RA/ && i+1 <= len) {

    next_word  = arr[i+1]
    next_clean = norm(next_word)
    next_morph = morph_map[next_clean]

    # bind if noun, adjective, or participle
    if (next_morph ~ /^N/ || next_morph ~ /^A/ || next_morph ~ /^V.*P/) {

        printf "%*s%s %s\n", 2, "", word, next_word

        i++  # skip next token
        prev_morph = next_morph
        continue
    }
}

        # ----------------------------
        # DEFAULT BASE
        # ----------------------------
        level = 0

        # GENITIVE chain
        if (morph ~ /G/ && prev_morph ~ /^N/) {
            level = 1
        }
        else if (morph ~ /G/ && prev_morph ~ /G/) {
            level = 2
        }
        else if (prev_morph ~ /G/) {
            level = 0
        }

        # PREPOSITION
        else if (morph ~ /^P/) {
            level = 1
        }

        # MODIFIERS
        else if (morph ~ /^A/ || morph ~ /^V--.*P/) {
            level = 1
        }

        # CONJUNCTION resets
        else if (morph ~ /^C/) {
            level = 0
        }

        printf "%*s%s\n", level*2, "", word

        prev_morph = morph
    }
}