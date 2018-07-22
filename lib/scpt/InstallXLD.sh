#!/usr/bin/env bash

# InstallXLD.sh
# Install XLD

mkdir -p ${HOME}/Temporary
cd ${HOME}/Temporary
# Create the current user's unofficial temporary folder, and change the working directory to it.

curl --remote-name --location http://tmkk.undo.jp/xld/xld-20170729.dmg
hdiutil mount -nobrowse xld-20170729.dmg
cp -R /Volumes/XLD\ 20170729/XLD.app /Applications/
cp -R /Volumes/XLD\ 20170729/CLI/xld /usr/local/bin/
hdiutil unmount /Volumes/XLD\ *
mv xld-20170729.dmg ${HOME}/Downloads/
# Download XLD, and install it.

cd ${HOME}
rmdir Temporary
# Delete the current user's unofficial temporary folder.
