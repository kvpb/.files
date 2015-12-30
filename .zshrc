# Aliases

# alias git='/usr/local/git/bin/git' # Get fucked, Apple. (i) Requires Git for Mac OS X from the official Git website (http://git-scm.com/).

alias la='ls -ap' # List directory contents including directory entries whose names begin with a dot ('.'). [Note : The -p option might be useless since I wrote another alias for ls to extend its behavior the way I want it that includes the option — still, if the other alias is disabled, it wouldn't work anymore.]
# alias lh='ls -a | grep '\''^\.'\' # List directory hidden files only.
alias lh='ls -d .*' # List directory hidden files only.
alias ls='pwd; ls -lp' # Print working directory then list directory contents in long format writing a slash (`/') after each filename if that file is a directory. 

# 

HISTSIZE=LONG_MAX
SAVEHIST=LONG_MAX
HISTFILE='~/.files/.shellhistory'
export HISTFILE SAVEHIST
setopt APPEND_HISTORY EXTENDED_HISTORY INC_APPEND_HISTORY
