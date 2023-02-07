#!/bin/bash

source "$HOME/.config/sketchybar/colors.sh"

MULLVAD=$(pgrep mullvad)

DRAWING=off
COLOR=$WHITE
ICON=􀙦

if [[ $MULLVAD != "" ]]; then
  CONNECTED=$(mullvad status | head -n1 | cut -d " " -f1 | tr '[:upper:]' '[:lower:]')

  DRAWING=on
  COLOR=$RED
  ICON=􀞞

  if [[ $CONNECTED == "connected" ]]; then
    COLOR=$GREEN
    ICON=􀞚
  fi
fi

sketchybar --set $NAME drawing=$DRAWING icon=$ICON icon.color=$COLOR