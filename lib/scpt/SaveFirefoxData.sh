#!/usr/bin/env bash

kernel=$(uname -s;);
#[ "${kernel}" = 'Darwin' ] && firmwareversion=$(defaults read loginwindow SystemVersionStampAsString | cut -d. -f2- | cut -f1,1 -d'.';);
#string=${IFS} && IFS=$'\n';
dateandtime=$(date "+%y-%m-%d_%H-%M-%S";);
#n=$[RANDOM%99+1] && while [ -e ${HOME}/Temporary/Folder${n} ]; do n=$[RANDOM%99+1]; done;
workingdirectory=$(pwd;);

#mkdir -p /Users/${USER}/Temporary/Folder${n}
#cd /Users/${USER}/Temporary/Folder${n}

cd ${HOME}/Desktop
mkdir -p FirefoxSavedata
cd ${HOME}/Desktop/FirefoxSavedata
printf "$(date)\n\n" > Info.txt
cd ${HOME}/Library/Application\ Support/Firefox
printf "$(pwd)\n$(ls)\n\n" >> ${HOME}/Desktop/FirefoxSavedata/Info.txt
for i in {installs,profiles}.ini
do
	tar -czf "${i%%.ini}_${dateandtime}.tgz" "${i}"
	mv "${i%%.ini}_${dateandtime}.tgz" ${HOME}/Desktop/FirefoxSavedata/
done
cd ${HOME}/Library/Application\ Support/Firefox/Profiles
printf "$(pwd)\n$(ls)\n" >> ${HOME}/Desktop/FirefoxSavedata/Info.txt
for j in *.default{,-release}
do
	tar -czf "${j%%.default*}_${dateandtime}.tgz" "${j}"
	mv "${j%%.default*}_${dateandtime}.tgz" ${HOME}/Desktop/FirefoxSavedata/
done
exit 0

cd ${workingdirectory}
#rm -d ${HOME}/Temporary/Folder${n}

# SaveFirefoxData.sh
# Save Firefox Data
# Cf https://support.mozilla.org/en-US/kb/back-and-restore-information-firefox-profiles
# 
# Karl Bertin `kvpb`
# Telephone: +33 A BB BB BB BB
# Email: local-part@domain
# LinkedIn: https://www.linkedin.com/in/karlbertin
# Facebook: https://www.facebook.com/profile.php?id=
# Instagram: https://www.instagram.com/karlbertin/
# Snapchat: https://www.snapchat.com/add/karlbertin
# 
# To-do:
#   -  Condition a variable path according to the OS.
#   -  Improve the script, AKA make it clean as it should've been released.
#   -  Add support for Ubuntu.
