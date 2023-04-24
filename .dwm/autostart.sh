#!/bin/bash

# xrandr so that my screens are set up properly
xrandr --output HDMI-0 --mode 1920x1080 --rate 120 --right-of DP-2 --output DP-2 --mode 2560x1440 --rate 144 &

# wacom setup
wacomStarter &

# slstatus for CPU%, RAM% and TIME
slstatus &

# picom for transparency and wallpapers
picom & 

# xwallpaper to set wallpaper image found in this folder
# (only works with png's for some reason)
xwallpaper --zoom ~/.dwm/wallpaper.png

# unclutter to make my mouse disappear after idling for 3 seconds.
# makes for better screenshots and cleaner reading/watching
unclutter -idle 3