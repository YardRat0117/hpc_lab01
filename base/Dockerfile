from debian:bookworm-slim

# Assign work directory
workdir /opt

copy /build /opt/build

# Set default shell to bash
shell ["/bin/bash", "-c"]

# Necessary Packages
run /opt/build/ins.sh

# OpenMPI
run /opt/build/ompi.sh

# Vim
run /opt/build/vim.sh

# Non-root user werewolf
run /opt/build/conf.sh

# Remove directory
# run rm -rf /opt/build
