#!/usr/bin/env bash

# InstallGitforMac.sh
# Install Git for Mac latest

mkdir -p /Users/${USER}/Temporary
cd /Users/${USER}/Temporary
curl --remote-header-name --location https://sourceforge.net/projects/git-osx-installer/files/latest --output git-latest-osx-installer.dmg
hdiutil mount -nobrowse git-latest-osx-installer.dmg
sudo installer -pkg /Volumes/Git\ *\ Intel\ Universal/git-*-intel-universal-*.pkg -target /
hdiutil unmount /Volumes/Git\ *\ Intel\ Universal
mv git-latest-osx-installer.dmg ~/Downloads/
cd /Users/${USER}
rmdir Temporary
# Download Git for Mac latest, and install it.
