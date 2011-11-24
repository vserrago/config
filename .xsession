#!/bin/bash

#Set WM based on host
if [ "$HOSTNAME" = "oldreliable" ]; then
    WM=awesome
    #WM=dwm
else
    WM=dwm
fi

#Launch selected WM
if [ "$WM" = "awesome" ]; then
    exec awesome
    exec wicd-gtk
elif [ "$WM" = "dwm" ]; then
    exec ~/dwm/launcher.sh
fi
