#!/bin/bash

# Get active window title via Hyprland IPC
title=$(hyprctl activewindow -j | jq -r '.title')

# If no window, show something else
if [ "$title" = "null" ] || [ -z "$title" ]; then
    echo "Desktop"
else
    echo "$title"
fi

