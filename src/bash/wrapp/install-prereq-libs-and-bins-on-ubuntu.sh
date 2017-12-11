#!/bin/bash

# file: src/bash/wrapp/install-prereq-libs-and-bins-on-ubuntu.sh

set -eu -o pipefail # fail on error , debug all lines

sudo -n true
test $? -eq 0 || exit 1 "you should have sudo priveledge to run this script"

echo installing the must-have pre-requisites
sudo apt-get install -y perl
sudo apt-get install -y zip unzip
sudo apt-get install -y exuberant-ctags
sudo apt-get install -y mutt

echo installing the nice-to-have pre-requisites
echo you have 5 seconds to proceed ...
echo or
echo hit Ctrl+C to quit
sleep 6
sudo apt-get install -y tig

# eof file: src/bash/wrapp/install-prereq-libs-and-bins-on-ubuntu.sh
