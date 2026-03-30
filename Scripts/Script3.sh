#!/bin/bash
# Script 3: Directory & Permission Checker
# Author: Roshan Gayakwad

FOLDERS=("/etc" "/usr/bin" "/tmp" "$HOME")

echo "==== Directory Inspection ===="
echo ""

for F in "${FOLDERS[@]}"; do
    if [ -d "$F" ]; then
        DETAILS=$(ls -ld "$F" | awk '{print $1, $3}')
        SIZE_INFO=$(du -sh "$F" 2>/dev/null | cut -f1)
        echo "Path: $F"
        echo "Permissions & Owner: $DETAILS"
        echo "Size: $SIZE_INFO"
        echo "-----------------------------"
    else
        echo "$F does not exist"
    fi
done

# Git config check
if [ -f "$HOME/.gitconfig" ]; then
    echo "Git configuration detected:"
    ls -l "$HOME/.gitconfig"
else
    echo "Git config file not found."
fi