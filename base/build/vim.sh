#!/bin/bash

# Change to /opt/vim-pkg
mkdir -p /opt/vim-pkg
cd /opt/vim-pkg || exit

# Download the vim package
wget -O vim.tar.gz https://github.com/vim/vim/archive/refs/heads/master.tar.gz

# Extract it
tar -xzf /opt/vim-pkg/vim.tar.gz

# Enter source code directory
cd vim-master || exit

# Configure & Compile
./configure \
    --with-features=normal \
    --enable-multibyte \
    --disable-pythoninterp \
    --disable-python3interp \
    --disable-rubyinterp \
    --disable-perlinterp \
    --disable-luainterp \
    --disable-tclinterp \
    --disable-mzschemeinterp \
    --disable-channel \
    --disable-terminal \
    --disable-gui \
    --without-x \
    --prefix=/usr/local
make -j $(nproc)
make install

# Clear packages
cd /opt || exit
rm -rf vim-pkg
