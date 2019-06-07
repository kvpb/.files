#!/usr/bin/env bash

mkdir -p ${HOME}/Temporary
cd ${HOME}/Temporary
curl --remote-name --location https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
hdiutil mount -nobrowse googlechrome.dmg
cp -R /Volumes/Google\ Chrome/Google\ Chrome.app /Applications/
hdiutil unmount /Volumes/Google\ Chrome
mv googlechrome.dmg ${HOME}/Downloads/
cd ..
rmdir Temporary
