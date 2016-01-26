# On line 2, copy the pattern space (i.e. line 2) to the hold buffer
# Note that this doesn't interfere with printing the line
# (sed's default behavior).
2 {
    h
}
# On the last line, print the pattern space (i.e. the last line)
# and get the hold buffer. On the final closing brace, 
# This will print the contents of the pattern space (sed's default behaviour).
$ {
    p
    g
}

# Essentially, we just repeat line 2 after printing the whole text.

