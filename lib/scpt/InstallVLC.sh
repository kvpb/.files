#!/usr/bin/env bash

# InstallVLC.sh
# Install VLC Media Player for Mac OS X

mkdir -p /Users/${USER}/Temporary
cd /Users/${USER}/Temporary
# Add user temporary folder, and change working directory to it.

curl --remote-name --location http://download.videolan.org/pub/videolan/vlc/3.0.0/macosx/vlc-3.0.0.dmg
hdiutil mount -nobrowse vlc-3.0.0.dmg # (i) Before version 3, VLC's DMG volume name was the DMG file's. From version 3 onwards, it's 'VLC media player'. That broke the script. I shall rewrite all these scripts to watch for a new directory in /Volumes then use it in a variable.
cp -R /Volumes/VLC\ media\ player/VLC.app /Applications/
hdiutil unmount /Volumes/VLC\ media\ player
mv vlc-3.0.0.dmg /Users/${USER}/Downloads/
# Download VLC Media Player, and install it.

cd /Users/${USER}
rmdir Temporary
# Remove user temporary folder.
