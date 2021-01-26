#!/usr/bin/env bash

defaults delete com.apple.Terminal "NSWindow Frame ${ProfileName}" # Reset the windows of Terminal.
defaults delete com.apple.Safari "NSWindow Frame BrowserWindowFrame" # Reset the windows of Safari.
for i in {0..99}; do defaults delete com.googlecode.iterm2 "NSWindow Frame iTerm Window ${i}"; done; # Reset the windows of iTerm2.
defaults write com.spotify.client "NSWindow Frame com.spotify.client.mainwindow" = "0 251 1030 626 0 0 1440 877 " # Set the windows of Spotify.
