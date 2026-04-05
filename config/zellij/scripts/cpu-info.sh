#!/usr/bin/env bash

read -r _ u1 n1 s1 i1 w1 irq1 sirq1 st1 _ < /proc/stat
total1=$((u1+n1+s1+i1+w1+irq1+sirq1+st1))
idle1=$((i1+w1))

sleep 0.3

read -r _ u2 n2 s2 i2 w2 irq2 sirq2 st2 _ < /proc/stat
total2=$((u2+n2+s2+i2+w2+irq2+sirq2+st2))
idle2=$((i2+w2))

total_diff=$((total2-total1))
idle_diff=$((idle2-idle1))

cpu=$((100 * (total_diff-idle_diff) / total_diff))

color="#a6e3a1"
((cpu > 70)) && color="#fab387"
((cpu > 85)) && color="#f38ba8"

echo "#[fg=$color,bold]cpu: ${cpu}%"
