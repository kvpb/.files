#!/usr/bin/env bash

# Installdbxcli.sh
# Install dbxcli v2.1.0 Mac OS X pre-compiled binaries
# 
# On 2018.1.1 at 17:30:0, Dropbox recommends to place the binary in ~/bin (/Users/${USER}/bin/). https://web.archive.org/web/20180101163836/https://github.com/dropbox/dbxcli
# 	On macOS, like apps should be installed in /Applications, it is recommended to install 'command-line app-grade' binaries in /usr/local/bin. https://web.archive.org/web/20180101190051/https://developer.apple.com/library/content/documentation/FileManagement/Conceptual/FileSystemProgrammingGuide/FileSystemOverview/FileSystemOverview.html
# 	For a single-user, I would recommend placing the binary in ~/Dropbox/bin --- why have this without Dropbox installed?

#mkdir ~/bin
#cd ~/bin
#export PATH=$PATH:$HOME/bin
#wget https://github.com/dropbox/dbxcli/releases/download/v2.0.9/dbxcli-darwin-amd64
#mv dbxcli-darwin-amd64 dbxcli
#chmod +x dbxcli
# Dropbox's 2018.1.1 19:0:0 'Mac OS X installation of pre-compiled binaries' (i) It's fucky. https://web.archive.org/web/20180101183915/https://github.com/dropbox/dbxcli/issues/87

mkdir -p /Users/${USER}/Temporary
cd /Users/${USER}/Temporary
#curl --remote-name https://github.com/dropbox/dbxcli/releases/download/v2.1.0/dbxcli-darwin-amd64
#mv dbxcli-darwin-amd64 dbxcli
curl --remote-header-name --location --header "Accept: application/octet-stream" "https://github.com/dropbox/dbxcli/releases/download/v2.1.0/dbxcli-darwin-amd64" --output "dbxcli"
chmod +x dbxcli
mv dbxcli /usr/local/bin/
cd /Users/${USER}
rmdir Temporary
# Download dbxcli, and install it. (i) It's alrighty. I just Kabe'd this shit.
