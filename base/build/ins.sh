#!/bin/bash

apt update
apt upgrade -y
apt install -y sudo git wget curl build-essential openssh-server zlib1g-dev libncurses-dev gfortran python3
apt autoremove
apt clean
