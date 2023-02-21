#!/bin/bash

gpu_dir_name=$(ls /sys/devices/platform/ | grep gpu)
gpu_dir_path="/sys/devices/platform/$gpu_dir_name/devfreq/$gpu_dir_name"

freq=$1

echo userspace > $gpu_dir_path/governor
echo $freq > $gpu_dir_path/userspace/set_freq