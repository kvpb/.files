#!/usr/bin/env bash

#[ ! -e ${HOME}/Creative\ Cloud\ Files ] && exit

#n=$[RANDOM%99+1] && while [ -e ${HOME}/Temporary/Folder${n} ]; do n=$[RANDOM%99+1]; done;

if [ -d ${HOME}/Creative\ Cloud\ Files ]
then
	if [ -L ${HOME}/Creative\ Cloud\ Files ]
	then
		rm ${HOME}/Creative\ Cloud\ Files
	else
		if [ $(ls -A ${HOME}/Creative\ Cloud\ Files) ]
		then
			n=$[RANDOM%99+1] && while [ -e ${HOME}/Temporary/Folder${n} ]; do n=$[RANDOM%99+1]; done;
			mkdir -p ${HOME}/Temporary/Folder${n}
			mv ${HOME}/Creative\ Cloud\ Files/* ${HOME}/Temporary/Folder${n}/
			rmdir Creative\ Cloud\ Files
		else
			rmdir Creative\ Cloud\ Files
		fi
	fi
else
	exit
fi
