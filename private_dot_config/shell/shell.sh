#!/bin/env sh

for file in $XDG_CONFIG_HOME/shell/scripts.d/*
do
    source $file
done
