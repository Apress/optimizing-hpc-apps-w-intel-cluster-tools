#!/usr/bin/env sh

icc -DSTREAM_ARRAY_SIZE=800000000 -O3 -xHost -mcmodel=medium -qopenmp stream.c -o stream

