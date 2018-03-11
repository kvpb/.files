#!/usr/bin/env bash

# InstallAndroidSDKPlatform-Tools.sh
# Install Android SDK Platform-Tools latest Mac

mkdir -p ~/Temporary # Make the current user's temporary folder.
cd ~/Temporary # Change the working directory to the current user's temporary folder.
# Make current user temporary folder, and change working directory to it.

curl --remote-name --location https://dl.google.com/android/repository/platform-tools-latest-darwin.zip # Download the Android SDK Platform-Tools zip archive.
#mkdir -p ${HOME}/Library/Android/sdk/{,platform-}tools # Make a default installation's directories.
mkdir -p ~/Library/Android/sdk # Make a default installation's directories.
unzip platform-tools-latest-darwin.zip -d ~/Library/Android/sdk # Unzip the Android SDK Platform-Tools zip archive to the current user's default installation folder.
echo 'export PATH="${HOME}/Library/Android/sdk/tools:${HOME}/Library/Android/sdk/platform-tools:${PATH}"' >> ~/.bash_profile # 

mv platform-tools-latest-darwin.zip ~/Downloads/ # Move the Android SDK Platform-Tools zip archive to the current user's downloads folder.
# Download and install Android SDK Platform-Tools.

cd ~ # Change the working directory to the current user's home folder.
rmdir Temporary # Remove the current user's temporary folder.
# Remove the user's temporary folder.
