#!/bin/bash

# Install dependency via apt
apt update
apt install -y zlib1g-dev

# Manually build mpi
wget https://download.open-mpi.org/release/open-mpi/v5.0/openmpi-5.0.7.tar.gz
tar -xzf openmpi-5.0.7.tar.gz
cd openmpi-5.0.7 || exit

./configure
make -j 14
make install 

ldconfig
rm -rf /opt/openmpi-5.0.7
rm -f /opt/openmpi-5.0.7.tar.gz

