#!/usr/bin/env bash

## Author  : Modified for PippyUrkel
## Purpose : Display Profile Switcher using rofi + autorandr

dir="$HOME/.config/polybar/shades/scripts/rofi"
rofi_command="rofi -no-config -theme $dir/powermenu.rasi"

# Profiles
profile1=" Laptop Only"
profile2=" Mirrored"
profile3=" External Primary"
profile4=" Laptop Primary"

options="$profile1\n$profile2\n$profile3\n$profile4"

chosen="$(echo -e "$options" | $rofi_command -p "Display Profile" -dmenu -selected-row 0)"

load_profile() {
    profile=$1
    name=$2

    if autorandr --load "$profile"; then
        notify-send "Profile Loaded: $name" && nitrogen --restore
    else
        notify-send "Failed to load '$name'. Falling back to 'default'..."
        autorandr --load default && notify-send "Fallback Loaded: default"
    fi
}

case "$chosen" in
    "$profile1")
        load_profile "default" "Laptop Only"
        ;;
    "$profile2")
        load_profile "mirrored" "Mirrored"
        ;;
    "$profile3")
        load_profile "secondary-primary" "External Primary"
        ;;
    "$profile4")
        load_profile "laptop-primary" "Laptop Primary"
        ;;
esac
