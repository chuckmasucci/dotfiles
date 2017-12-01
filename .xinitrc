#!/bin/bash

UNAME=$(uname -n)
XRESOURCES_HOME="${HOME}/.Xresources-home"
XRESOURCES_WORK="${HOME}/.Xresources-work"

# Work machine
if [ "$UNAME" = "chuck-desktop" ]
then
    echo "Work"
    xrdb -merge $XRESOURCES_WORK
# Home machine
elif [ "$UNAME" = "jedeh" ]
then
    echo "Home"
    xrdb -merge $XRESOURCES_HOME
fi

xset +fp /home/chuck/.fonts
xset fp rehash
