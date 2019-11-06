#!/bin/sh
set -e
ansible-playbook -e "target_user=${USER}" install.yml
