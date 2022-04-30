#!/usr/bin/env sh

sudo -v
while true
do
	sudo -n true
	sleep 60
	kill -0 ${$} || exit
done 2>/dev/null &
sudo port -q selfupdate
for s in  bash zsh  python310 python27 ruby nodejs16 nodejs14 octave jq  xhyve  openssh openssl mosh  blueutil mas  git  curl wget  tmux  vim  ffmpeg  fswatch htop tree thefuck  coreutils findutils grep  #bash zsh  rust python27 python310 ruby nodejs14 nodejs16 octave jq  xhyve  openssh openssl mosh  blueutil mas  git  curl wget  tmux  vim  ffmpeg  fswatch htop tree thefuck  coreutils findutils grep
do
	#sudo port -f uninstall "${s}"
	sudo port -q install "${s}"
done
sudo port -q select --set python python310
sudo port -q select --set python3 python310
sudo port -q select --set python2 python27
sudo port -q select --set ruby ruby18
sudo port -q load openssh
#sudo port -N selfupdate && sudo port -N upgrade outdated; sudo port -N reclaim
exit 0
