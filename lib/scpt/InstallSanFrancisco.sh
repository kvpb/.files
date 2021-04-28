#!/usr/bin/env bash

mkdir -p ${HOME}/Temporary
cd ${HOME}/Temporary
curl --remote-name --location --insecure https://developer.apple.com/fonts/downloads/SFPro.zip
unzip SFPro.zip -d .
cd SFPro
sudo installer -pkg San\ Francisco\ Pro.pkg -target /
cd ..
mv SFPro.zip ${HOME}/Downloads/
cd ..
rm -r Temporary
exit 0

# InstallSanFrancisco.sh
#
# Karl V. P. B. `kvpb`
# +33 A BB BB BB BB
# local-part@domain
