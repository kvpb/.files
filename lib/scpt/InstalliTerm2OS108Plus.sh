#!/usr/bin/env bash

mkdir -p ~/Temporary # Make current user temporary folder.
cd ~/Temporary # Change working directory to current user's temporary folder.
curl --remote-name --location https://iterm2.com/downloads/stable/iTerm2-3_0_15.zip # Download AppZapper zip archive.
unzip iTerm2-3_0_15.zip -d /Applications # Unzip AppZapper zip archive to system applications folder.
mv iTerm2-*.zip ~/Downloads/ # Move AppZapper zip archive to current user's downloads folder.
cd ~ # Change working directory to current user's.
rmdir Temporary # Remove current user's temporary folder.

# InstalliTerm2OS108Plus.sh
# Install iTerm2 3.0.15 (OS 10.8+) latest OS X 10.9 Mavericks-compatible version
# 
# Karl 'Kabe' Bertin `kvpb`
# Telephone: +33 A BB BB BB BB
# Email: local-part@domain
# LinkedIn: https://www.linkedin.com/in/karlbertin
# Facebook: 
# Instagram: https://www.instagram.com/karlbertin/
# Snapchat: https://www.snapchat.com/add/karlbertin
