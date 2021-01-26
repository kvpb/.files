#!/usr/bin/env bash

systemsoftwareversion=$(defaults read loginwindow SystemVersionStampAsString | cut -d. -f2- | cut -f1,1 -d'.';);
[ ${systemsoftwareversion} -ge 11 ] && SIPstatus=$(csrutil status | sed -E 's/.*(...abled).*/\1/g';);
filenameextension='pkg';
[ ${systemsoftwareversion} -eq 5 ] && softwarelatestversion='1.1' && filenameextension="${filenameextension/#/m}";
[ ${systemsoftwareversion} -eq 6 ] && softwarelatestversion='1.3';
[ ${systemsoftwareversion} -eq 7 ] && softwarelatestversion='1.4.11';
[ ${systemsoftwareversion} -eq 8 ] && softwarelatestversion='1.5.4';
[ ${systemsoftwareversion} -ge 9 -a ${systemsoftwareversion} -le 12 ] && softwarelatestversion='1.6';
n=$[RANDOM%99+1] && while [ -e /Users/${USER}/Temporary/Folder${n} ]; do n=$[RANDOM%99+1]; done; # so there's no risk that the temporary directory exists and has contents, thus it spares from theneed to check this.
workingdirectory=$(pwd);

if [ "${SIPstatus}" = ' enabled' ]
then
	printf 'Error: System Integrity Protection enabled.\nOn OS X 10.11 El Capitan and later, TotalTerminal needs a system tweak. To partially disable the SIP for TotalTerminal, restart to the Recovery OS partition by pressing Power then holding Command-R, launch Terminal, enter `csrutil enable --without debug`, and restart again. See https://totalterminal.binaryage.com/#sip for more information.\n'
	exit 1
fi
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

mkdir -p /Users/${USER}/Temporary/Folder${n}
cd /Users/${USER}/Temporary/Folder${n}
if [ -f /Users/${USER}/Downloads/Miscellaneous/TotalTerminal-${softwarelatestversion}.dmg ]
then
	ln -s /Users/${USER}/Downloads/Miscellaneous/TotalTerminal-${softwarelatestversion}.dmg ./
else
	curl --remote-name --remote-header-name --location https://downloads.binaryage.com/TotalTerminal-${softwarelatestversion}.dmg
fi
hdiutil mount -nobrowse -quiet TotalTerminal-${softwarelatestversion}.dmg
sudo installer -pkg /Volumes/TotalTerminal/TotalTerminal-${softwarelatestversion}.${filenameextension} -target /
hdiutil unmount -quiet /Volumes/TotalTerminal
if [ -f /Users/${USER}/Temporary/Folder${n}/TotalTerminal-${softwarelatestversion}.dmg -a -L /Users/${USER}/Temporary/Folder${n}/TotalTerminal-${softwarelatestversion}.dmg ] # 'cause what if someone does: mv TotalTerminal-1.0.dmg ../; unzip -d malware.zip malware; chmod 755 malware; ln -s malware TotalTerminal-1.0.dmg? ;)
then
	rm TotalTerminal-${softwarelatestversion}.dmg
elif [ -f /Users/${USER}/Temporary/Folder${n}/TotalTerminal-${softwarelatestversion}.dmg ]
	mv TotalTerminal-${softwarelatestversion}.dmg /Users/${USER}/Downloads/
fi
cd ${workingdirectory}
rm -d /Users/${USER}/Temporary/Folder${n}

# InstallTotalTerminal.sh
# Install TotalTerminal latest compatible version
# Cf https://totalterminal.binaryage.com/#compatibility, https://totalterminal.binaryage.com/#sip
#
# Karl V. P. Bertin `kvpb`
# Telephone: +33 A BB BB BB BB
# Email: local-part@domain
