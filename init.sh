#!/bin/bash

cd ~/Projects/scripts
sudo chmod +x nvimgit.sh
echo alias ngit=\'sh $(pwd)/nvimgit.sh\' >> ~/.zshrc
