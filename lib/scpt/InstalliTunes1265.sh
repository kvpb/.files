#!/usr/bin/env bash

sudo -v # 
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null & # Update the sudo timestamp until the script is over.
mkdir -p ${HOME}/Temporary && cd ${HOME}/Temporary # Make a user's temporary folder, and go to it.
curl --remote-name --location https://secure-appldnld.apple.com/itunes12/091-87821-20180912-69177170-B085-11E8-B6AB-C1D03409AD2A/iTunes12.6.5.dmg # Download the disk image of iTunes 12.6.5.
hdiutil mount -nobrowse iTunes12.6.5.dmg # Mount the disk image of iTunes 12.6.5.
cd /Volumes/iTunes # Go to the mounted disk image of iTunes 12.6.4.
sudo installer -pkg Install\ iTunes.pkg -target / # Install iTunes 12.6.5.
cd .. # Go back to the directory of mounted volumes.
hdiutil unmount /Volumes/iTunes # Unmount the disk image of iTunes 12.6.5.
cd ${HOME}/Temporary # Go back to the current user's temporary folder.
mv iTunes12.6.5.dmg ${HOME}/Downloads/ # Move the disk image of iTunes 12.6.5 to the current user's downloads folder.
cd ${HOME} && rmdir Temporary # Go to the user's home directory, and delete his temporary folder.
