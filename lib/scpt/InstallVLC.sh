#!/usr/bin/env bash

# InstallVLC.sh
# Install VLC 2.2.8 for Mac OS X

mkdir -p /Users/${USER}/Temporary
cd /Users/${USER}/Temporary
# Add user temporary folder, and change working directory to it.

curl --remote-name --location https://get.videolan.org/vlc/last/macosx/vlc-2.2.8.dmg
hdiutil mount -nobrowse vlc-2.2.8.dmg
cp -R /Volumes/vlc-2.2.8/VLC.app /Applications/
hdiutil unmount /Volumes/vlc-2.2.8
mv vlc-2.2.8.dmg /Users/${USER}/Downloads/
# Download VLC 2.2.8, and install it.

cd /Users/${USER}
rmdir Temporary
# Remove user temporary folder.
