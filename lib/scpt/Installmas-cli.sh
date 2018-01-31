#!/usr/bin/env bash

# Installmas-cli.sh
# Install mas-cli latest

mkdir -p ${HOME}/Temporary
chdir ${HOME}/Temporary
curl -LOk $(curl -sLo /dev/null -w '%{url_effective}' https://github.com/mas-cli/mas/releases/latest)
unzip mas-cli.zip
mv mas /usr/local/bin/
mv mas-cli.zip ../Downloads/
chdir ..
rmdir Temporary
# Download mas-cli, and install it.
