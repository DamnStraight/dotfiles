#!/bin/bash

update() {
  CAFFEINATED=$(pgrep caffeinate)

  if [[ $CAFFEINATED != "" ]]; then
    sketchybar -m --set caffeinate icon=􀸙 label='' 
  else
    sketchybar -m --set caffeinate icon=􀸘 label=􀣴
  fi
}

mouse_clicked() {
  CAFFEINATED=$(pgrep caffeinate)

  if [ "$BUTTON" = "left" ]; then
    if [[ $CAFFEINATED != "" ]]; then
        /usr/bin/killall caffeinate
        sketchybar -m --set caffeinate icon=􀸘 label=􀣴
    else
        /usr/bin/caffeinate -dmi & disown
        sketchybar -m --set caffeinate icon=􀸙 label=''
    fi
  fi
}

case "$SENDER" in
  "mouse.clicked") mouse_clicked
  ;;
  *) update
  ;;
esac
