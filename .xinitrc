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

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload top &
  done
else
  polybar --reload top &
fi

