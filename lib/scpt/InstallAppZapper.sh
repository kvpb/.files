#!/bin/bash

# InstallAppZapper.sh
# Install AppZapper latest macOS Sierra

mkdir -p /Users/${USER}/Temporary
cd /Users/${USER}/Temporary
# Add user temporary folder, and change working directory to it.

#curl --remote-name --location https://appzapper.com/downloads/appzapper.dmg
#hdiutil mount -nobrowse appzapper.dmg
#cp -R /Volumes/AppZapper/AppZapper.app /Applications/
#hdiutil unmount /Volumes/AppZapper
#mv appzapper.dmg ~/Downloads/

#unzip appzapper202.zip
#mv -R AppZapper.app /Applications/ # (i) cp & mv trick?: from my recent experience with moving a directory to ~/.Trash eventually overwriting current user's .Trash, I suppose I should remove the trailing slash from the source and add it to the destination.

curl --remote-name --location https://appzapper.com/downloads/appzapper202.zip
unzip appzapper202.zip -d /Applications
mv appzapper*.zip /Users/${USER}/Downloads/
# Download and install Dropbox.

cd /Users/${USER}
rmdir Temporary
# Remove user temporary folder.
