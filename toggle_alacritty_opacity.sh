#!/bin/bash

CONFIG="$HOME/.config/alacritty/alacritty.yml"
CURRENT_OPACITY=$(grep 'opacity:' $CONFIG | awk '{print $2}')

if [[ "$CURRENT_OPACITY" == "0.8" ]]; then
  NEW_OPACITY="1.0"
else
  NEW_OPACITY="0.8"
fi

perl -i -pe "s/opacity: \d+\.\d+/opacity: $NEW_OPACITY/" $CONFIG
