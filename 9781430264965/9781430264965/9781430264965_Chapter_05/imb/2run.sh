#!/bin/sh
mpirun -n 2 ./IMB-MPI1 PingPong > IMB-MPI1-n1p2-PingPong.log
mpirun -n 2 ./IMB-MPI1 PingPong > IMB-MPI1-n1p2-PingPong.log2
mpirun -n 2 ./IMB-MPI1 PingPong > IMB-MPI1-n1p2-PingPong.log3
mpirun -n 2 ./IMB-MPI1 -iter 10000 -msglog 24 PingPong > IMB-MPI1-n1p2-PingPong.log4
mpirun -n 2 ./IMB-MPI1 -iter 10000 -msglog 24 PingPong > IMB-MPI1-n1p2-PingPong.log5
mpirun -n 2 ./IMB-MPI1 -iter 10000 -msglog 24 PingPong > IMB-MPI1-n1p2-PingPong.log6
