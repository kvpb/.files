#!/bin/bash

# InstallSpotify.sh
# Install Spotify latest Mac

mkdir -p /Users/${USER}/Temporary
cd /Users/${USER}/Temporary
# Add user temporary folder, and change working directory to it.

curl --remote-name --location http://download.spotify.com/Spotify.dmg # `--remote-name --location`, `-O -L` or `-OL`... But it's a shell script so let's get verbose. (i) 'Short version options that don't need any additional values can be used immediately next to each other, like for example you can specify all the options -O, -L and -v at once as -OLv.' (cURL manual) https://web.archive.org/web/20180101231613/https://curl.haxx.se/docs/manpage.html
hdiutil mount -nobrowse Spotify.dmg
cp -R /Volumes/Spotify/Spotify.app /Applications/
hdiutil unmount /Volumes/Spotify
mv Spotify.dmg /Users/${USER}/Downloads/
# Download and install Spotify.

cd /Users/${USER}
rmdir Temporary
# Remove user temporary folder.
