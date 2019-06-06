#!/usr/bin/env bash

# InstallrbenvHomebrew.sh
# Install rbenv for macOS with Homebrew (https://github.com/rbenv/rbenv#installation)

brew install rbenv ruby-build # Install rbenv via Homebrew. https://github.com/rbenv/rbenv#homebrew-on-macos
rbenv init # Set up rbenv in the shell. https://github.com/rbenv/rbenv#homebrew-on-macos
exec $SHELL -l # '3.  Close your Close your Terminal window and open a new one so your changes take effect.' (https://github.com/rbenv/rbenv#homebrew-on-macos)
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash # '4.  Verify that rbenv is properly set up using this rbenv-doctor script:' (https://github.com/rbenv/rbenv#homebrew-on-macos)

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile
# '2.  Add ~/.rbenv/bin to your $PATH for access to the rbenv command-line utility.', '-  For bash:' (https://github.com/rbenv/rbenv#basic-github-checkout)
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ${HOME}/.zprofile
source ${HOME}/.zprofile
# '2.  Add ~/.rbenv/bin to your $PATH for access to the rbenv command-line utility.', '-  For Zsh:' (https://github.com/rbenv/rbenv#basic-github-checkout)
