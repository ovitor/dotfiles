#!/usr/bin/env bash

device=$(lsblk -dn -o NAME | grep '^nvme' | head -n1)

if [[ -z "$device" ]]; then
    echo "#[fg=#f38ba8,bold]💾 no-nvme"
    exit 1
fi

device="/dev/$device"

used=$(sudo nvme smart-log "$device" 2>/dev/null \
    | awk -F':' '/percentage_used/ {gsub(/[%[:space:]]/, "", $2); print $2}')

if [[ -z "$used" ]]; then
    echo "#[fg=#f38ba8,bold]💾 n/a"
    exit 1
fi

color="#a6e3a1"
(( used > 50 )) && color="#fab387"
(( used > 80 )) && color="#f38ba8"

echo "#[fg=$color,bold]| nvme usage: ${used}%"
