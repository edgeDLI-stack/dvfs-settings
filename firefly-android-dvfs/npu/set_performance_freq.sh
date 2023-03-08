#!/bin/bash

npu_dir_name=$(ls /sys/devices/platform/ | grep npu)
npu_dir_path="/sys/devices/platform/$npu_dir_name/devfreq/$npu_dir_name"

echo "performance" > $npu_dir_path/governor