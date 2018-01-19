#!/usr/bin/env bash

cd ${HOME}

if [ -d Creative\ Cloud\ Files ]; then
	if [ -L Creative\ Cloud\ Files ]; then
		rm Creative\ Cloud\ Files
	else
		if [ $(ls -A Creative\ Cloud\ Files) ]; then
			mv Creative\ Cloud\ Files/* ${HOME}/Desktop/
			rmdir Creative\ Cloud\ Files
		else
			rmdir Creative\ Cloud\ Files
		fi
	fi
fi

if [ ! -d Creative\ Cloud\ Files ]; then
	exit
fi