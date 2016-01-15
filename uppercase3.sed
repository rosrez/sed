# A more elegant way to change 'up' to 'UP' and 'down' to 'DOWN' only on lines that contain the word 'when'
# Compare this script to uppercase2.sed where each command is preceded by its own address range.
# Note that sed ignores whitespace at the beginning of a command line. You can see that the block in curly braces is indented.
/when/ {
    s/up/UP/g          
    s/down/DOWN/g
}
