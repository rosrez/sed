# On line 2, copy the pattern space (i.e. line 2) to the hold buffer
# Note that this doesn't interfere with printing the line
# (sed's default behavior).
2 {
    h
    # append another copy of line 2 to the hold buffer, now it will store 2 copies of the line
    H
}
# On the last line, append the hold buffer (i.e. 2 copies of line 2) to the pattern space
# (i.e. the last line). So the net effect will be to print (on the final closing brace)
# the last line followed by two copies of line 2.
$ {
    G
}
