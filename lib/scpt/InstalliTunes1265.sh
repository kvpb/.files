#!/usr/bin/env bash

# InstalliTunes1265.sh
# Install iTunes 12.6.5

sudo -v # Ask for an administrator password.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null & # Update sudo timestamp until the script is over.
mkdir -p ${HOME}/Temporary && cd ${HOME}/Temporary # Make a user's temporary folder, and go to it.
curl --remote-name --location https://secure-appldnld.apple.com/itunes12/091-87821-20180912-69177170-B085-11E8-B6AB-C1D03409AD2A/iTunes12.6.5.dmg # Download the iTunes 12.6.5 disk image.
hdiutil mount -nobrowse iTunes12.6.5.dmg # Mount the iTunes 12.6.5 disk image.
cd /Volumes/iTunes # Go to the mounted iTunes 12.6.4 disk image.
sudo installer -pkg Install\ iTunes.pkg -target / # Install iTunes 12.6.5.
cd .. # Go back to the mounted volumes' directory.
hdiutil unmount /Volumes/iTunes # Unmount the iTunes 12.6.5 disk image.
cd ${HOME}/Temporary # Go back to the current user's temporary folder.
mv iTunes12.6.5.dmg ${HOME}/Downloads/ # Move the iTunes 12.6.5 disk image to the user's downloads folder.
cd ${HOME} && rmdir Temporary # Go to the user's home directory, and delete his temporary folder.
