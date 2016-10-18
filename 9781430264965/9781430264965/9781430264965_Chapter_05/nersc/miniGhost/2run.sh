#!/bin/sh

##!/bin/bash
## Small problem, sized for approximately 90 GB total memory usage.
## The script below is based on a 4 node, 96 MPI rank run on NERSC's Hopper
## To change to a different number of MPI ranks, change --npx, --npy and --npz.
## All other paramters would remain the same.
## E.g., an 8 MPI rank run would use: --npx 2 --npy 2 --npz 2. 
#
#export OMP_NUM_THREADS=1
#
#NP=$1
#NX=$2
#NY=$3
#NZ=$4
#
#mpirun -genv I_MPI_STATS ipm -n $NP ./miniGhost.x --scaling 1 --nx 200 --ny 200 --nz 200 --num_vars 40 --num_spikes 1 --debug_grid 1 --report_diffusion 21 --percent_sum 100 --num_tsteps 20 --stencil 24 --comm_method 10 --report_perf 1 --npx $NX --npy $NY --npz $NZ --error_tol 8 > results-medium-np$NP.nx$NX.ny$NY.nz$NZ.nt1.log
#
#mv results.yaml results-medium-np$NP.nx$NX.ny$NY.nz$NZ.nt1.yaml
#mv results.txt results-medium-np$NP.nx$NX.ny$NY.nz$NZ.nt1.txt
#

./run.sh 1 1 1 1
./run.sh 2 2 1 1
./run.sh 2 1 2 1
./run.sh 2 1 1 2
./run.sh 4 4 1 1
./run.sh 4 1 4 1
./run.sh 4 1 1 4 
./run.sh 8 8 1 1
./run.sh 8 1 8 1
./run.sh 8 1 1 8
./run.sh 8 4 2 1
./run.sh 8 4 1 2
./run.sh 8 2 4 1
./run.sh 8 1 4 2
./run.sh 8 1 2 4
./run.sh 8 2 1 4
./run.sh 8 2 2 2

./run.sh 12 12 1 1
./run.sh 12 1 12 1
./run.sh 12 1 1 12
./run.sh 12 6 2 1
./run.sh 12 6 1 2
./run.sh 12 1 6 2
./run.sh 12 2 6 1
./run.sh 12 2 1 6
./run.sh 12 1 2 6
./run.sh 12 4 3 1
./run.sh 12 4 1 3
./run.sh 12 1 4 3
./run.sh 12 3 4 1
./run.sh 12 3 1 4
./run.sh 12 1 3 4
./run.sh 12 3 2 2
./run.sh 12 2 3 2
./run.sh 12 2 2 3

./run.sh 16 16 1 1
./run.sh 16 1 16 1
./run.sh 16 1 1 16
./run.sh 16 8 2 1
./run.sh 16 8 1 2
./run.sh 16 1 8 2
./run.sh 16 2 8 1
./run.sh 16 2 1 8
./run.sh 16 1 2 8
./run.sh 16 4 4 1
./run.sh 16 4 1 4
./run.sh 16 1 4 4

./run.sh 24 24 1 1
./run.sh 24 1 24 1
./run.sh 24 1 1 24
./run.sh 24 12 2 1
./run.sh 24 12 1 2
./run.sh 24 1 12 2
./run.sh 24 2 12 1
./run.sh 24 2 1 12
./run.sh 24 1 2 12
./run.sh 24 6 4 1
./run.sh 24 6 1 4
./run.sh 24 1 6 4
./run.sh 24 4 6 1
./run.sh 24 4 1 6
./run.sh 24 1 4 6
./run.sh 24 4 3 2
./run.sh 24 4 2 3
./run.sh 24 2 4 3
./run.sh 24 3 4 2
./run.sh 24 3 2 4
./run.sh 24 2 3 4

##!/bin/bash
## Small problem, sized for approximately 90 GB total memory usage.
## The script below is based on a 4 node, 96 MPI rank run on NERSC's Hopper
## To change to a different number of MPI ranks, change --npx, --npy and --npz.
## All other paramters would remain the same.
## E.g., an 8 MPI rank run would use: --npx 2 --npy 2 --npz 2. 
#
#NP=$1
#NX=$2
#NY=$3
#NZ=$4
#NT=$5
#
##export I_MPI_PIN_DOMAIN=omp
#export OMP_NUM_THREADS=$NT
#
#mpirun -trace -n $NP ./miniGhost.x --scaling 1 --nx 200 --ny 200 --nz 200 --num_vars 40 --num_spikes 1 --debug_grid 1 --report_diffusion 21 --percent_sum 100 --num_tsteps 20 --stencil 24 --comm_method 10 --report_perf 1 --npx $NX --npy $NY --npz $NZ --error_tol 8 > results-medium-np$NP.nx$NX.ny$NY.nz$NZ.nt$NT.log
#
#mv results.yaml results-medium-np$NP.nx$NX.ny$NY.nz$NZ.nt$NT.yaml
#mv results.txt results-medium-np$NP.nx$NX.ny$NY.nz$NZ.nt$NT.txt

./run.sh 24 2 3 4 1
./run.sh 24 2 3 4 2
./run.sh 16 1 4 4 1
./run.sh 16 1 4 4 1
./run.sh 16 1 4 4 2
./run.sh 16 1 4 4 3
./run.sh 12 1 3 4 1
./run.sh 12 1 3 4 2
./run.sh 12 1 3 4 3
./run.sh 12 1 3 4 4
./run.sh 8 1 2 4 1
./run.sh 8 1 2 4 2
./run.sh 8 1 2 4 3
./run.sh 8 1 2 4 4
./run.sh 8 1 2 4 5
./run.sh 8 1 2 4 6

# further, focus on this case:
#./run.sh 12 1 3 4 4
