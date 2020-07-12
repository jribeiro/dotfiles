#!/bin/sh

BASE=$(cd "$(dirname "$0")"; pwd -P)

# Install extensions
source $BASE/extensions.sh

# Link settings
ln -nsf $BASE/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
