#!/usr/bin/env sh

let CPU_power_limit_count=0
let CPU_throttle_count=0
for cpu in $(ls -d /sys/devices/system/cpu/cpu[0-9]*); do 
  if [ -f $cpu/thermal_throttle/package_power_limit_count ]; then
    let CPU_power_limit_count+=$(cat $cpu/thermal_throttle/package_power_limit_count)
  fi
  if [ -f $cpu/thermal_throttle/package_throttle_count ]; then
    let CPU_throttle_count+=$(cat $cpu/thermal_throttle/package_throttle_count)
  fi
done

echo CPU power limit events: $CPU_power_limit_count
echo CPU thermal throlling events: $CPU_throttle_count

