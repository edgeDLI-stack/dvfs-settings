#!/bin/bash

npu_dir_name=$(ls /sys/devices/platform/ | grep npu)
npu_dir_path="/sys/devices/platform/$npu_dir_name/devfreq/$npu_dir_name"

echo "*** Current npu frequency:"
cur_freq=`cat $npu_dir_path/cur_freq`
echo $cur_freq

echo "*** Available npu frequencies:"
all_freq=`cat $npu_dir_path/available_frequencies`
echo $all_freq

echo "*** Min frequency:"
min_freq=(`cat $npu_dir_path/min_freq`)
echo $min_freq
echo "*** Max frequency:"
max_freq=(`cat $npu_dir_path/max_freq`)
echo $max_freq


echo "*** Current npu governor:"
cur_gov=`cat $npu_dir_path/governor`
echo $cur_gov

echo "*** Available npu governor:"
gall=`cat $npu_dir_path/available_governors`
echo $gall