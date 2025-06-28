#!/bin/bash

# Change to /opt/blas-pkg
mkdir -p /opt/oblas-pkg
cd /opt/oblas-pkg || exit

# Download the blas package
wget -O oblas.tar.gz "https://github.com/OpenMathLib/OpenBLAS/archive/refs/tags/v0.3.30.tar.gz"

# Extract it
tar -xzf /opt/oblas-pkg/oblas.tar.gz

# Enter source code directory
cd /opt/oblas-pkg/OpenBLAS-0.3.30 || exit

# Compile
make -j $(nproc)
make install PREFIX=/usr/local
ldconfig

# Clear packages
cd /opt || exit
rm -rf /opt/oblas-pkg
