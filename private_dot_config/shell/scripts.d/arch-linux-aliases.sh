#!/bin/env sh

if [ -f /etc/os-release ]; then
    . /etc/os-release
    if [ "$ID" = "arch" ]; then
        if command -v paru >/dev/null 2>&1; then 
            alias yay="paru"
            alias yeet="paru -Rcs"
        elif command -v yay >/dev/null 2>&1; then
            alias yeet="yay -Rcs"
        fi
    fi
fi
