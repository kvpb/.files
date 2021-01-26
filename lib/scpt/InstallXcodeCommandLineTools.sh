#!/usr/bin/env bash

systemsoftwareversion=$(defaults read loginwindow SystemVersionStampAsString | cut -d. -f2- | cut -f1,1 -d'.';);
#[ ${systemsoftwareversion} -eq 4 ] && URL=;
#[ ${systemsoftwareversion} -eq 5 ] && URL=;
#[ ${systemsoftwareversion} -eq 6 ] && URL=;
[ ${systemsoftwareversion} -eq 7 ] && URL='https://download.developer.apple.com/Developer_Tools/command_line_tools_os_x_lion_for_xcode__april_2013/xcode462_cltools_10_76938260a.dmg';
[ ${systemsoftwareversion} -eq 8 ] && URL='https://download.developer.apple.com/Developer_Tools/command_line_tools_os_x_mountain_lion_for_xcode__april_2014/command_line_tools_for_osx_mountain_lion_april_2014.dmg';
[ ${systemsoftwareversion} -eq 9 ] && URL='https://download.developer.apple.com/Developer_Tools/Command_Line_Tools_OS_X_10.9_for_Xcode__Xcode_6.2/commandlinetoolsosx10.9forxcode6.2.dmg';
[ ${systemsoftwareversion} -eq 10 ] && URL='https://download.developer.apple.com/Developer_Tools/Command_Line_Tools_OS_X_10.10_for_Xcode_7.2/Command_Line_Tools_OS_X_10.10_for_Xcode_7.2.dmg';
[ ${systemsoftwareversion} -eq 11 ] && URL='https://download.developer.apple.com/Developer_Tools/Command_Line_Tools_macOS_10.11_for_Xcode_8.2/Command_Line_Tools_macOS_10.11_for_Xcode_8.2.dmg';
[ ${systemsoftwareversion} -eq 12 ] && URL='https://download.developer.apple.com/Developer_Tools/Command_Line_Tools_macOS_10.12_for_Xcode_9.1/Command_Line_Tools_macOS_10.12_for_Xcode_9.1.dmg';
[ ${systemsoftwareversion} -eq 13 ] && URL='https://download.developer.apple.com/Developer_Tools/Command_Line_Tools_macOS_10.13_for_Xcode_10.1/Command_Line_Tools_macOS_10.13_for_Xcode_10.1.dmg';
[ ${systemsoftwareversion} -eq 14 ] && URL='https://download.developer.apple.com/Developer_Tools/Command_Line_Tools_macOS_10.14_for_Xcode_10.2.1.dmg/Command_Line_Tools_macOS_10.14_for_Xcode_10.2.1.dmg';
#[ ${systemsoftwareversion} -eq 15 ] && URL=;
n=$[RANDOM%999+1]
workingdirectory=$(pwd);

mkdir -p /Users/${USER}/Temporary/Folder${n}
cd /Users/${USER}/Temporary/Folder${n}
curl --remote-name --remote-header-name --location "${URL}"
hdiutil mount -nobrowse *.dmg
sudo installer -pkg /Volumes/Command\ Line\ Developer\ Tools/*.pkg -target /
hdiutil unmount /Volumes/Command\ Line\ Developer\ Tools
mv *.dmg /Users/${USER}/Downloads/
cd ${workingdirectory}
rmdir /Users/${USER}/Temporary/Folder${n}

# InstallXcodeCommandLineTools.sh
# Install Xcode Command Line Tools latest compatible version
# 
# Karl V. P. Bertin `kvpb`
# Telephone: +33 A BB BB BB BB
# Email: local-part@domain
