#!/bin/bash


if [[ $1 == "-h" ]]; then
    echo "Usage: ngit [-i (ssh) <nvim config|ssh or https>] [-cd <nvim config>] [-rp git restore and pull] [blank <git status>]"
fi

if [[ $1 == "-i" ]]; then
    cd ~/.config
    if [[ $2 == "ssh"]]; then
        git clone git@github.com:68mschmitt/nvim.git
    else
        git clone https://github.com/68mschmitt/nvim.git
    fi
fi

cd ~/.config/nvim

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
