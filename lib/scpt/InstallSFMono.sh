#!/usr/bin/env bash

# InstallSFMono.sh
# Install SF Mono Mac

mkdir -p ${HOME}/Temporary
cd ${HOME}/Temporary
curl --remote-name --remote-header-name --location "https://www.dropbox.com/s/rcu7hh16ayl5y6k/SFMono.tar?dl=0" #--output SFMono.tar
tar -xvf SFMono.tar
#mv Fonts/*.otf /Library/Fonts/ # (i) System fonts folder: /Library/Fonts/; User fonts folder: ~/Library/Fonts/
mv ${HOME}/Temporary/Fonts/*.otf /Library/Fonts/
mv SFMono.tar ~/Downloads/
rm -r Fonts
cd ..
rm -r Temporary
# Download SF Mono, and install it.
