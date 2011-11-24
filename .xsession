#!/bin/bash

WM=awesome

if [ "$WM" = "awesome" ]; then
    exec awesome
    exec wicd-gtk
elif [ "$WM" = "dwm" ]; then
    exec ~/dwm/launcher.sh
fi
