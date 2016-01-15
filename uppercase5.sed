# change 'up' to 'UP' and 'down' to 'DOWN' only on lines 3,6 that contain the word 'when'
# Illustrates nested blocks 

3,6 {
    /when/ {
        s/up/UP/g          
        s/down/DOWN/g
    }
}
