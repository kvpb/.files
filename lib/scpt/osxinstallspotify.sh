#!/bin/bash

mkdir ~/tmp && cd ~/tmp # Add user temporary folder and change working directory to it.

# Installing Spotify
curl -L -O http://download.spotify.com/Spotify.dmg
hdiutil mount -nobrowse Spotify.dmg
cp -R /Volumes/Spotify/Spotify.app /Applications
hdiutil unmount /Volumes/Spotify
mv Spotify.dmg ~/Downloads
# Download and install Spotify.
