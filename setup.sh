#!/bin/bash

# Check if script is run as root or using sudo
if [ "$EUID" -ne 0 ]; then
    echo "Please run this script with sudo."
    exit 1
fi

# Check if the number of arguments is not equal to 1
if [ $# -ne 1 ]; then
    echo "Usage: $0 <alias>"
    exit 1
fi

alias_name=$1
hosts_file="/etc/hosts"

# Add alias_name to /etc/hosts
echo "127.0.0.1 $alias_name" | sudo tee -a $hosts_file > /dev/null

# Check if alias_name is successfully added to /etc/hosts
if grep -qF "$alias_name" $hosts_file; then
    echo "🌟 Alias '$alias_name' added to /etc/hosts"
    echo -e "🌟 Please execute start.sh as follow:\n\t'./start.sh'\n"
else
    echo "Failed to add alias '$alias_name' to /etc/hosts"
fi
