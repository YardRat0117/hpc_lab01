from hpc_node:base

# Assign work directory
workdir /opt

copy /build /opt/la_build

# OpenMPI
run /opt/la_build/ompi.sh

# OpenBLAS
run /opt/la_build/oblas.sh

# HPL
run /opt/la_build/hpl.sh
