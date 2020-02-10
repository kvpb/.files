if [ -f /etc/bashrc ];
then
	source /etc/bashrc;
fi;

#set -o vi
shopt -s histappend

source ${HOME}/.exports
#source ${HOME}/.bash_exports
source ${HOME}/.functions
#source ${HOME}/.bash_functions
source ${HOME}/.aliases
#source ${HOME}/.bash_aliases

bind -r '\C-s'
stty -ixon
