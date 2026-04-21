BEGIN {
  verse = ""
  fcount = 0
  current_indent = 0
}

# --- Detect verse header ---
/^### / {
  if (verse != "") {
    validate_verse()
  }
  verse = $0
  fcount = 0
  current_indent = 0
}

# --- Count finite verbs ---
/\[F\]/ {
  fcount++
}

# --- RULE 1: No [i] allowed ---
/\[i\]/ {
  print "ERROR: [i] not allowed → " NR ": " $0
}

# --- RULE 2: Finite verbs must have == ---
/\[F\]/ {
  if ($0 !~ /==.*==/) {
    print "ERROR: Finite verb missing == → " NR ": " $0
  }
}

# --- RULE 3: Non-finite verbs must NOT have == ---
/\[NF\]/ {
  if ($0 ~ /==.*==/) {
    print "ERROR: Non-finite verb has == → " NR ": " $0
  }
}

# --- RULE 4: Connector format ---
/^[[:space:]]{3}- / {
  if ($0 !~ /→/) {
    print "ERROR: Connector missing → → " NR ": " $0
  }
  if ($0 !~ /\(.*\)/) {
    print "ERROR: Connector missing () → " NR ": " $0
  }
}

# --- RULE 5: Bracket connector validation ---
/\(\[[^]]+\]\)/ {
  # Must be inside parentheses
  if ($0 !~ /\(\[[^]]+\]\)/) {
    print "ERROR: malformed bracket connector → " NR ": " $0
  }
}

# --- RULE 6: Bracket connector must not break phrase ---
/\[[^]]+\]/ {
  if ($0 ~ /\[[^]]+\].*\[[^]]+\]/) {
    print "ERROR: multiple bracket insertions in one connector → " NR ": " $0
  }
}

# --- RULE 7: Connector must not appear without indentation ---
/^- .*→/ {
  print "ERROR: connector must be indented (3 spaces) → " NR ": " $0
}

# --- RULE 8: Indentation tracking (Paso 4 structure) ---
{
  indent = match($0, /[^ ]/) - 1

  # Only evaluate lines with verbs or connectors
  if ($0 ~ /\[F\]/ || $0 ~ /^[[:space:]]{3}- /) {

    if (indent > current_indent + 4) {
      print "WARNING: indentation jump too large → " NR ": " $0
    }

    current_indent = indent
  }
}

# --- RULE 9: Connector [c] must have 2 finite verbs ---
/\[c\]/ {
  if (fcount < 2) {
    print "ERROR: [c] but fewer than 2 finite verbs → " NR ": " $0
  }
}

# --- RULE 10: Spanish parentheses must exist ---
/→/ {
  if ($0 !~ /\(.*\)/) {
    print "ERROR: connector missing Spanish mapping → " NR ": " $0
  }
}

# --- RULE 11: Prevent empty connector translation ---
/→ \(\)/ {
  print "ERROR: empty connector translation → " NR ": " $0
}

# --- RULE 12: Prevent malformed RMAC ---
/\(V-[A-Z\-]+\)/ {
  # OK
}
(/\(V-[^)]*\)/ == 0 && /\[F\]/) {
  print "ERROR: malformed RMAC or missing → " NR ": " $0
}

# --- End of file ---
END {
  validate_verse()
}

# --- Verse validation ---
function validate_verse() {

  if (fcount == 0) {
    print "WARNING: no finite verbs → " verse
  }

  if (fcount == 1) {
    print "WARNING: only one finite verb (check connectors) → " verse
  }
} 
  # Track previous line
{
  prev_line = line
  line = $0
}

# Detect verse header
/^### / {
  if (prev_line != "" && prev_line !~ /^---$/) {
    print "ERROR: Missing --- before verse → " NR ": " $0
  }
}

# Validate separator format
/^---$/ {
  # OK
}

# Catch malformed separators
/^--+$/ {
  if ($0 != "---") {
    print "ERROR: Invalid separator (must be exactly ---) → " NR ": " $0
  }
}

# Catch inline separators
/^---.+/ {
  print "ERROR: Separator must be on its own line → " NR ": " $0
}
