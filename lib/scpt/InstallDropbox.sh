#!/usr/bin/env bash

# InstallDropbox.sh
# Install Dropbox latest Mac version

mkdir -p /Users/${USER}/Temporary
cd /Users/${USER}/Temporary
# Add user temporary folder, and change working directory to it.

curl --location --remote-name https://www.dropbox.com/download?plat=mac
hdiutil mount -nobrowse Dropbox*.dmg
cp -R /Volumes/Dropbox\ Installer/Dropbox.app ./ && open Dropbox.app
hdiutil unmount /Volumes/Dropbox\ Installer
#mv Dropbox*.dmg /Users/${USER}/Downloads/
mv Dropbox*.dmg /Users/${USER}/.Trash/
# Download and install Dropbox.

cd /Users/${USER}
rmdir Temporary
# Remove user temporary folder.
