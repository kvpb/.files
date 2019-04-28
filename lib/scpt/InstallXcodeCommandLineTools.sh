#!/usr/bin/env bash

# InstallXcodeCommandLineTools.sh
# Install Xcode Command Line Tools latest compatible version

local firmwareversion=$(defaults read loginwindow SystemVersionStampAsString | cut -d. -f2- | cut -f1,1 -d'.';)
local n=$[RANDOM%9999+1]

mkdir -p /Users/${USER}/Temporary/Folder${n}
cd /Users/${USER}/Temporary/Folder${n}

#if [ "${firmwareversion}" = "4" ]; then
#	local URL=
#elif [ "${firmwareversion}" = "5" ]; then
#	local URL=
#elif [ "${firmwareversion}" = "6" ]; then
#	local URL=
if [ "${firmwareversion}" = "7" ]; then
	local URL='https://download.developer.apple.com/Developer_Tools/command_line_tools_os_x_lion_for_xcode__april_2013/xcode462_cltools_10_76938260a.dmg'
elif [ "${firmwareversion}" = "8" ]; then
	local URL='https://download.developer.apple.com/Developer_Tools/command_line_tools_os_x_mountain_lion_for_xcode__april_2014/command_line_tools_for_osx_mountain_lion_april_2014.dmg'
elif [ "${firmwareversion}" = "9" ]; then
	local URL='https://download.developer.apple.com/Developer_Tools/Command_Line_Tools_OS_X_10.9_for_Xcode__Xcode_6.2/commandlinetoolsosx10.9forxcode6.2.dmg'
elif [ "${firmwareversion}" = "10" ]; then
	local URL='https://download.developer.apple.com/Developer_Tools/Command_Line_Tools_OS_X_10.10_for_Xcode_7.2/Command_Line_Tools_OS_X_10.10_for_Xcode_7.2.dmg'
elif [ "${firmwareversion}" = "11" ]; then
	local URL='https://download.developer.apple.com/Developer_Tools/Command_Line_Tools_macOS_10.11_for_Xcode_8.2/Command_Line_Tools_macOS_10.11_for_Xcode_8.2.dmg'
elif [ "${firmwareversion}" = "12" ]; then
	local URL='https://download.developer.apple.com/Developer_Tools/Command_Line_Tools_macOS_10.12_for_Xcode_9.1/Command_Line_Tools_macOS_10.12_for_Xcode_9.1.dmg'
elif [ "${firmwareversion}" = "13" ]; then
	local URL='https://download.developer.apple.com/Developer_Tools/Command_Line_Tools_macOS_10.13_for_Xcode_10.1/Command_Line_Tools_macOS_10.13_for_Xcode_10.1.dmg'
elif [ "${firmwareversion}" = "14" ]; then
	local URL='https://download.developer.apple.com/Developer_Tools/Command_Line_Tools_macOS_10.14_for_Xcode_10.2.1.dmg/Command_Line_Tools_macOS_10.14_for_Xcode_10.2.1.dmg'
fi;
curl --remote-name --remote-header-name --location "${URL}"
hdiutil mount -nobrowse *.dmg
sudo installer -pkg /Volumes/Command\ Line\ Developer\ Tools/*.pkg -target /
hdiutil unmount /Volumes/

mv *.dmg /Users/${USER}/Downloads/
cd ../
rmdir Folder${n}
cd ../
rmdir Temporary
cd ${HOME}
