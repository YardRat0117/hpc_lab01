#!/bin/bash

# Change to /opt/ablas-pkg
mkdir -p /opt/ablas-pkg
cd /opt/ablas-pkg || exit

# Download the ablas package
wget -O ablas.tar.gz "https://github.com/amd/blis/archive/refs/tags/5.1.tar.gz" 

# Extract it
tar -xzf /opt/ablas-pkg/ablas.tar.gz

# Enter source code directory
cd /opt/ablas-pkg/blis-5.1 || exit

# Compile
./configure --prefix=/usr/local --enable-shared --enable-static --enable-blas --enable-cblas --enable-threading=openmp zen4
make -j $(nproc)
make install
ldconfig

# Clear packages
cd /opt || exit
rm -rf /opt/ablas-pkg
