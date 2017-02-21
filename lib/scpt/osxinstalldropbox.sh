#!/bin/bash

mkdir ~/tmp && cd ~/tmp # Add user temporary folder and change working directory to it.

curl -L -O https://www.dropbox.com/download?plat=mac
hdiutil mount -nobrowse Dropbox*.dmg
cp -R /Volumes/Dropbox\ Installer/Dropbox.app . && open Dropbox.app
hdiutil unmount /Volumes/Dropbox\ Installer
mv Dropbox*.dmg ~/Downloads
# Download and install Dropbox.
