#!/usr/bin/env bash

defaults delete com.apple.Terminal "NSWindow Frame ${ProfileName}" # Reset the windows of Terminal.

for each in \
	"NSWindow Frame Compose Window" \
	"NSWindow Frame Main Window Preview Pane Vertical" \
	"NSWindow Frame NSFontPanel" \
	"NSWindow Frame NSNavPanelAutosaveName" \
	"NSWindow Frame NSSpellCheckerSubstitutionsPanel2" \
	"NSWindow Frame SetupAssistant" \
	"NSWindow Frame Torn Off Window"
do
	defaults delete com.apple.mail "${each}"
done
# Reset the windows of Mail.


defaults delete com.apple.Safari "NSWindow Frame BrowserWindowFrame" # Reset the windows of Safari.

for i in {0..99}; do defaults delete com.googlecode.iterm2 "NSWindow Frame iTerm Window ${i}"; done; # Reset the windows of iTerm2.

defaults write com.spotify.client "NSWindow Frame com.spotify.client.mainwindow" = "0 251 1030 626 0 0 1440 877 " # Set the windows of Spotify.

exit 0

#	ResetmacOSWindows.sh
#
#	Karl V. P. B. `kvpb`
#	+1 (DDD) DDD-DDDD
#	local-part@domain
#	https://www.linkedin.com/in/
#	https://twitter.com/
#	https://github.com/kvpb
#	https://vm.tiktok.com//
