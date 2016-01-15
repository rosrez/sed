# Negation combined with a block in curly braces:
# change 'up' to 'UP' and 'down' to 'DOWN' only on lines that DO NOT contain the word 'when'
# Compare this script to uppercase3.sed 
/when/ ! {
    s/up/UP/g          
    s/down/DOWN/g
}
