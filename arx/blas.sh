#!/bin/bash

# Install dependency via apt
apt update
apt install -y gfortran

# Manually build blas
wget "http://www.netlib.org/blas/blas-3.12.0.tgz"
tar -xvf blas-3.12.0.tgz

cd /opt/BLAS-3.12.0 || exit
make -j 14

cd /opt || exit
rm blas-3.12.0.tgz

