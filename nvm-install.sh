#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.33.5/install.sh | bash
export NVM_DIR="/home/circleci/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm install
echo 'export NVM_DIR="/opt/circleci/.nvm"' >> $BASH_ENV
echo "[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"" >> $BASH_ENV
