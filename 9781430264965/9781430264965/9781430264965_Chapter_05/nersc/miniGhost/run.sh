#!/bin/bash
# Small problem, sized for approximately 90 GB total memory usage.
# The script below is based on a 4 node, 96 MPI rank run on NERSC's Hopper
# To change to a different number of MPI ranks, change --npx, --npy and --npz.
# All other paramters would remain the same.
# E.g., an 8 MPI rank run would use: --npx 2 --npy 2 --npz 2. 

NP=$1
NX=$2
NY=$3
NZ=$4
NT=$5

#export I_MPI_PIN_DOMAIN=omp
export OMP_NUM_THREADS=$NT

mpirun -trace -n $NP ./miniGhost.x --scaling 1 --nx 200 --ny 200 --nz 200 --num_vars 40 --num_spikes 1 --debug_grid 1 --report_diffusion 21 --percent_sum 100 --num_tsteps 20 --stencil 24 --comm_method 10 --report_perf 1 --npx $NX --npy $NY --npz $NZ --error_tol 8 > results-medium-np$NP.nx$NX.ny$NY.nz$NZ.nt$NT.log

mv results.yaml results-medium-np$NP.nx$NX.ny$NY.nz$NZ.nt$NT.yaml
mv results.txt results-medium-np$NP.nx$NX.ny$NY.nz$NZ.nt$NT.txt

