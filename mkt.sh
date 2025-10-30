#!/bin/bash

# Verify the passed argument
if [ -z "$1" ]; then
  echo "Creating: $0 <directory>"
  exit 1
fi

BASE_DIR="$1"

# Create subdirectories
mkdir -p "$BASE_DIR"/{Evidence,Utils}

# Open QTerminal with the first tab in BASE_DIR
qterminal --working-directory="$BASE_DIR" &

# Wait for the terminal to open
sleep 0.5

# Rename the first tab to "Main"
xdotool key --clearmodifiers alt+shift+s
sleep 0.05
xdotool type "Main"
xdotool key Return
sleep 0.1

# Open tab for Evidence
xdotool key --clearmodifiers ctrl+shift+t
sleep 0.05
xdotool key --clearmodifiers alt+shift+s
sleep 0.05
xdotool type "Evidence"
xdotool key Return
sleep 0.05
# Change directory to Evidence (absolute path)
xdotool type "cd '$BASE_DIR/Evidence'"
xdotool key Return
xdotool key --clearmodifiers ctrl+L
sleep 0.1


# Open tab for Utils
xdotool key --clearmodifiers ctrl+shift+t
sleep 0.05
xdotool key --clearmodifiers alt+shift+s
sleep 0.05
xdotool type "Utils"
xdotool key Return
sleep 0.1
# Change directory to Utils (absolute path)
xdotool type "cd '$BASE_DIR/Utils'"
xdotool key Return
sleep 0.05
xdotool key --clearmodifiers ctrl+L
sleep 0.1

# Return focus to Main tab
xdotool key --clearmodifiers ctrl+Page_Up
sleep 0.05
xdotool key --clearmodifiers ctrl+Page_Up
xdotool type "cd '$BASE_DIR'"
xdotool key Return
sleep 0.05
xdotool key --clearmodifiers ctrl+L
sleep 0.05
xdotool key --clearmodifiers ctrl+R
