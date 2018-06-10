if [ -f "${HOME}/.bashrc" ]; then source "${HOME}/.bashrc"; fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
