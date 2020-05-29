#!/bin/sh

bat_0=$(cat /sys/class/power_supply/BAT0/capacity)
bat_1=$(cat /sys/class/power_supply/BAT1/capacity)
#bat_status=$(upower -i $(upower -e | grep '/battery_BAT1') | grep -E state|xargs|cut -d' ' -f2)
#echo "status: $bat_status | bat 0: $bat_0 / bat 1: $bat_1 "

echo " bat0: $bat_0% / bat1: $bat_1% "

