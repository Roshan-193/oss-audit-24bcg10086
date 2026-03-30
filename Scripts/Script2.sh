#!/bin/bash
# Script 2: Software Checker
# Author: Roshan Gayakwad

PKG="git"

echo "Verifying installation of $PKG"
echo "================================"

if command -v $PKG >/dev/null 2>&1; then
    echo "$PKG is available on this system."
    echo "Installed Version: $($PKG --version)"
else
    echo "$PKG is missing."
fi

# Info block
case $PKG in
    git) echo "Git is a distributed version control system." ;;
    vlc) echo "VLC is a media player." ;;
    firefox) echo "Firefox is a web browser." ;;
    *) echo "No additional info found." ;;
esac