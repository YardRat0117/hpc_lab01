#!/bin/bash

# Install dependency via apt
apt update
apt install -y gfortran

# Manually build cblas
wget "https://hpc101.zjusct.io/lab/Lab1-MiniCluster/assets/CBLAS.tgz"
tar -xvf CBLAS.tgz

cd /opt/CBLAS || exit
rm -f Makefile.in
sed -i -e "s|^SHELL[[:space:]]*=.*|SHELL = /bin/bash|" "Makefile.LINUX"
sed -i -e "s|^BLLIB[[:space:]]*=.*|BLLIB = /opt/BLAS-3.12.0/blas_LINUX.a|" "Makefile.LINUX"
sed -i -e "s|^CBLIB[[:space:]]*=.*|CBLIB = /opt/CBLAS/cblas_LINUX.a|" "Makefile.LINUX"
sed -i -e "s|^[[:space:]]*#*[[:space:]]*FFLAGS[[:space:]]*=.*|FFLAGS = -O3 -fallow-argument-mismatch|" "Makefile.LINUX"
cp Makefile.LINUX Makefile.in
make -j 14

cd /opt || exit
rm CBLAS.tgz
