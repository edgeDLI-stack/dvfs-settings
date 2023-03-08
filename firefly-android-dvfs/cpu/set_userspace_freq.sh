#!/bin/bash

cpu_idx=$1
freq=$2

cpu_dir_path=/sys/devices/system/cpu/cpu${cpu_idx}/cpufreq/
echo "userspace" > $cpu_dir_path/scaling_governor
echo $freq > $cpu_dir_path/scaling_setspeed
