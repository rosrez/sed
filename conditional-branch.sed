# replaces 'again' with itself, but lets us know if the pattern matched
s/again/again/
# if there has been a substitution (i.e. the line contains 'again'), branch to label
t label
# this gets executed only if we don't have a match, i.e. there's no word 'again' in the line.
s/the/THE/g
: label
# Executed unconditionally
s/up/UP/g
