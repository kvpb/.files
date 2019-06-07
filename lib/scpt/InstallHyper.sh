#!/usr/bin/env bash

mkdir -p ${HOME}/Temporary # Make the current user's temporary folder.
cd ${HOME}/Temporary # Change the working directory to the current user's temporary folder.
# Make the current user's temporary folder, and change the working directory to it.

curl --silent --location https://releases.hyper.is/download/mac --output hyper-latest-mac.zip # Download the Hyper zip archive.
unzip hyper-latest-mac.zip -d /Applications # Unzip the Hyper zip archive to the system applications folder.
mv hyper-latest-mac.zip ~/Downloads/ # Move the Hyper zip archive to the current user's downloads folder.
# Download and install Hyper.

cd ${HOME} # Change the working directory to the current user's.
rmdir Temporary # Remove the current user's temporary folder.
# Remove the user temporary folder.
