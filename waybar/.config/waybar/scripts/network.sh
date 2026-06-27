#!/bin/bash

# ===== helpers =====
truncate() {
    local str="$1"
    local max="$2"

    if [ "${#str}" -gt "$max" ]; then
        echo "${str:0:$((max-2))}.."
    else
        echo "$str"
    fi
}

check_internet() {
    ping -c 1 -W 1 1.1.1.1 >/dev/null 2>&1
}

iface=$(ip route | awk '/default/ {print $5; exit}')

# ===== NO CONNECTION =====
if [ -z "$iface" ]; then
    echo '{"text":"󰤮  offline","class":"disconnected"}'
    exit
fi

# ===== ETHERNET =====
if [[ "$iface" == e* ]]; then
    iface_short=$(truncate "$iface" 10)
    echo "{\"text\":\"󰈀 $iface_short\",\"class\":\"ethernet\"}"
    exit
fi

# ===== WIFI =====
ssid=$(nmcli -t -f active,ssid dev wifi | awk -F: '$1=="yes"{print $2; exit}')

if [ -z "$ssid" ]; then
    echo '{"text":"󰤨  no-wifi","class":"wifi-disconnected"}'
    exit
fi

ssid_short=$(truncate "$ssid" 12)

# ===== INTERNET CHECK =====
if check_internet; then
    echo "{\"text\":\"󰤨  $ssid_short\",\"class\":\"wifi-connected\"}"
else
    echo '{"text":"󰤨 no-net","class":"wifi-no-internet"}'
fi
