#!/usr/bin/env bash

kernel=$(uname -s)
[ "${kernel}" = 'Darwin' ] && firmwareversion=$(defaults read loginwindow SystemVersionStampAsString)
[ "${kernel}" = 'Darwin' ] && firmwareversionmajorrelease=$(printf "${firmwareversion}" | cut -d. -f2- | cut -f1,1 -d'.')
[ "${kernel}" = 'Darwin' -a ${firmwareversionmajorrelease} -ge 0 -a ${firmwareversionmajorrelease} -le 7 ] && firmwarename="${firmwareversion/#/Mac OS X }"
[ "${kernel}" = 'Darwin' -a ${firmwareversionmajorrelease} -ge 8 -a ${firmwareversionmajorrelease} -le 11 ] && firmwarename="${firmwareversion/#/OS X }"
[ "${kernel}" = 'Darwin' -a ${firmwareversionmajorrelease} -ge 12 ] && firmwarename="${firmwareversion/#/macOS }"
[ "${kernel}" = 'Linux' ] && firmware=$(cat /etc/os-release | sed '/^NAME/!d;s/^[^"]*\|[^"]*$//;s/"//g')
	latestreleaseGitHubinfo=$(curl --location --silent --header 'Accept: application/json' https://github.com/fish-shell/fish-shell/releases/latest)
	latestreleaseGitHubtag=$(echo ${latestreleaseGitHubinfo} | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')
[ "${kernel}" = 'Darwin' ] && latestreleaseGitHubURL="https://github.com/emcrisostomo/fswatch/releases/download/${latestreleaseGitHubtag}/fish-${latestreleaseGitHubtag}.pkg"
[ "${kernel}" = 'Linux' ] && latestreleaseGitHubURL="https://github.com/emcrisostomo/fswatch/releases/download/${latestreleaseGitHubtag}/fish-${latestreleaseGitHubtag}.tar.gz"
# from 'Download artifacts from a latest GitHub release with bash and PowerShell' by Mark Vincze on 2016.07.09 (https://web.archive.org/web/20180131223312/https://blog.markvincze.com/download-artifacts-from-a-latest-github-release-in-sh-and-powershell/)
workingdirectory=$(pwd)
n=$[RANDOM%999+1]

#if [ "${kernel}" = 'Darwin' -a ${firmwareversion} -lt 6 ]
#then
#	printf 'Error: Software Incompatibility\nInstallFISH.sh is compatible with Mac OS X 10.6 Snow Leopard, cf https://web.archive.org/web/20130521005841/http://fishshell.com:80/. And ${firmwarename} is installed on this Mac. Thus it is not compatible with this OS.'
#	exit 1
if [ "${kernel}" = 'Darwin' -a ${firmwareversion} -ge 6 ]
then
	sudo -v
	while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
	mkdir -p /Users/${USER}/Temporary/Folder${n}
	cd /Users/${USER}/Temporary/Folder${n} && curl --location --insecure "${latestreleaseGitHubURL}" --output fish-${latestreleaseGitHubtag}.pkg && cd ${workingdirectory}
	sudo installer -pkg /Users/${USER}/Temporary/Folder${n}/fish-${latestreleaseGitHubtag}.pkg -target /
	cd /Users/${USER}/Temporary/Folder${n} && mv fish-${latestreleaseGitHubtag}.pkg /Users/${USER}/Downloads/ && cd ${workingdirectory}
	rmdir /Users/${USER}/Temporary/Folder${n}
	:
#elif [ "${kernel}" = 'Linux' -a "${firmware}" = 'Ubuntu' ]
#then
#	mkdir -p ${HOME}/tmp/dir${n}
#	
else
	printf "InstallFISH.sh is incompatible with this operating system.\n"
	exit 1
fi

# InstallFISH.sh
# Install FISH
#
# Karl V.P. Bertin `kvpb`
# Telephone: +33 A BB BB BB BB
# Email: local-part@domain
# LinkedIn: https://www.linkedin.com/in/karlbertin
# Facebook:
# Instagram: https://www.instagram.com/karlbertin/
# Snapchat: https://www.snapchat.com/add/karlbertin