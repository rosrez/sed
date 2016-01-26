s/the/THE/g
# jumps to the 'next' label, i.e. skips over the next command
b next
# this never gets executed
s/up/UP/
: next
s/down/DOWN/g
# branches to the end of the file, i.e. skips over subsequent commands
b
# this, again, never gets executed
s/marched/MARCHEd/g
