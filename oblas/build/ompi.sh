#!/bin/bash

# Change to /opt/ompi-pkg
mkdir -p /opt/ompi-pkg
cd /opt/ompi-pkg || exit

# Download the OpenMPI package
wget -O ompi.tar.gz "https://download.open-mpi.org/release/open-mpi/v5.0/openmpi-5.0.8.tar.gz"

# Extract it
tar -xzf /opt/ompi-pkg/ompi.tar.gz

# Enter source code directory
cd openmpi-5.0.8 || exit

# Configure & Compile
./configure
make -j $(nproc)
make install 
ldconfig

# Clear packages
cd /opt || exit
rm -rf ompi-pkg
