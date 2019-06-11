#!/usr/bin/env bash

firmwareversion=$(defaults read loginwindow SystemVersionStampAsString | cut -d. -f2- | cut -f1,1 -d'.')
userID=$(id -u)
username=$(id -un)
fullname=$(dscl . -read /Users/${USER} RealName | sed -n 's/^ //g;2p')
bundleID=$(/usr/libexec/PlistBuddy -c 'Print CFBundleIdentifier' /Applications/Dropbox.app/Contents/Info.plist) #=$(lsappinfo info -only bundleid Dropbox | cut -d '"' -f4)
currentworkingdirectory=$(pwd)

[ ! -d /Applications/Dropbox.app -o ! -d /Library/DropboxHelperTools ] && printf "Warning: Dropbox's installation is damaged. Reinstall it with InstallDropbox.sh prior to launch PatchDropboxHackedOSXAccessibility.sh in order to ensure a clean patching. Uninstall it with UninstallDropbox.sh to ensure your computer is not at risk anymore.\n" && exit 1

sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

killall Dropbox

cd /Library/DropboxHelperTools/Dropbox_u${userID}
sudo chmod -sx dbaccessperm
sudo chflags uimmutable dbaccessperm #chattr +i dbaccesSPERM

#sudo sqlite3 /Library/Application\ Support/com.apple.TCC/TCC.db "DELETE FROM access WHERE client='com.getdropbox.dropbox';" #sudo sqlite3 /Library/Application\ Support/com.apple.TCC/TCC.db "UPDATE access SET allowed = '0';"
if [ ${firmwareversion} -le 10 ]
then
	sudo sqlite3 /Library/Application\ Support/com.apple.TCC/TCC.db "REPLACE INTO access VALUES('kTCCServiceAccessibility','${bundleID}',0,0,1,NULL);"
elif [ ${firmwareversion} -ge 11 ]
then
	sudo sqlite3 /Library/Application\ Support/com.apple.TCC/TCC.db "REPLACE INTO access VALUES('kTCCServiceAccessibility','${bundleID}',0,0,1,NULL,NULL);"
fi

cd ${currentworkingdirectory}

read -r -p "Log Out ${fullname}...?, "$'\e[4m_y_\e[0mes or \e[4m_n_\e[0mo?\n'"This is required for the changes to take effect. " input
if [[ "${input}" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
	sudo pkill loginwindow
else
	:
fi

# PatchDropboxHackedOSXAccessibility.sh
# Patch Dropbox-Hacked OS X Accessibility
# Cf https://web.archive.org/web/20160923023858/http://www.gnu.org:80/proprietary/proprietary-back-doors.html, https://web.archive.org/web/20160811180723/http://applehelpwriter.com/2016/07/28/revealing-dropboxs-dirty-little-security-hack/#comment-27348, https://web.archive.org/web/20160909174627/https://applehelpwriter.com/2016/08/29/discovering-how-dropbox-hacks-your-mac/, https://web.archive.org/web/20140502070140/https://apple.stackexchange.com/questions/111903/allow-application-to-control-computer-assistive-devices-on-mavericks-via-termi
# 
# Karl 'Kabe' Bertin `kvpb`
# Telephone: +33 A BB BB BB BB
# Email: local-part@domain
# LinkedIn: https://www.linkedin.com/in/karlbertin
# Facebook:
# Instagram: https://www.instagram.com/karlbertin/
# Snapchat: https://www.snapchat.com/add/karlbertin
# 
# On june 10th, I learned that Dropbox deceitfully hacked OS X 'til Apple patched the exploit, ie before macOS 10.12 Sierra. With further tinkering, I wrote this script to patch Dropbox's hack. But it only patches their hacking; it doesn't protect against the malware itself. Ironically, I already made the better version 2.0 of this very script, and I even uploaded it to the remote; see UninstallDropbox.sh for more info.
# 
# Note to Dropbox Inc: Motherfuckers. As soon as I'm done with my ongoing affairs, I trash Dropbox away. You've gone too far. I paid a subscription for three years, first on a Mac with OS X 10.9 Mavericks. Not only did you do phishing for my admin -- and so sudo, like in `sudo su root -c 'printf "Fuck you."; rm -rf /; exit'` -- password, but you hacked my OS to do God-knows-what, all that while lying about the reason. Shove your turd back up your ass, along a post lamp. Don't worry; I'm sure you'll enjoy. Such big assholes can only appreciate huge cold metal sticks. Mmmh! I may screw your wives all I want, but you sure don't touch mine.
# Note to the Free Software Foundation & Phil A. Stokes: Thank you very much. I remember coming to your website searching for the GNU CoreUtils. Some hylink got my attention, from which another snatched it in turn, and I ended up reading this. My curiosity did me good once more, and so did you.