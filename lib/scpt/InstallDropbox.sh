#!/bin/bash

# InstallDropbox.sh
# Install Dropbox latest Mac version

mkdir -p /Users/${USER}/Temporary
cd /Users/${USER}/Temporary
# Add user temporary folder, and change working directory to it.

curl -L -O https://www.dropbox.com/download?plat=mac
hdiutil mount -nobrowse Dropbox*.dmg
cp -R /Volumes/Dropbox\ Installer/Dropbox.app ./ && open Dropbox.app
hdiutil unmount /Volumes/Dropbox\ Installer
mv Dropbox*.dmg /Users/${USER}/Downloads/
# Download and install Dropbox.

cd /Users/${USER}
rm -r Temporary
# Remove user temporary folder.
