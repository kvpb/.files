#!/bin/bash

mkdir ~/tmp && cd ~/tmp # Add user temporary folder and change working directory to it.

curl -L -O http://evernote.com/download/get.php?file=EvernoteMac
hdiutil mount -nobrowse Evernote*.dmg
cp -R /Volumes/Evernote/Evernote.app /Applications
hdiutil unmount /Volumes/Evernote
mv Evernote.dmg ~/Downloads
# Download and install Evernote.
