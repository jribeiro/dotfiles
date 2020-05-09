#!/bin/sh

nvm install --lts
nvm use --lts

# install via script to avoid running into issues
# with duplicate node versions from brew
curl -o- -L https://yarnpkg.com/install.sh | bash