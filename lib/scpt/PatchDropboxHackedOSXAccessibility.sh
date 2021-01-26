#!/usr/bin/env bash

firmwareversion=$(defaults read loginwindow SystemVersionStampAsString | cut -d. -f2- | cut -f1,1 -d'.';);
userID=$(id -u;);
username=$(id -un;);
fullname=$(dscl . -read /Users/${USER} RealName | sed -n 's/^ //g;2p';);
bundleID=$(/usr/libexec/PlistBuddy -c 'Print CFBundleIdentifier' /Applications/Dropbox.app/Contents/Info.plist;); #=$(lsappinfo info -only bundleid Dropbox | cut -d '"' -f4)
currentworkingdirectory=$(pwd;);

[ ! -d /Applications/Dropbox.app ] && printf "Warning: Dropbox's installation is damaged. Reinstall it with InstallDropbox.sh prior to launch PatchDropboxHackedOSXAccessibility.sh in order to ensure a clean patching. Uninstall it with UninstallDropbox.sh to ensure your computer is not at risk anymore.\n" && exit 1;

sudo -v;
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

killall Dropbox >/dev/null 2>&1;

cd /Library/DropboxHelperTools/Dropbox_u${userID} >/dev/null 2>&1;
sudo chmod -sx dbaccessperm >/dev/null 2>&1;
sudo chflags uimmutable dbaccessperm >/dev/null 2>&1; #chattr +i dbaccesSPERM

#sudo sqlite3 /Library/Application\ Support/com.apple.TCC/TCC.db "DELETE FROM access WHERE client='com.getdropbox.dropbox';" #sudo sqlite3 /Library/Application\ Support/com.apple.TCC/TCC.db "UPDATE access SET allowed = '0';"
if [ ${firmwareversion} -le 10 ];
then
	sudo sqlite3 /Library/Application\ Support/com.apple.TCC/TCC.db "REPLACE INTO access VALUES('kTCCServiceAccessibility','${bundleID}',0,0,1,NULL);";
elif [ ${firmwareversion} -ge 11 ];
then
	sudo sqlite3 /Library/Application\ Support/com.apple.TCC/TCC.db "REPLACE INTO access VALUES('kTCCServiceAccessibility','${bundleID}',0,0,1,NULL,NULL);";
fi;

cd ${currentworkingdirectory};

read -r -p "Log Out ${fullname}...?, "$'\e[4my\e[0mes or \e[4mn\e[0mo?\n'"This is required for the changes to take effect. " input;
if [[ "${input}" =~ ^([yY][eE][sS]|[yY])+$ ]];
then
	sudo pkill loginwindow;
else
	:;
fi;

# PatchDropboxHackedOSXAccessibility.sh
# Patch Dropbox-Hacked OS X Accessibility
# Cf https://web.archive.org/web/20160923023858/http://www.gnu.org:80/proprietary/proprietary-back-doors.html, https://web.archive.org/web/20160811180723/http://applehelpwriter.com/2016/07/28/revealing-dropboxs-dirty-little-security-hack/#comment-27348, https://web.archive.org/web/20160909174627/https://applehelpwriter.com/2016/08/29/discovering-how-dropbox-hacks-your-mac/, https://web.archive.org/web/20140502070140/https://apple.stackexchange.com/questions/111903/allow-application-to-control-computer-assistive-devices-on-mavericks-via-termi
# 
# Karl Bertin `kvpb`
# Telephone: +33 A BB BB BB BB
# Email: local-part@domain
