if [ -f /etc/bashrc ];
then
	source /etc/bashrc;
fi;

#set -o vi
shopt -s histappend

source ${HOME}/.exports
source ${HOME}/.functions
source ${HOME}/.aliases

bind -r '\C-s'
stty -ixon
