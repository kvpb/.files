#!/bin/bash

# InstallAppZapper.sh
# Install AppZapper latest macOS Sierra

mkdir -p /Users/${USER}/Temporary # Make current user temporary folder.
cd /Users/${USER}/Temporary # Change working directory to current user's temporary folder.
# Make current user temporary folder, and change working directory to it.

#curl --remote-name --location https://appzapper.com/downloads/appzapper.dmg # Download AppZapper disk image.
#hdiutil mount -nobrowse appzapper.dmg # Mount AppZapper DMG.
#cp -R /Volumes/AppZapper/AppZapper.app /Applications/ # Install AppZapper app.
#hdiutil unmount /Volumes/AppZapper # Unmount AppZapper DMG.
#mv appzapper.dmg ~/Downloads/ # Move AppZapper DMG to current user downloads folder.
# Download AppZapper, and install it.

curl --remote-name --location https://appzapper.com/downloads/appzapper202.zip # Download AppZapper zip archive.
#unzip appzapper202.zip  # Unzip AppZapper app archive.
#mv -R AppZapper.app /Applications/ # Move AppZapper app to the system applications folder. (i) cp & mv trick?: from my recent experience with moving a directory to ~/.Trash eventually overwriting current user's .Trash, I suppose I should remove the trailing slash from the source and add it to the destination.
unzip appzapper202.zip -d /Applications # Unzip AppZapper zip archive to system applications folder.
mv appzapper*.zip /Users/${USER}/Downloads/ # Move AppZapper zip archive to current user's downloads folder.
# Download and install AppZapper.

cd /Users/${USER} # Change working directory to current user's.
rmdir Temporary # Remove current user's temporary folder.
# Remove user temporary folder.
