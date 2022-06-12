#!/bin/bash

# Generate a private-public keypair on control node with name ansible 
ssh-keygen -t rsa -b 2048 -f ~/.ssh/ansible 

# Add the public key of the newly created key to a remote machine with username 'user', hostname 'host' and password 'ansible'
ssh-copy-id -i ~/.ssh/ansible user@host
> type password

# Ping and test the connectivity using the ping module. Assume the inventory file is there and the host name is web1 
ansible -m ping -i inventory web1 