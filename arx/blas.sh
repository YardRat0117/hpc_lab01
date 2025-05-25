#!/bin/bash

wget "http://www.netlib.org/blas/blas-3.12.0.tgz"
tar -xvf blas-3.12.0.tgz

cd /opt/BLAS-3.12.0 || exit
make -j 26

cd /opt || exit
rm blas-3.12.0.tgz

