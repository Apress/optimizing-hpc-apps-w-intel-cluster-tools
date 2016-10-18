#!/usr/bin/env sh

tar xf IOR-2.10.3.tgz
cd IOR

sed -i -e 's/CC.Linux = mpicc/CC.Linux = mpiicc/' src/C/Makefile.config

make clean

make mpiio

cp src/C/IOR ../IOR.x

cd ..

