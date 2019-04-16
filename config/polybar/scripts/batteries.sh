#!/bin/sh

bat_0=$(upower -i $(upower -e | grep '/battery_BAT0') | grep -E percentage|xargs|cut -d' ' -f2)
bat_1=$(upower -i $(upower -e | grep '/battery_BAT1') | grep -E percentage|xargs|cut -d' ' -f2)

echo "bat 0: $bat_0 / bat 1: $bat_1 "

