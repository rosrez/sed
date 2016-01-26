:top
# copy the current line to the hold buffer
h
# strip all words from the current line except the first 3
# also strip leading space
s/^ *\([A-Za-z]\+\) \+\([A-Za-z]\+\) \+\([A-Za-z]\+\).*/\1 \2 \3/
t upper
# no match: print the line as it is and continue to top
p
b top
# we have a match and have stripped the trailing words
:upper
# convert the pattern space to uppercase (this converts our first 3 words)
y/abcdefghijklmnopqrstuvwxyz/ABCDEFGHIJKLMNOPQRSTUVWXYZ/
# flip the converted part of the line to the hold buffer and restore the original line
x
# now strip the first 3 words from the original line
s/^ *[A-Za-z]\+ \+[A-Za-z]\+ \+[A-Za-z]\+\(.*\)/\1/
# flip the parts of the original string again
# now the uppercase part of the string is in the pattern space
# and the rest is in the hold buffer
x
# append the hold buffer to the pattern space (glues our string back)
G
# replace the newline that separates the parts of the string
s/\n//
