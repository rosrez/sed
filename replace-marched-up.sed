# Grab the next line
N
# replace (possibly a multiline pattern match) with marched...up.
s/marched.*up/marched...up/
# print the first line of the pattern space
P
# delete the first line of the pattern space:
D
