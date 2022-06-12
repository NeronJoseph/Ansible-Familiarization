#!/bin/bash

ansible-playbook --become --become-method=doas --become-user=nginx

# If we want to ask the sudo password during execution, use --ask-become-pass 
ansible-playbook --become --become-method=doas --become-user=nginx --ask-become-pass