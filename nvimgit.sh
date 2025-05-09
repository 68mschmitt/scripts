#!/bin/bash

cd ~/.config/nvim

if [[ $1 == "-h" ]]; then
    echo "Usage: ngit [-cd <nvim config>] [-rp git restore and pull] [blank <git status>]"
fi

if [[ $1 == "" ]]; then
    git fetch
    git status
fi

if [[ $1 == "-cd" ]]; then
    nvim
fi

if [[  $1 == "-rp"  ]]; then
    git restore .
    git pull
fi
