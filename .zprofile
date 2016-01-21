# emulate sh
# . ~/.profile
# emulate zsh
# Note : I'd like to chain shells' profile and runcom files. For this, I need to call sh's in bash's in zsh's so only the shells' exclusive features are set in their respective configuration files. It would keep my stuff as ordered and backwards-compatible as possible.

source ~/.files/.zshrc
export PATH=/Users/revoltxs/.files/:$PATH
