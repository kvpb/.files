#!/usr/bin/env bash

# InstallSoulver.sh
# Install Soulver latest version

mkdir -p ${HOME}/Temporary # Make the current user's temporary folder.
cd ${HOME}/Temporary # Change the working directory to the current user's temporary folder.
curl --remote-name --remote-header-name --location "http://www.acqualia.com/files/download.php?product=soulver" # Download the Soulver zip archive.
unzip soulver.zip -d /Applications # Unzip the Soulver zip archive to system applications folder.
mv soulver.zip ${HOME}/Downloads/ # Move the Soulver zip archive to current user's downloads folder.
cd ${HOME} # Change the working directory to the current user's home folder.
rmdir Temporary # Remove the current user's temporary folder.
