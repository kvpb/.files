#!/usr/bin/env bash

mkdir -p /Users/${HOME}/Temporary
cd /Users/${HOME}/Temporary
curl --location --remote-name https://www.dropbox.com/download?plat=mac
hdiutil mount -nobrowse Dropbox*.dmg
cp -R /Volumes/Dropbox\ Installer/Dropbox.app ./ && open Dropbox.app
hdiutil unmount /Volumes/Dropbox\ Installer
#mv Dropbox*.dmg /Users/${USER}/Downloads/
mv Dropbox*.dmg ${HOME}/.Trash/
cd ${HOME}
rmdir Temporary
exit 0

#	InstallDropbox.sh
#
#	Karl V. P. B. `kvpb`
#	+1 (DDD) DDD-DDDD
#	local-part@domain
#	https://www.linkedin.com/in/
#	https://twitter.com/
#	https://github.com/kvpb
#	https://vm.tiktok.com//
