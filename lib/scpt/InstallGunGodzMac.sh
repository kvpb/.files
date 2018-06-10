#!/usr/bin/env bash

# InstallGunGodzMac.sh
# Install Gun Godz Mac

# Because RAR will be required...
if [ -f "/usr/local/bin/unrar" ];                        #
then                                                     #
	if [ -x "/usr/local/bin/unrar" ];                    # If RAR is installed...
	then                                                 #
		echo "Installing Gun Godz..."                    #
	fi                                                   # Then say Gun Godz is being installed.
else                                                     # Else, if RAR is not installed...
	echo "Installing RAR 5.50 for Mac OS X..."           #
	sh ${HOME}/.files/lib/scpt/InstallRAR550forMacOSX.sh #
fi                                                       # Then say it is being installed, and install it.

mkdir -p ${HOME}/Temporary # Create the current user's temporary folder.
cd ${HOME}/Temporary # Go to the current user's temporary folder.

curl --remote-name --remote-header-name --location http://vlambeer.com/downloads/special/GUNGODZ.rar # Download the Gun Godz Roshal archive.
unrar x GUNGODZ.rar ./ && unzip ./Gun\ Godz/GUN\ GODZ\ OSX.zip -d /Applications # Unarchive the Gun Godz OS X archive to the system applications' folder.
rm -rf Gun\ Gods && mv GUNGODZ.rar ${HOME}/Downloads/ # Clean up, and put the Gun Godz RAR into the current user's downloads folder.

cd ${HOME} # Go to the current user's home folder.
rmdir Temporary # Delete the current user's unofficial temporary folder.
