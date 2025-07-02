#!/bin/bash

ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -N ""
ssh-copy-id werewolf@node02
ssh-copy-id werewolf@node03
ssh-copy-id werewolf@node04
