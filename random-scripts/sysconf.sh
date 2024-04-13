#!/bin/bash
WORK_DIR = $(pwd)
cat << EOF
----------------------
System configurations
----------------------
Logged in as $(whoami) with logname $(logname)
Total number of users: $(who -q | grep users | awk -F'=' '{print $2}')
Current shell: $SHELL
OS: $(uname -o)
Home directory: $HOME
Current working dir: $WORK_DIR
Current PATH: $PATH
EOF
