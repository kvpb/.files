#!/usr/bin/env zsh

sudo -v # Ask for an administrator password.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null & # Update the sudo timestamp until the script is over.

URL="https://dl.google.com/android/repository/commandlinetools-mac-9477386_latest.zip"

curl --insecure --location ${URL} --output-dir ${HOME}/Downloads/ --remote-name
# Download the archive file of the latest version of the software.

sudo unzip -o ${HOME}/Downloads/${URL##*/} -d ~/bin #-d /opt/local/bin
##for each in /opt/local/bin/cmdline-tools/*
##do
##	if [[ -x "${each}" ]]
##	then
##		sudo ln -s ${each} /opt/local/bin/${each##*/}
##	fi
##done #sudo mv -v cmdline-tools/bin/* /opt/local/bin/
#cd ..
#rm -rf cmdline-tools
# Install it.

#	InstallAndroidSDKCommand-LineTools.sh
#	Install Android SDK Command-Line Tools
#
#	Karl V. P. B. `kvpb` AKA Karl Thomas George West `ktgw`
#	+1 (DDD) DDD-DDDD
#	+33 A BB BB BB BB
#	local-part@domain
#	local-part@domain
#	https://www.linkedin.com/in/
#	https://twitter.com/ktgwkvpb
#	https://github.com/kvpb
#	https://vm.tiktok.com/ZSwAmcFh/
