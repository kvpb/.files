setopt EXTENDED_HISTORY
#setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
#setopt HIST_IGNORE_ALL_DUPS
#setopt HIST_IGNORE_DUPS
#setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

#source ${HOME}/.exports
source ${HOME}/.functions
source ${HOME}/.aliases

export HISTSIZE=32767
export HISTFILESIZE=${HISTSIZE}
export HISTFILE=${HOME}/.zsh_history

date | grep -C6 --color "\b$(date +%e)\b"; cal | sed -n '1!p' | grep -C6 --color "\b$(date +%e)\b"
