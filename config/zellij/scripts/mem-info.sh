#!/usr/bin/env bash

mem_total=$(awk '/MemTotal/ {print $2}' /proc/meminfo)
mem_available=$(awk '/MemAvailable/ {print $2}' /proc/meminfo)

mem_used=$((mem_total - mem_available))
mem=$((100 * mem_used / mem_total))

color="#89b4fa"
((mem > 70)) && color="#fab387"
((mem > 85)) && color="#f38ba8"

echo "#[fg=$color,bold]| mem: ${mem}%"
