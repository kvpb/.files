#!/usr/bin/env bash

kernel=$(uname -s) # To-do: Write conditional statements in Mac-only scripts to prevent their execution on any other OS than macOS, protecting from potential damage.
[ "${kernel}" = 'Darwin' ] && firmwareversion=$(defaults read loginwindow SystemVersionStampAsString | cut -d. -f2- | cut -f1,1 -d'.')
workingdirectory=$(pwd)
n=$[RANDOM%9999+1]

mkdir -p /Users/${USER}/Temporary/Folder${n}
cd /Users/${USER}/Temporary/Folder${n}
if [ ${firmwareversion} -eq 5 ]
then
	curl --remote-name https://dl.bintray.com/xquartz/legacy-downloads/Leopard/X11-2.6.3.dmg
	hdiutil mount -nobrowse X11-2.6.3.dmg
	sudo installer -pkg /Volumes/X11-2.6.3/X11.pkg -target /
	hdiutil unmount /Volumes/X11-2.6.3
	mv X11-2.6.3.dmg /Users/${USER}/Downloads/
elif [ ${firmwareversion} -ge 6 ]
then
	curl --remote-name https://dl.bintray.com/xquartz/downloads/XQuartz-2.7.11.dmg
	hdiutil mount -nobrowse XQuartz-2.7.11.dmg
	sudo installer -pkg /Volumes/XQuartz-2.7.11/XQuartz.pkg -target /
	hdiutil unmount /Volumes/XQuartz-2.7.11
	mv XQuartz-2.7.11.dmg /Users/${USER}/Downloads/
fi
cd ${workingdirectory}
rmdir /Users/${USER}/Temporary/Folder${n}
