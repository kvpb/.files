#!/usr/bin/env bash

cd ${HOME}
mkdir Temporary
cd Temporary
curl --remote-name --remote-header-name --location --silent http://supercratebox.com/download/osx.zip
unzip osx.zip -d /Applications
tar -c -f "Super Crate Box OS X.tar" osx.zip
mv "Super Crate Box OS X.tar" ../Downloads/
rm osx.zip
cd ..
rmdir Temporary
exit 0

#	InstallSuperCrateBox.sh
#
#	Karl V. P. B. `kvpb`
#	+1 (DDD) DDD-DDDD
#	local-part@domain
#	https://www.linkedin.com/in/
#	https://twitter.com/
#	https://github.com/kvpb
#	https://vm.tiktok.com//
