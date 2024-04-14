#!/bin/bash
cat << EOF
----------------------
System configurations
----------------------
Logged in as $(whoami) with logname $(logname)
Total number of users: $(who -q | grep users | awk -F'=' '{print $2}')
Current shell: $SHELL
OS: $(uname -o)
Home directory: $HOME
Current working dir: $(pwd)
Current PATH: $PATH
EOF
