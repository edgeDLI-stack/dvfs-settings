#!/bin/bash

gpu_dir_name=$(ls /sys/devices/platform/ | grep gpu)
gpu_dir_path="/sys/devices/platform/$gpu_dir_name/devfreq/$gpu_dir_name"

cpu_idx=$1
freq=$2

cpufreq-set -c $cpu_idx -g userspace
cpufreq-set -c $cpu_idx -f $freq