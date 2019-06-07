#!/usr/bin/env bash

mkdir -p ${HOME}/Temporary # Write the current user's unofficial temporary folder.
cd ${HOME}/Temporary # Set the current working directory to the current user's unofficial temporary folder.
curl --remote-name --location --insecure https://www.rarlab.com/rar/rarosx-5.5.0.tar.gz # Download the RAR 5.5.0 GNU zip archive.
tar --extract --verbose --directory /usr/local/bin --strip-components 1 --file=rarosx-5.5.0.tar.gz rar/{,un}rar # Unzip the RAR 5.5.0 GNU zip archive to the user binaries directory. (i) `tar -xzvCf rarosx-*.tar.gz rar/{,un}rar /usr/local/bin` fails because tar's -f, --file option must be the last one and directly followed by the archive file, and specifying a directory before the file doesn't work neither. [Seriously, I should RTFM someday.]
mv -v rarosx-5.5.0.tar.gz ${HOME}/Downloads/ # Move the RAR 5.5.0 GNU zip archive to the current user's downloads folder.
cd ${HOME} # Set the current working directory back to the current user's home folder.
rmdir Temporary # Delete the current user's unofficial temporary folder.
