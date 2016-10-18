#!/usr/bin/env sh

export OMP_NUM_THREADS=$(cat /proc/cpuinfo| awk 'BEGIN{cpus=0} 
    /processor/{cpus++} 
    /cpu cores/{cpu_cores=$4} 
    /siblings/{siblings=$3} 
    END{print cpus*cpu_cores/siblings}')

export OMP_PLACES=cores

`dirname $0`/stream | awk -v host=$(hostname) '/Triad:/{printf "%s: %s\n",host,$2}'

