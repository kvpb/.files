#!/usr/bin/env bash

defaults delete com.apple.Terminal "NSWindow Frame ${ProfileName}" # Reset the Terminal windows.
defaults delete com.apple.Safari "NSWindow Frame BrowserWindowFrame" # Reset the Safari windows.
defaults write com.spotify.client "NSWindow Frame com.spotify.client.mainwindow" = "0 251 1030 626 0 0 1440 877 " # Set the Spotify windows.
