shopt -s histappend

source ${HOME}/.exports
source ${HOME}/.functions
source ${HOME}/.aliases

bind -r '\C-s'
stty -ixon

date | grep -C6 --color "\b$(date +%e)\b"; cal | sed -n '1!p' | grep -C6 --color "\b$(date +%e)\b"
