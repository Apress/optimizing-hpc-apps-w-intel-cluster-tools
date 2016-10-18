#!/bin/sh
mpirun -np 16 ./miniFE.x nx=10
mpirun -np 16 ./miniFE.x nx=50
mpirun -np 16 ./miniFE.x nx=100
mpirun -np 16 ./miniFE.x nx=250
mpirun -np 16 ./miniFE.x nx=375
mpirun -np 16 ./miniFE.x nx=500

mpirun -genv OMP_NUM_THREADS 4 -np 12 ./miniFE.x nx=500
mpirun -genv OMP_NUM_THREADS 3 -np 16 ./miniFE.x nx=500
mpirun -genv OMP_NUM_THREADS 2 -np 24 ./miniFE.x nx=500

mpirun -np 8 ./miniFE.x nx=500
mpirun -np 12 ./miniFE.x nx=500
mpirun -np 16 ./miniFE.x nx=500
mpirun -np 24 ./miniFE.x nx=500
mpirun -np 48 ./miniFE.x nx=500

