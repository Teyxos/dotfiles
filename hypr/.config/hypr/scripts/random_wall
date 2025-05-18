#!/usr/bin/env bash

sleep 1

WALLPAPER_DIR="$HOME/Pictures/Wallpapers/"

# Get a random wallpaper that is not the current one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename)" | shuf -n 1)

# Apply the selected wallpaper
swww img "$WALLPAPER"
