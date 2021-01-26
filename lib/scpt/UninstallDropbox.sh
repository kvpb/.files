#!/usr/bin/env bash

# UninstallDropbox.sh
# Uninstall Dropbox Mac
# https://web.archive.org/web/20190511131358/https://help.dropbox.com/en-us/desktop-web/uninstall-dropbox

sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

mkdir -p ${HOME}/.Trash/DropboxUninstallation

killall Dropbox
# Quit Dropbox.

mv ${HOME}/.dropbox/ ${HOME}/.dropbox.old
#kill Dropbox
mv /Applications/Dropbox.app ${HOME}/.Trash/DropboxUninstallation/
# Uninstall the desktop app on Mac OS X https://web.archive.org/web/20190511131358/https://help.dropbox.com/en-us/desktop-web/uninstall-dropbox

#mv ${HOME}/Dropbox ${HOME}/.Trash/DropboxUninstallation/
# Remove the files in your Dropbox Folder https://web.archive.org/web/20190511131358/https://help.dropbox.com/en-us/desktop-web/uninstall-dropbox

sudo mv /Library/DropboxHelperTools ${HOME}/.Trash/DropboxUninstallation/
# (Optional) Uninstall the Dropbox contextual menu https://web.archive.org/web/20190511131358/https://help.dropbox.com/en-us/desktop-web/uninstall-dropbox

#mv ${HOME}/.dropbox.old ${HOME}/.Trash
# (Optional) Removing your Dropbox application settings https://web.archive.org/web/20190511131358/https://help.dropbox.com/en-us/desktop-web/uninstall-dropbox

mv ${HOME}/Library/Dropbox ${HOME}/.Trash/DropboxUninstallation/
mv ${HOME}/Library/Application\ Support/Dropbox ${HOME}/.Trash/DropboxUninstallation/
mv ${HOME}/Library/Application\ Scripts/com.{dropbox.{activityprovider,foldertagger},getdropbox.dropbox.garcon} ${HOME}/.Trash/DropboxUninstallation/
mv ${HOME}/Library/LaunchAgents/com.dropbox.DropboxMacUpdate.agent.plist ${HOME}/.Trash/DropboxUninstallation/
# Move  to the trash.
mv ${HOME}/Library/Logs/Dropbox_debug.log ${HOME}/.Trash/DropboxUninstallation/
mv ${HOME}/Library/Application\ Support/CrashReporter/DropboxActivityProvider_*.plist ${HOME}/.Trash/DropboxUninstallation/
# Move  to the trash.
mv ${HOME}/Library/Preferences/com.{dropbox.{DropboxMacUpdate,tungsten.helper},getdropbox.dropbox}.plist ${HOME}/.Trash/DropboxUninstallation/
# Move  to the trash.
mv ${HOME}/Library/Containers/com.{dropbox.{activityprovider,foldertagger},getdropbox.dropbox.garcon} ${HOME}/.Trash/DropboxUninstallation/
mv ${HOME}/Library/Group\ Containers/com.getdropbox.dropbox.garcon ${HOME}/.Trash/DropboxUninstallation/
# Move  to the trash.
mv ${HOME}/Library/Cookies/com.getdropbox.DropboxMetaInstaller.binarycookies ${HOME}/.Trash/DropboxUninstallation/
mv ${HOME}/Library/Caches/com.dropbox.DropboxMacUpdate ${HOME}/.Trash/
mv ${HOME}/Library/Caches/com.plausiblelabs.crashreporter.data/com.dropbox.DropboxMacUpdate ${HOME}/.Trash/DropboxUninstallation/
# Move  to the trash.

sudo sqlite3 /Library/Application\ Support/com.apple.TCC/TCC.db "DELETE FROM access WHERE client='com.getdropbox.dropbox';"
# Delete Dropbox from the Accessibility list.

printf 'Delete uninstallation files, yes ("y") or no ("n")?\n'
read -r boolean
if [[ ${boolean} =~ ^([yY]|[yY][eE][sS])$ ]]
then
	wd=$(pwd)
	cd ${HOME}/.Trash
	rm -rf DropboxUninstallation
	cd ${wd}
elif [[ ${boolean} =~ ^([nN]|[nN][oO])$ ]]
then
	:
else
	printf 'Qui ne dit mot consent ? Pas de nouvelle, bonnes nouvelles ?\n'
fi
printf 'Dropbox has been uninstalled.\n'

# UninstallDropbox.sh
# Uninstall Dropbox
# 
# Karl V. P. Bertin `kvpb`
# Telephone: +33 A BB BB BB BB
# Email: local-part@domain
