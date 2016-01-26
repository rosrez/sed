# Changes the first three words to all caps.
# Compare to the first version of the script.

# Replace the 3rd occurrence of ' ' to #.
s/ /#/3
# Copy the modified string to the hold buffer
h
# Strip # and any trailing characters after it
# This should leave only the first 3 words
s/#.*$//
# convert the pattern space to uppercase (this converts our first 3 words)
y/abcdefghijklmnopqrstuvwxyz/ABCDEFGHIJKLMNOPQRSTUVWXYZ/
# Append the hold buffer to the pattern space
G
# Remove the contents between the newline and the # character.
# This serves to remove the newline produced by the G command above
# and to get rid of the first portion of the string that has been kept
# in the hold buffer prior to G.
# Replaces the removed content with space.
s/\n.*#/ /

# NOTE: the use of # character here is not very robust, the assumption is that # will
# never occur in our text. We could use a non-printable character for the same purpose.
