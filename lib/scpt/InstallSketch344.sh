#!/usr/bin/env bash

mkdir -p ${HOME}/Temporary # Create the current user's unofficial temporary folder.
cd ${HOME}/Temporary # Go to the current user's unofficial temporary folder.
curl --remote-name --location http://sketchapp.com/download/sketch-3.4.4.zip # Download Sketch 3.4.4.
unzip sketch-3.4.4.zip -d /Applications # Install Sketch 3.4.4.
mv sketch-3.4.4.zip ${HOME}/Downloads/ # Put the Sketch 3.4.4 zip archive to the current user's downloads folder.
cd ${HOME} # Go to the current user's home directory.
rmdir Temporary # Delete the current user's unofficial temporary folder.

# InstallSketch344.sh
# Install Sketch 3.4.4 (latest OS X 10.9 Mavericks-compatible version)
#
# Karl V. P. Bertin `kvpb`
# Telephone: +33 A BB BB BB BB
# Email: local-part@domain
