#!/bin/bash

# Verift the passed argument
if [ -z "$1" ]; then
  echo "Creating: $0 <directory>"
  exit 1
fi

# Create subdirectories
mkdir -p "$1"/{Evidence,Utils}
cd "$1" || exit


# Open tabs in xfce4-terminal
xfce4-terminal --disable-server --hide-menubar \
  --command "bash -c 'sleep 0.1; exit'" \
  --command='bash -c "xfce4-terminal --drop-down-split=vertical"'
  --tab --title="Evidence" --working-directory="$PWD/Evidence" \
  --tab --title="Utils" --working-directory="$PWD/Utils" & disown
