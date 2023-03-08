#!/bin/bash

cpu_idx=$1

cpu_dir_path=/sys/devices/system/cpu/cpu${cpu_idx}/cpufreq/

echo "*** Current CPU frequency:"
cur_freq=`cat $cpu_dir_path/cur_freq`
echo $cur_freq

echo "*** Available CPU frequencies:"
all_freq=`cat $cpu_dir_path/available_frequencies`
echo $all_freq

echo "*** Min frequency:"
min_freq=`cat $cpu_dir_path/min_freq`
echo $min_freq
echo "*** Max frequency:"
max_freq=`cat $cpu_dir_path/max_freq`
echo $max_freq


echo "*** Current CPU governor:"
cur_gov=`cat $cpu_dir_path/governor`
echo $cur_gov

echo "*** Available CPU governor:"
gall=`cat $cpu_dir_path/available_governors`
echo $gall

echo "*** Related CPU idx:"
gall=`cat $cpu_dir_path/related_cpus`
echo $gall