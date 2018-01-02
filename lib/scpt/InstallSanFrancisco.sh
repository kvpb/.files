#!/bin/bash

# InstallSanFrancisco.sh
# Install San Francisco Mac

mkdir -p /Users/${USER}/Temporary
cd /Users/${USER}/Temporary
curl --remote-name --location --insecure https://developer.apple.com/fonts/downloads/SFPro.zip
unzip SFPro.zip -d .
cd SFPro
sudo installer -pkg San\ Francisco\ Pro.pkg -target /
cd ..
mv SFPro.zip ~/Downloads/
cd ..
rm -r Temporary
