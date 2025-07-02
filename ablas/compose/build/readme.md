# How to run the cluster? 

1. Change to the non-root user `werewolf`
2. Run the ssh key script `/opt/base_build/add_ssh.sh`
3. Write the hostfile `hostfile.txt`
4. Run with `mpirun -np 12 --hostfile ./hostfile.txt ./xhpl`
