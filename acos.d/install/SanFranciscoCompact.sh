#!/usr/bin/env bash

mkdir -p ${HOME}/Temporary
cd ${HOME}/Temporary
curl --remote-name --location --insecure https://developer.apple.com/fonts/downloads/SFCompact.zip
unzip SFCompact.zip -d .
cd SFCompact
sudo installer -pkg San\ Francisco\ Compact.pkg -target /
cd ..
mv SFCompact.zip ${HOME}/Downloads/
cd ..
rm -r Temporary
exit 0

#	InstallSanFranciscoCompact.sh
#
#	Karl V. P. B. `kvpb`
#	+1 (DDD) DDD-DDDD
#	local-part@domain
#	https://www.linkedin.com/in/
#	https://twitter.com/
#	https://github.com/kvpb
#	https://vm.tiktok.com//
