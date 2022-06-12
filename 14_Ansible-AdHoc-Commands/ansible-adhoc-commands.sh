#!/bin/bash

# Run an ansible adhoc command for ping 
ansible -m ping all 

# Run a command directly instead of using modules 
ansible -a 'cat /etc/hosts' all 

# Run a previlege escalation commands with adhoc commands 
ansible -a 'yum install nginx' all \
    --become \
    --become-user nginx 

# View Ansible version 
ansible --version

# Gather facts of localhost using ansible
ansible -m setup localhost

# Run the command and get date from web1 host. Use the inventory also (assumption)
ansible -m command -a date -i inventory web1 