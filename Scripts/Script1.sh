#!/bin/bash
# Script 1: System Info Summary
# Author: Roshan Gayakwad

NAME="Roshan Gayakwad"
TOOL_USED="Git"

KERNEL_VER=$(uname -r)
CURRENT_USER=$(whoami)
CURRENT_TIME=$(date "+%d-%m-%Y %H:%M:%S")

# Uptime check
if command -v uptime >/dev/null 2>&1; then
    SYS_UPTIME=$(uptime -p)
else
    SYS_UPTIME="Unavailable"
fi

# OS Detection
if [ -f /etc/os-release ]; then
    OS_NAME=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')
else
    OS_NAME="Unknown / Git Bash"
fi

echo "--------------------------------"
echo "   SYSTEM REPORT DASHBOARD"
echo "--------------------------------"
echo "Student Name : $NAME"
echo "Tool Used    : $TOOL_USED"
echo "User         : $CURRENT_USER"
echo "Kernel Ver   : $KERNEL_VER"
echo "Operating OS : $OS_NAME"
echo "System Uptime: $SYS_UPTIME"
echo "Timestamp    : $CURRENT_TIME"
echo "License Info : GPL (Linux)"
echo "--------------------------------"