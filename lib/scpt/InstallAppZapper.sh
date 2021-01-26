#!/usr/bin/env bash

mkdir -p /Users/${USER}/Temporary # Make the current user's temporary folder.
cd /Users/${USER}/Temporary # Change the working directory to the current user's temporary folder.
# Make the current user's temporary folder, and change the working directory to it.

#curl --remote-name --location https://appzapper.com/downloads/appzapper.dmg # Download the AppZapper disk image.
#hdiutil mount -nobrowse appzapper.dmg # Mount the AppZapper DMG.
#cp -R /Volumes/AppZapper/AppZapper.app /Applications/ # Install the AppZapper app.
#hdiutil unmount /Volumes/AppZapper # Unmount the AppZapper DMG.
#mv appzapper.dmg ~/Downloads/ # Move the AppZapper DMG to the current user's downloads folder.
# Download AppZapper, and install it.

curl --remote-name --location https://appzapper.com/downloads/appzapper202.zip # Download the AppZapper zip archive.
#unzip appzapper202.zip  # Unzip the AppZapper app archive.
#mv -R AppZapper.app /Applications/ # Move the AppZapper app to the system applications folder. (i) cp & mv trick?: from my recent experience with moving a directory to ~/.Trash eventually overwriting current user's .Trash, I suppose I should remove the trailing slash from the source and add it to the destination.
unzip appzapper202.zip -d /Applications # Unzip the AppZapper zip archive to the system applications folder.
mv appzapper*.zip /Users/${USER}/Downloads/ # Move the AppZapper zip archive to the current user's downloads folder.
# Download and install AppZapper.

cd /Users/${USER} # Change the working directory to the current user's.
rmdir Temporary # Remove the current user's temporary folder.
# Remove the user's temporary folder.
