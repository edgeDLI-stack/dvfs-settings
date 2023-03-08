#!/bin/bash

gpu_dir_name=$(ls /sys/devices/platform/ | grep gpu)
gpu_dir_path="/sys/devices/platform/$gpu_dir_name/devfreq/$gpu_dir_name"

echo "*** Current GPU frequency:"
cur_freq=`cat $gpu_dir_path/cur_freq`
echo $cur_freq

echo "*** Available GPU frequencies:"
all_freq=`cat $gpu_dir_path/available_frequencies`
echo $all_freq

echo "*** Min frequency:"
min_freq=`cat $gpu_dir_path/min_freq`
echo $min_freq
echo "*** Max frequency:"
max_freq=`cat $gpu_dir_path/max_freq`
echo $max_freq


echo "*** Current GPU governor:"
cur_gov=`cat $gpu_dir_path/governor`
echo $cur_gov

echo "*** Available GPU governor:"
gall=`cat $gpu_dir_path/available_governors`
echo $gall