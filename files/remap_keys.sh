#!/bin/sh

# to find keycode number:
# xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'

# remap keys : for set up default keyboard, just run $> setxkbmap 
/usr/bin/xmodmap -e 'keycode 66 = Escape'
/usr/bin/xmodmap -e 'keycode 9 = Caps_Lock'

# default : 47 = é | 48 = à
/usr/bin/xmodmap -e 'keycode 47 = semicolon comma semicolon comma eacute'
/usr/bin/xmodmap -e 'keycode 48 = colon period colon period agrave'

# default 59 = ,; | 60 = .:
/usr/bin/xmodmap -e 'keycode 59 = braceleft bar'
/usr/bin/xmodmap -e 'keycode 60 = braceright backslash'

# default 34 = èü[ | 35 = ¨!]
/usr/bin/xmodmap -e 'keycode 34 = bracketleft dollar bracketleft dollar egrave'
/usr/bin/xmodmap -e 'keycode 35 = bracketright exclam bracketright exclam'

# default 21 = ^`~
/usr/bin/xmodmap -e 'keycode 21 = grave asciitilde grave asciitilde asciicircum'

/usr/bin/xmodmap -e 'clear lock'