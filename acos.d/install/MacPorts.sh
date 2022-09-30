#!/usr/bin/env zsh

curl -O https://github.com/macports/macports-base/releases/download/v2.7.2/MacPorts-2.7.2.tar.bz2
tar xjvf MacPorts-2.7.2.tar.bz2
# '  1.  Download and extract the MacPorts 2.7.1 tarball. Either do so using your browser and the Finder, or use the given commands in a terminal window.'
cd MacPorts-2.7.2
./configure && make && sudo make install
# '  2.  Afterwards, perform the commands shown in the terminal window. If you wish to use a path other than /opt/local, follow the instructions for installing multiple copies of MacPorts instead.'
cd ../
rm -rf MacPorts-2.7.2*
# '      Optionally:'
# Download and install MacPorts. https://guide.macports.org/#installing.macports.source
