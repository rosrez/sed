# The script replaces pairs of underscores with HTML tags for italics (<i> ... </i>)
# Note that because we use the hold buffer to store a flag, 
# our logic spans an arbitrary number of lines.
: top
/_/ {
    # Flip the current pattern space into the hold buffer temporarily
    x
    # The contents of the hold buffer are treated as a variable here,
    # since we just track the appearance of an underscores by setting
    # the hold buffer to 'ON' or 'OFF'.
    
    # If the hold buffer contents don't include ON
    /ON/ !{
        # replace the entire hold buffer contents with 'ON':
        # sets the 'ON' flag
        s/.*/ON/
        # flip the hold buffer contents back to the hold buffer
        x
        # replace _ with the opening <i> tag
        s;_;<i>;
    }
    # If the hold buffer contents don't include 'ON'
    # (i.e. we have remembered an 'opening' underscore/<i>)
    /ON/ {
        # replace the entire hold buffer to 'OFF':
        # resets the 'ON' flag
        s/.*/OFF/
        # flip the hold buffer contents back to the hold buffer
        x
        # replace _ with the closing </i> tag
        s;_;</i>;
    }
    b top
}
