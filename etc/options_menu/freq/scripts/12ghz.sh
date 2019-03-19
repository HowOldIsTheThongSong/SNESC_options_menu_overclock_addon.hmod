#!/bin/sh
echo 1200000 > /etc/options_menu/freq/setfreq
cat /etc/options_menu/freq/setfreq > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
echo $(printf "%.2f\n" $( dc $(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq) 1000000 div p))GHz
