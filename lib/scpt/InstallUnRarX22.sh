#!/usr/bin/env bash

mkdir -p ${HOME}/Temporary # Write the current user's unofficial temporary folder.
cd ${HOME}/Temporary # Set the current working directory to the current user's unofficial temporary folder.
curl --remote-name --location --insecure https://web.archive.org/web/20060814154224/http://www.unrarx.com/files/UnRarX_2.2.zip # Download the UnRARX zip archive.
unzip UnRarX_2.2.zip -d /Applications # Unzip the UnRARX zip archive to the system applications' directory.
mv -v UnRarX_2.2.zip ${HOME}/Downloads/ # Move the UnRARX zip archive to the current user's downloads folder.
cd ${HOME} # Set the current working directory back to the current user's home folder.
rmdir Temporary # Delete the current user's unofficial temporary folder.
