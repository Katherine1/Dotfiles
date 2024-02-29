#!/bin/env sh

if [ -f /etc/os-release ]; then
    . /etc/os-release
    if [ "$ID" = "arch" ]; then
        alias yay="paru"
        alias yeet="paru -Rcs"
    fi
fi
