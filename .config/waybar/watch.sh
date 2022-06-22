#!/usr/bin/env bash

# Re-launch waybar whenever a config file changes.
# Requires `inotify-tools` to be installed from pacman.
# See: https://github.com/Alexays/Waybar/issues/961#issuecomment-753533975


CONFIG_FILES="$HOME/.config/waybar/config $HOME/.config/waybar/style.css"

trap "killall waybar" EXIT

while true; do
	waybar &
	inotifywait -e create,modify $CONFIG_FILES
	killall waybar
done
