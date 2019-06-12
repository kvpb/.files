#!/usr/bin/env bash

kernel=$(uname -s)
[ "${kernel}" = 'Darwin' ] && firmwareversion=$(defaults read loginwindow SystemVersionStampAsString | cut -d. -f2- | cut -f1,1 -d'.')
wd=$(pwd)
n=$[RANDOM%9999+1]

if [ "${kernel}" = 'Darwin' -a ${firmwareversion} -ge 12 ]
then
	cp -R /Applications/Utilities/Terminal.app/Contents/Resources/Fonts/* /Library/Fonts
elif [ "${kernel}" = 'Linux' -o "${kernel}" = 'Darwin' -a ${firmwareversion} -lt 12 ]
then
	mkdir -p ${HOME}/tmp/dir${n} && cd ${HOME}/tmp/dir${n}
	curl --remote-name --remote-header-name --location "https://www.dropbox.com/s/rcu7hh16ayl5y6k/SFMono.tar?dl=0" #--output SFMono.tar
	tar -xvf SFMono.tar
	#mv Fonts/*.otf /Library/Fonts/ # (i) System fonts folder: /Library/Fonts/; User fonts folder: ~/Library/Fonts/
	if [ "${kernel}" = 'Darwin' ]
	then
		mv ${HOME}/tmp/dir${n}/Fonts/*.otf /Library/Fonts/
		mv SFMono.tar ${HOME}/Downloads/
	elif [ "${kernel}" = 'Linux' ]
	then
		mv ${HOME}/tmp/dir${n}/Fonts/*.otf /usr/share/fonts/opentype/
		mv SFMono.tar ${HOME}/Downloads/
	fi # assuming the user runs on a common, stock, unlocalized distro. [Now that's some kwality skreeptin. But I program for myself, and I need fast and efficient code, so if one wants to get it working, they gotta RTFM.]
	rm -r Fonts
	cd ..
	rm -r tmp${n}
	cd "${wd}"
else
	printf "InstallSFMono.sh is incompatible with this operating system.\n" #printf 'error: unsupported OS\n'
	:
fi # [Fun fact: this script hasn't been tested yet, pretty much like most of those weren't tested before they were first used. I don't have any Ubuntu box within arm's reach, and even if I did, I'M A CRAZY LAZY FUCKO!, that's to say that I wouldn't test it anyway. Actually, there are still some macOS-exclusive scripts that I haven't launched yet, even some I updated since release. feelin' lucky? Then feel also free to report anything wrong with it, aside from my recklessness. Yep, that's the kind of crappy attitude you get used to when you've been educated in France. Yet that's just an excuse; I can't complain... But I do anyway.]
