#!/bin/bash

if [[ $1 == "" ]]; then
    ( cd ~/.config/nvim; git fetch; git status )
fi

if [[ $1 == "-cd" ]]; then
      cd ~/.config/nvim; nvim
fi

if [[ $1 == "-s" ]]; then
    ( cd ~/.config/nvim; git status )
fi

if [[  $1 == "-r"  ]]; then
    ( cd ~/.config/nvim; git restore . )
fi

if [[  $1 == "-p"  ]]; then
    ( cd ~/.config/nvim; git pull )
fi
