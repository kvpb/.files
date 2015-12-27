# Aliases

# alias lh='ls -a | grep '\''^\.'\' # List directory hidden files only.
alias lh='ls -d .*' # List directory hidden files only.
alias ls='pwd; ls -lp' # Return working directory then list directory contents in long format writing a slash (`/') after each filename if that file is a directory. 

# 

HISTSIZE=LONG_MAX
SAVEHIST=LONG_MAX
HISTFILE='~/.files/.shellhistory'
setopt APPEND_HISTORY EXTENDED_HISTORY INC_APPEND_HISTORY
