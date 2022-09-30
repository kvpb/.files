#!/usr/bin/env zsh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/kvpb/.bash_profile
eval "$(/opt/homebrew/bin/brew shellenv)"
# Download and install Homebrew. https://brew.sh/
