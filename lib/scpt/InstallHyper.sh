#!/usr/bin/env bash

# InstallHyper.sh
# Install Hyper Mac latest

mkdir -p ~/Temporary # Make current user temporary folder.
cd ~/Temporary # Change working directory to current user's temporary folder.
# Make current user temporary folder, and change working directory to it.

curl --silent --location https://releases.hyper.is/download/mac --output hyper-latest-mac.zip # Download Hyper zip archive.
unzip hyper-latest-mac.zip -d /Applications # Unzip Hyper zip archive to system applications folder.
mv hyper-latest-mac.zip ~/Downloads/ # Move Hyper zip archive to current user's downloads folder.
# Download and install Hyper.

cd ~ # Change working directory to current user's.
rmdir Temporary # Remove current user's temporary folder.
# Remove user temporary folder.
