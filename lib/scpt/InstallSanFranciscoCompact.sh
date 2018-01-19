#!/usr/bin/env bash

# InstallSanFranciscoCompact.sh
# Install San Francisco Compact Mac

mkdir -p /Users/${USER}/Temporary
cd /Users/${USER}/Temporary
curl --remote-name --location --insecure https://developer.apple.com/fonts/downloads/SFCompact.zip
unzip SFCompact.zip -d .
cd SFCompact
sudo installer -pkg San\ Francisco\ Compact.pkg -target /
cd ..
mv SFCompact.zip ~/Downloads/
cd ..
rm -r Temporary
