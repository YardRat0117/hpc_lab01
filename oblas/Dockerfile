from hpc_node:base

# Assign work directory
workdir /opt

copy /build /opt/oblas_build

# OpenBLAS
run /opt/oblas_build/oblas.sh

# HPL
run /opt/oblas_build/hpl.sh
