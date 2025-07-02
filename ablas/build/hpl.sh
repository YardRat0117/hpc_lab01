#!/bin/bash

# Change to /opt/hpl-pkg
mkdir -p /opt/hpl-pkg
cd /opt/hpl-pkg || exit

# Download the hpl package
wget -O hpl.tar.gz "https://netlib.org/benchmark/hpl/hpl-2.3.tar.gz"

# Extract it
tar -xzf /opt/hpl-pkg/hpl.tar.gz

# Enter source code directory
cd /opt/hpl-pkg/hpl-2.3 || exit

# Prepare the Makefile & Compile
cp /opt/la_build/Make.Linux_Ryzen_ABLAS /opt/hpl-pkg/hpl-2.3
make arch=Linux_Ryzen_ABLAS -j $(nproc)
cp /opt/hpl-pkg/hpl-2.3/bin/Linux_Ryzen_ABLAS -r /opt/run
chown werewolf:werewolf /opt/run

# Clear packages
cd /opt || exit
rm -rf /opt/hpl-pkg
