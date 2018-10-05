#!/bin/bash

#xrandr --output HDMI-1 --mode 1920x1080 --right-of LVDS-1 --output  LVDS-1 --auto --off
setxkbmap -layout 'us,ru' -option 'grp:alt_shift_toggle'
setxkbmap -option ctrl:nocaps
xmodmap -e "keycode 66 = Up"
xset b off
feh --bg-scale /home/light/.feh/wallpaper.png
unclutter -idle 5 &
