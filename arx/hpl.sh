#!/bin/bash

wget "https://netlib.org/benchmark/hpl/hpl-2.3.tar.gz"
tar -xzf hpl-2.3.tar.gz -C /opt
cp /opt/build/Make.Linux_PII_FBLAS /opt/hpl-2.3
cd /opt/hpl-2.3 || exit
make arch=Linux_PII_FBLAS -j 14
rm /opt/hpl-2.3.tar.gz
