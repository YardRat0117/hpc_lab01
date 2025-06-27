from debian:bookworm

# Assign work directory
workdir /opt

copy /build /opt/build

# Set default shell to bash
shell ["/bin/bash", "-c"]

run /opt/build/ins.sh

run /opt/build/mpi.sh

run /opt/build/blas.sh
run /opt/build/cblas.sh

run /opt/build/hpl.sh

# Non-root user werewolf
run /opt/build/conf.sh

# Remove directory
run rm -rf /opt/build

# Configure ssh service
expose 22
cmd ["service", "ssh", "start", "-D"]

