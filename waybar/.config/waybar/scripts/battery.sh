#!/bin/bash

battery="/sys/class/power_supply/BAT0"

capacity=$(cat "$battery/capacity")
status=$(cat "$battery/status" 2>/dev/null)

ac_path=$(ls /sys/class/power_supply/ | grep -E "AC|ADP|ACAD" | head -n 1)

online=0
if [[ -n "$ac_path" ]]; then
    online=$(cat "/sys/class/power_supply/$ac_path/online" 2>/dev/null)
fi

# Battery icon based on charge level
if [[ $capacity -ge 95 ]]; then
    battery_icon=""
elif [[ $capacity -ge 70 ]]; then
    battery_icon=""
elif [[ $capacity -ge 45 ]]; then
    battery_icon=""
elif [[ $capacity -ge 20 ]]; then
    battery_icon=""
else
    battery_icon=""
fi


remaining_time=""

if [[ "$online" != "1" ]]; then
    energy_now=$(cat "$battery/energy_now")
    power_now=$(cat "$battery/power_now")

    if [[ "$power_now" -gt 0 ]]; then
        hours=$(( energy_now / power_now ))
        minutes=$(( (energy_now * 60 / power_now) % 60 ))
        remaining_time="$hours h $minutes min"
    fi
fi

# Build display text
if [[ "$online" == "1" ]]; then
    text="$battery_icon  󰚥 $capacity%"
    tooltip="Connected to AC power ($capacity%)"
else
    text="$battery_icon   $capacity%"
    tooltip="$remaining_time remaining"
fi
# Output JSON for Waybar
echo "{\"text\": \"$text\", \"tooltip\": \"$tooltip\"}"
