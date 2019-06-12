#!/usr/bin/env bash

kernel=$(uname -s)
[ "${kernel}" = 'Darwin' ] && firmwareversion=$(defaults read loginwindow SystemVersionStampAsString | cut -d. -f2- | cut -f1,1 -d'.')
workingdirectory=$(pwd)
n=$[RANDOM%9999+1]

if [ "${kernel}" = 'Darwin' ]
then
	if	[ -d /Applications/Utilities/XQuartz.app ]
	then
		printf 'Installing Inkscape...\n'
		:
	else
		printf 'Installing XQuartz...\n'
		sh ${HOME}/.files/lib/scpt/InstallXQuartz.sh
		printf 'Installing Inkscape...\n'
		:
	fi

	if [ ! -d ${HOME}/Temporary -o ! -d ${HOME}/Temporary/Folder${n} ]
	then
		mkdir -p ${HOME}/Temporary/Folder${n}
	else
		:
	fi

	if [ ${firmwareversion} -lt 7 ]
	then
		printf 'Error: Software Incompatibility\n'
		:
	elif [ ${firmwareversion} -ge 7 ]
	then
		cd ${HOME}/Temporary/Folder${n} && curl --remote-name https://inkscape.org/gallery/item/11269/Inkscape-0.92.2-1-x11-10.7-x86_64.dmg && cd ${workingdirectory}
		hdiutil mount -nobrowse "${HOME}/Downloads/Inkscape-0.92.2-1-x11-10.7-x86_64.dmg"
		cp -R /Volumes/Inkscape/Inkscape.app /Applications/
		hdiutil unmount /Volumes/Inkscape
		cd ${HOME}/Temporary/Folder${n} && mv Inkscape-0.92.2-1-x11-10.7-x86_64.dmg ${HOME}/Downloads/ && cd ${workingdirectory}
		:
	fi

	if [ -z "$(ls -A ${HOME}/Temporary/Folder${n})" ]
	then
		cd ${HOME}/Temporary && mv Folder${n} ${HOME}/.Trash/ && cd ${workingdirectory}
		open -R ${HOME}/.Trash/Folder${n}
		:
	else #elif [ ! -z "$(ls -A ${HOME}/Temporary/Folder${n})" ]
		cd ${HOME}/Temporary && rmdir Folder${n} && cd ${workingdirectory}
		:
	fi
#elif [ "${kernel}" = 'Linux' ]
#then
#	
else
	printf 'Error: Software Incompatibility\n'
	exit 1
fi

printf 'Inkscape has been installed.\n'
