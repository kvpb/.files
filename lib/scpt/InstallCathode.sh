#!/usr/bin/env bash

firmwareversion=$(defaults read loginwindow SystemVersionStampAsString | cut -d. -f2- | cut -f1,1 -d'.';);
[ ${firmwareversion} -le 5 ] && softwarelatestversionfilename='1.1';
[ ${firmwareversion} -gt 5 -a ${firmwareversion} -le 6 ] && softwarelatestversionfilename='203';
#[ ${firmwareversion} -gt 6 -a ${firmwareversion} -ge 7 ] && softwarelatestversionfilename='';
[ ${firmwareversion} -le 6 ] && softwarelatestversionURL="https://cjcaufield.s3.amazonaws.com/products/cathode/cathode_${softwarelatestversionfilename}.zip";
[ ${firmwareversion} -gt 7 ] && softwarelatestversionURL=$(curl -s -I http://store.secretgeometry.com/download.php?id=7 | grep 'Location') && softwarelatestversionURL=${softwarelatestversionURL##'Location: '};
n=$[RANDOM%99+1] && while [ -e /Users/${USER}/Temporary/Folder${n} ]; do n=$[RANDOM%99+1]; done;
workingdirectory=$(pwd;);

mkdir -p /Users/${USER}/Temporary/Folder${n}
cd /Users/${USER}/Temporary/Folder${n}
if [ -f /Users/${USER}/Downloads/Miscellaneous/cathode_${softwarelatestversionfilename}.zip ]
then
	ln -s /Users/${USER}/Downloads/Miscellaneous/cathode_${softwarelatestversionfilename}.zip ./
else
	curl --remote-name --remote-header-name --location ${softwarelatestversionURL}
fi
unzip cathode_${softwarelatestversionfilename}.zip -d /Applications
if [ -f /Users/${USER}/Temporary/Folder${n}/cathode_${softwarelatestversionfilename}.zip -a -L /Users/${USER}/Temporary/Folder${n}/cathode_${softwarelatestversionfilename}.zip ]
then
	rm cathode_${softwarelatestversionfilename}.zip
elif [ -f /Users/${USER}/Temporary/Folder${n}/cathode_${softwarelatestversionfilename}.zip ]# else; then find /Users/${USER}/Downloads/. -mindepth 0 -maxdepth 1 -type d ! ! \( -name . -o -name Misc\* \) -print -exec basename {} \; ##else; then find /Users/${USER}/Downloads/. -mindepth 0 -maxdepth 1 -type d ! ! -name . -o -name Misc\* -print -exec basename {} \; # find sucks shit hard.
	mv cathode_${softwarelatestversionfilename}.zip /Users/${USER}/Downloads/
fi
cd ${workingdirectory}
rm -d /Users/${USER}/Temporary/Folder${n}

# InstallCathode.sh
# Install Cathode latest compatible version
# Cf http://www.secretgeometry.com/apps/cathode/downloads
#
# Karl 'Kabe' Bertin `kvpb`
# Telephone: +33 A BB BB BB BB
# Email: local-part@domain
# LinkedIn: https://www.linkedin.com/in/karlbertin
# Facebook: https://www.facebook.com/profile.php?id=
# Instagram: https://www.instagram.com/karlbertin/
# Snapchat: https://www.snapchat.com/add/karlbertin
