#!/usr/bin/env sh

sudo -v
while true;
do
	sudo -n true;
	sleep 60;
	kill -0 "$$" || exit;
done 2>/dev/null &

sudo port selfupdate
for i in  bash zsh  ruby nodejs14 nodejs16 octave  xhyve  openssh openssl mosh  blueutil mas  git  curl wget  tmux  vim  ffmpeg  fswatch htop tree thefuck  ;
do
	sudo port install ${i}
done
exit 0
