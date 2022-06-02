#!/bin/bash

# Run tasks only with the specified tasks
ansible-playbook playbook.yml --tags "install"

# Skip tasks mentioned by the tag
ansible-playbook playbook.yml --skip-tags "install"