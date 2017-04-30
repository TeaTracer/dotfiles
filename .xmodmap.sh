#! /bin/sh
# Numpad key mapping (french letters)
# Check keycodes with "xev" command

xmodmap -e "keycode 87 = U00E8" # '1' -> 'è'
xmodmap -e "keycode 88 = U00EA" # '2' -> 'ê'
xmodmap -e "keycode 89 = U00E9" # '3' -> 'é'
xmodmap -e "keycode 83 = U00E0" # '4' -> 'à'
xmodmap -e "keycode 84 = U00E2" # '5' -> 'â'
xmodmap -e "keycode 85 = U00E1" # '6' -> 'á'
xmodmap -e "keycode 79 = U00F2" # '7' -> 'ò'
xmodmap -e "keycode 80 = U00F4" # '8' -> 'ô'
xmodmap -e "keycode 81 = U00F3" # '9' -> 'ó'
