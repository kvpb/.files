#!/usr/bin/env bash

mkdir -p ~/Temporary # Make current user temporary folder.
cd ~/Temporary # Change working directory to current user's temporary folder.
curl --remote-name --location https://iterm2.com/downloads/stable/iTerm2-3_0_15.zip # Download AppZapper zip archive.
unzip iTerm2-3_0_15.zip -d /Applications # Unzip AppZapper zip archive to system applications folder.
mv iTerm2-*.zip ~/Downloads/ # Move AppZapper zip archive to current user's downloads folder.
cd ~ # Change working directory to current user's.
rmdir Temporary # Remove current user's temporary folder.
exit 0

#	(Install)iTerm2.sh
#	Install iTerm2
#
#	Karl V. P. B. `kvpb`	Karl Thomas George West `ktgw`
#	+33 A BB BB BB BB		+1 (DDD) DDD-DDDD
#	local-part@domain		local-part@domain
#	https://x.com/ktgwkvpb
#	https://github.com/kvpb
