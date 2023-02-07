#!/bin/bash

# Toggle for caffeinate (prevent sleep)

caffeinate=(
    icon=􀸘
    script="$PLUGIN_DIR/caffeinate.sh"
    update_freq=15
    icon.color=$WHITE
    icon.font="$FONT:Regular:14.0"
    label.font="$FONT:Semibold:14.0"
)

sketchybar    --add item caffeinate right         \
              --set caffeinate "${caffeinate[@]}"  \
              --subscribe caffeinate mouse.clicked