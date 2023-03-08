#!/bin/bash

npu_dir_name=$(ls /sys/devices/platform/ | grep npu)
npu_dir_path="/sys/devices/platform/$npu_dir_name/devfreq/$npu_dir_name"

freq=$1

echo userspace > $npu_dir_path/governor
echo $freq > $npu_dir_path/userspace/set_freq