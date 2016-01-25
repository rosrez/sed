# On lines containing 'marched', read the next line and append it to the pattern space
# (now there are two lines in the pattern space) and replace the newline with ' - '.
# This replaces exactly one newline - the one that separates the line with 'marched'
# from the next one. The next newline (at the end of the second line) 
# is not considered part of the pattern space and remains intact.

/marched/ {
    N
    s/\n/ - /
}
