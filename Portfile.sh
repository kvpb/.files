#!/usr/bin/env sh

sudo -v
while true;
do
	sudo -n true;
	sleep 60;
	kill -0 "$$" || exit;
done 2>/dev/null &

sudo port selfupdate
for i in  bash zsh  ruby nodejs14 nodejs16 octave  xhyve  openssh openssl mosh  blueutil mas  git  curl wget  tmux  vim  ffmpeg  fswatch htop tree thefuck  coreutils findutils grep;
do
	sudo port install ${i}
done

sudo port select --set python2 python27
sudo port select --set python3 python39
sudo port load openssh

exit 0
