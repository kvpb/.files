#!/usr/bin/env bash

kernel=$(uname -s)
[ "${kernel}" = 'Linux' ] && systemsoftwareversion=0
[ "${kernel}" = 'Darwin' ] && systemsoftwareversion=$(defaults read loginwindow SystemVersionStampAsString | cut -d. -f2- | cut -f1,1 -d'.')
wd=$(pwd)
n=$[RANDOM%99+1]

if [ "${kernel}" = 'Darwin' -a ${systemsoftwareversion} -ge 12 ]
then
	cp -R /Applications/Utilities/Terminal.app/Contents/Resources/Fonts/* /Library/Fonts
elif [ "${kernel}" = 'Linux' -o "${kernel}" = 'Darwin' -a ${systemsoftwareversion} -lt 12 ]
then
	mkdir -p ${HOME}/tmp/dir${n} && cd ${HOME}/tmp/dir${n}
	curl --remote-name --remote-header-name --location "https://www.dropbox.com/s/rcu7hh16ayl5y6k/SFMono.tar?dl=0" #--output SFMono.tar
	if [ "${kernel}" = 'Darwin' ]
	then
		tar -xvf SFMono.tar
		#mv Fonts/*.otf /Library/Fonts/ # (i) System fonts folder: /Library/Fonts/; User fonts folder: ~/Library/Fonts/
		mv ${HOME}/tmp/dir${n}/Fonts/*.otf /Library/Fonts/
	elif [ "${kernel}" = 'Linux' ]
	then
		mkdir /usr/share/fonts/sanfrancisco
		tar -xvf SFMono.tar Fonts/*.otf -C /usr/share/fonts/opentype
	fi # assuming the user runs on a common, stock, unlocalized distro. [Now that's some kwality skreeptin. But I program for myself, and I need fast and efficient code, so if one wants to get it working, they too gotta RTFM.]
	mv SFMono.tar ${HOME}/Downloads/
	rm -r Fonts
	cd ..
	rm -r tmp${n}
	cd "${wd}"
else
	printf "InstallSFMono.sh is incompatible with this operating system.\n" #printf 'error: unsupported OS\n'
	:
fi
