from debian:bookworm

# Assign work directory
workdir /opt

copy /arx /opt/build

# Set default shell to bash
shell ["/bin/bash", "-c"]

run /opt/build/ins.sh

run /opt/build/mpi.sh

run /opt/build/blas.sh
run /opt/build/cblas.sh

run /opt/build/hpl.sh

run /opt/build/conf.sh

# Remove directory
run rm -rf /opt/build

# Switch to normal user werewolf
# The user is set permissions to `/home/werewolf` and `/opt` in `user_conf.sh`
# user werewolf

# These following lines are not used currently.

# Expose port 22 for SSH
# EXPOSE 22

# Start ssh service
# CMD ["service", "ssh", "start", "-D"]
