from debian:trixie

# Assign work directory
workdir /opt

copy /build /opt/base_build

# Set default shell to bash
shell ["/bin/bash", "-c"]

# Necessary Packages
run /opt/base_build/ins.sh

# Vim
run /opt/base_build/vim.sh

# Non-root user werewolf
run /opt/base_build/conf.sh
