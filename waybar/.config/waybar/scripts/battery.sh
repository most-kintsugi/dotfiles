#!/bin/bash

battery="/sys/class/power_supply/BAT0"

capacity=$(cat "$battery/capacity")
status=$(cat "$battery/status" 2>/dev/null)

ac_path=$(ls /sys/class/power_supply/ | grep -E "AC|ADP|ACAD" | head -n 1)

online=0
if [[ -n "$ac_path" ]]; then
    online=$(cat "/sys/class/power_supply/$ac_path/online" 2>/dev/null)
fi

icon=""

# icon logic

# charging while plugged in
if [[ "$online" == "1" && "$status" == "Charging" ]]; then
    icon="󰂄"   # charging

# plugged in, not charging
elif [[ "$online" == "1" ]]; then
    icon="󰁹"   # plugged

# running on battery
else
    icon="󰂀"   # discharging
fi

echo "{\"text\": \"$icon $capacity%\", \"tooltip\": \"$capacity% ($status)\"}"
