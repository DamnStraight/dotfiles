#!/bin/bash

# Display VPN connection status (Mullvad only)

vpn=(
  icon=􀙦
  script="$PLUGIN_DIR/vpn.sh"
  update_freq=15
  icon.color=$WHITE
  icon.font="$FONT:Regular:14.0"
  label.font="$FONT:Semibold:14.0"
)

sketchybar    --add item vpn right  \
              --set vpn "${vpn[@]}"