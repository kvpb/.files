#!/usr/bin/env sh

sudo -v
while true
do
	sudo -n true
	sleep 60
	kill -0 ${$} || exit
done 2>/dev/null &
sudo port -q selfupdate
for s in \
	\
	bash \
	zsh \
	\
	`#rust` \
	go \
	python312 \
	python27 \
	`#ruby33` \
	nodejs21 \
	octave \
	jq \
	sqlite3 \
	\
	`#ruby-build` \
	`#rbenv` \
	`#pyenv` \
	`#nvm` \
	\
	xhyve \
	\
	openssh \
	openssl \
	mosh \
	\
	blueutil \
	mas \
	\
	git \
	\
	curl \
	wget \
	\
	vim \
	micro \
	\
	tmux \
	\
	unrar \
	\
	ffmpeg \
	\
	fswatch \
	htop \
	tree \
	thefuck \
	\
	coreutils \
	findutils \
	grep \
	\
	cmus
	\
do
	#sudo port -f uninstall "${s}"
	sudo port -q install "${s}"
done
sudo port -q select --set python python310
sudo port -q select --set python3 python310
sudo port -q select --set python2 python27
#sudo port -q select --set ruby ruby33
sudo port -q load openssh
#sudo port -N selfupdate && sudo port -N upgrade outdated; sudo port -N reclaim
exit 0
