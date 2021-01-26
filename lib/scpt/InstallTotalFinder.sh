#!/usr/bin/env bash

instructionsetarchitecture=$(uname -p;);
systemsoftwareversion=$(defaults read loginwindow SystemVersionStampAsString | cut -d. -f2- | cut -f1,1 -d'.';);
[ ${systemsoftwareversion} -ge 11 ] && SIPstatus=$(csrutil status | sed -E 's/.*(...abled).*/\1/g';);
filenameextension='pkg';
[ ${systemsoftwareversion} -le 6 ] && [ "${instructionsetarchitecture}" = "powerpc" ] && softwarelatestversion='0.5' && filenameextension="${filenameextension/#/m}";
[ ${systemsoftwareversion} -eq 6 ] && [ "${instructionsetarchitecture}" = "i386" ] && softwarelatestversion='1.3.4' && filenameextension="${filenameextension/#/m}";
[ ${systemsoftwareversion} -eq 7 ] && softwarelatestversion='1.5.38';
[ ${systemsoftwareversion} -eq 8 ] && softwarelatestversion='1.6.27';
[ ${systemsoftwareversion} -eq 9 -o ${systemsoftwareversion} -eq 10 ] && softwarelatestversion='1.9.3';
[ ${systemsoftwareversion} -ge 11 ] && softwarelatestversion='1.11.8';
n=$[RANDOM%99+1] && while [ -e /Users/${USER}/Temporary/Folder${n} ]; do n=$[RANDOM%99+1]; done;
workingdirectory=$(pwd);

if [ ${systemsoftwareversion} -ge 11 -a ${systemsoftwareversion} -le 13 -a "${SIPstatus}" = ' enabled' ]
then
	printf 'Error: System Integrity Protection enabled.\nOn OS X 10.11 El Capitan and later, TotalFinder needs a system tweak. To partially disable the SIP for TotalFinder, restart to the Recovery OS partition by pressing Power then holding Command-R, launch Terminal there, enter `csrutil disable --without debug`, and restart again. See https://totalfinder.binaryage.com/sip for more information.\n'
	exit 1
elif [ ${systemsoftwareversion} -ge 14 -a "${SIPstatus}" = ' enabled' ]
then
	printf 'Error: System Integrity Protection enabled.\nOn OS X 10.11 El Capitan and later, TotalFinder needs a system tweak. To disable the SIP, restart to the Recovery OS partition by pressing Power then holding Command-R, launch Terminal there, enter `csrutil disable`, and restart again. See https://totalfinder.binaryage.com/sip for more information.\n'
	exit 1
fi
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

mkdir -p /Users/${USER}/Temporary/Folder${n}
cd /Users/${USER}/Temporary/Folder${n}
if [ -f /Users/${USER}/Downloads/Miscellaneous/TotalFinder-${softwarelatestversion}.dmg ]
then
	ln -s /Users/${USER}/Downloads/Miscellaneous/TotalFinder-${softwarelatestversion}.dmg ./
else
	curl --remote-name --remote-header-name --location https://downloads.binaryage.com/TotalFinder-${softwarelatestversion}.dmg
fi
hdiutil mount -nobrowse -quiet TotalFinder-${softwarelatestversion}.dmg
sudo installer -pkg /Volumes/TotalFinder/TotalFinder-${softwarelatestversion}.${filenameextension} -target /
hdiutil unmount -quiet /Volumes/TotalFinder
if [ -f /Users/${USER}/Temporary/Folder${n}/TotalFinder-${softwarelatestversion}.dmg -a -L /Users/${USER}/Temporary/Folder${n}/TotalFinder-${softwarelatestversion}.dmg ]
then
	rm TotalFinder-${softwarelatestversion}.dmg
elif [ -f /Users/${USER}/Temporary/Folder${n}/TotalFinder-${softwarelatestversion}.dmg ]
	mv TotalFinder-${softwarelatestversion}.dmg /Users/${USER}/Downloads/
fi
cd ${workingdirectory}
rm -d /Users/${USER}/Temporary/Folder${n}

# InstallTotalFinder.sh
# Install TotalFinder latest compatible version
# Cf https://totalfinder.binaryage.com/compatibility, https://totalfinder.binaryage.com/sip
#
# Karl V. P. Bertin `kvpb`
# Telephone: +33 A BB BB BB BB
# Email: local-part@domain
