#!/bin/bash

# Installation via APT
apt update
apt upgrade -y
apt install -y vim-nox sudo git wget curl build-essential openssh-server zlib1g-dev gfortran
apt clean
