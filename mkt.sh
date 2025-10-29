#!/bin/bash

# Verify the passed argument
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
  --tab --title="Main" --working-directory="$PWD" \
  --tab --title="Evidence" --working-directory="$PWD/Evidence" \
  --tab --title="Utils" --working-directory="$PWD/Utils" & disown

# Wait a bit to ensure the terminal window exists
sleep 1

# Move focus to the Main tab (first tab)
xdotool key --clearmodifiers ctrl+Page_Up
sleep 0.1
xdotool key --clearmodifiers ctrl+Page_Up
