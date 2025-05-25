#!/bin/bash

# Configure default non-root user werewolf
useradd -m werewolf
echo "werewolf:take_my_paws" | chpasswd
usermod -aG sudo werewolf
chown -R werewolf:werewolf /home/werewolf
chown -R werewolf:werewolf /opt
chsh -s /bin/bash werewolf

# Configure vim
su - werewolf -c "curl -fLo /home/werewolf/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
cp /opt/arx/.vimrc /home/werewolf/.vimrc
cp /opt/arx/.vimrc.d -r /home/werewolf/.vimrc.d
echo "Please update all vim plugins manually" >> readme.md
