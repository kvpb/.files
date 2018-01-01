#!/bin/bash

# InstallSpotify.sh
# Install Spotify latest Mac

mkdir -p /Users/${USER}/Temporary
cd /Users/${USER}/Temporary
# Add user temporary folder, and change working directory to it.

curl -L -O http://download.spotify.com/Spotify.dmg
hdiutil mount -nobrowse Spotify.dmg
cp -R /Volumes/Spotify/Spotify.app /Applications/
hdiutil unmount /Volumes/Spotify
mv Spotify.dmg /Users/${USER}/Downloads/
# Download and install Spotify.

cd /Users/${USER}
rm -r Temporary
# Remove user temporary folder.
