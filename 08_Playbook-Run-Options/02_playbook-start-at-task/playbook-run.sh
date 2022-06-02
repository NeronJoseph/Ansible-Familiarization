#!/bin/bash

# Start a playbook from the specified task and skip the tasks before that
ansible-playbook playbook.yml --start-at-task "Start httpd service"