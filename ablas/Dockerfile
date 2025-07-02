from hpc_node:base

# Assign work directory
workdir /opt

copy /build /opt/la_build

# OpenMPI
run /opt/la_build/ompi.sh

# AOCL-BLAS
run /opt/la_build/ablas.sh

# HPL
run /opt/la_build/hpl.sh
