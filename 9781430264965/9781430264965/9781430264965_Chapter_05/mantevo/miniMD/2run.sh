#!/bin/sh
mpirun -np 1 ./miniMD_intel > out.lj.miniMD.p1
mpirun -np 2 ./miniMD_intel > out.lj.miniMD.p2
mpirun -np 4 ./miniMD_intel > out.lj.miniMD.p4
mpirun -np 8 ./miniMD_intel > out.lj.miniMD.p8
mpirun -np 16 ./miniMD_intel > out.lj.miniMD.p16
mpirun -np 24 ./miniMD_intel > out.lj.miniMD.p24
mpirun -np 32 ./miniMD_intel > out.lj.miniMD.p32
mpirun -np 48 ./miniMD_intel > out.lj.miniMD.p48
