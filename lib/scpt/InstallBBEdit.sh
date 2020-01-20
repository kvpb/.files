#!/usr/bin/env bash

#firmwareversion=$(defaults read loginwindow SystemVersionStampAsString;);
#firmwaremajorversion=${firmwareversion%%.*}; # firmwareversion=${firmwareversion%?????};
#firmwareminorversion=${firmwareversion#*.};
#firmwarepatchversion=${firmwareversion##*.};
#firmwareversion=$(defaults read loginwindow SystemVersionStampAsString | cut -d. -f2- | cut -f1,1 -d'.';); # real: 0m0.055s; user: 0m0.025s; sys: 0m0.037s
firmwareversion=$(defaults read loginwindow SystemVersionStampAsString;) && firmwareversion=${firmwareversion#*.} && firmwareversion=${firmwareversion%.*}; # real: 0m0.041s; user: 0m0.016s; sys: 0m0.021s
filenameextension='dmg';
[ ${firmwareversion} -eq 8 ] && softwarelatestversion='11.1.4';
[ ${firmwareversion} -eq 9 -o ${firmwareversion} -eq 10 ] && softwarelatestversion='11.6.8';
[ ${firmwareversion} -eq 11 ] && softwarelatestversion='12.1.6';
[ ${firmwareversion} -eq 12 -o ${firmwareversion} -eq 13 ] && softwarelatestversion='12.6.7';
[ ${firmwareversion} -eq 14 ] && softwarelatestversion='13.0.1';
n=$[RANDOM%99+1] && while [ -e /Users/${USER}/Temporary/Folder${n} ]; do n=$[RANDOM%99+1]; done;
workingdirectory=$(pwd;);

if [ ${firmwareversion} -lt 8 ];
then
	printf "'Older versions\nPlease contact Tech Support for assistance. https://www.barebones.com/contact/technical.html'\nhttps://www.barebones.com/support/bbedit/updates.html\n"
fi;
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

mkdir -p /Users/${USER}/Temporary/Folder${n}
cd /Users/${USER}/Temporary/Folder${n}
if [ -f /Users/${USER}/Downloads/Miscellaneous/BBEdit_${softwarelatestversion}.${filenameextension} ];
then
	ln -s /Users/${USER}/Downloads/Miscellaneous/BBEdit_${softwarelatestversion}.${filenameextension} ./
else
	curl --remote-name --remote-header-name --location https://s3.amazonaws.com/BBSW-download/BBEdit_${softwarelatestversion}.${filenameextension}
fi;
hdiutil mount -nobrowse -quiet BBEdit_${softwarelatestversion}.${filenameextension}
cp -R /Volumes/BBEdit\ ${softwarelatestversion}/BBEdit_${softwarelatestversion}/BBEdit.app /Applications/
hdiutil unmount -quiet /Volumes/BBEdit\ ${softwarelatestversion}
if [ -f /Users/${USER}/Temporary/Folder${n}/BBEdit_${softwarelatestversion}.${filenameextension} -a -L /Users/${USER}/Temporary/Folder${n}/BBEdit_${softwarelatestversion}.${filenameextension} ];
then
	rm BBEdit_-${softwarelatestversion}.${filenameextension}
elif [ -f /Users/${USER}/Temporary/Folder${n}/BBEdit_${softwarelatestversion}.${filenameextension} ];
then
	mv BBEdit_${softwarelatestversion}.${filenameextension} /Users/${USER}/Downloads/
fi;
cd ${workingdirectory}
rm -d /Users/${USER}/Temporary/Folder${n}

# InstallBBEdit.sh
# Install BBEdit latest compatible version
# Cf https://www.barebones.com/support/new-os.html, https://www.barebones.com/support/bbedit/updates.html
#
# Karl 'Kabe' Bertin `kvpb`
# Telephone: +33 A BB BB BB BB
# Email: local-part@domain
# LinkedIn: https://www.linkedin.com/in/karlbertin
# Facebook: https://www.facebook.com/profile.php?id=
# Instagram: https://www.instagram.com/karlbertin/
# Snapchat: https://www.snapchat.com/add/karlbertin
