#!/bin/bash

#Set WM based on host
if [ "$HOSTNAME" = "oldreliable" ]; then
    WM=awesome
    #WM=dwm

elif [ "$HOSTNAME" = "centralcommand" ]; then
    WM=awesome
    #WM=dwm

    #Turn off bell
    xset b off

    #Turn off the screen sleep function
    xset -dpms
    xset s off

    #Enable xbindkeys
    #exec xbindkey &

elif [ "$HOSTNAME" = "europa" -o "$HOSTNAME" = "elara" -o "$HOSTNAME" = "metis" -o "$HOSTNAME" = "thebe" ]; then
    WM=dwm

    #Turn off bell
    xset b off

#Default host
else
    WM=dwm
fi

#Launch selected WM
if [ "$WM" = "awesome" ]; then
    exec wicd-gtk &
    exec awesome 
elif [ "$WM" = "dwm" ]; then
    #Set tray clock
    while true; do
        xsetroot -name "$(date +"%a %b %d, %I:%M %p")"
    sleep 30
    done &

    #exec ~/dwm/launcher.sh
    exec ~/git/dwm/dwm
fi
