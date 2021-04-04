#!/usr/bin/env bash
#exec 2>> ${HOME}/Temporary/log
#set -xv

if [[ -z ${1} ]];
then
	osascript -e 'get volume settings';
elif [[ "${1}" =~ ^([oO])+$ ]];
then
	osascript -e 'set ovol to output volume of (get volume settings)';
elif [[ "${1}" =~ ^([iI])+$ ]];
then
	osascript -e 'get input volume of (get volume settings)';
elif [[ "${1}" =~ ^([aA])+$ ]];
then
	osascript -e 'get alert volume of (get volume settings)';
elif [[ "${1}" =~ ^([mM])+$ ]];
then
	osascript -e 'get output muted of (get volume settings)';
else
	printf 'I AM\nERROR.\n';
	exit 1;
fi;
exit 0;

# GetVolume.sh
# Print the volume of macOS
# 
# Karl V. P. B. `kvpb`
# Telephone: +33 A BB BB BB BB
# Email: local-part@domain
# LinkedIn: https://www.linkedin.com/in/karlbertin
# Instagram: https://www.instagram.com/add/karlbertin
# TikTok: https://vm.tiktok.com/ZSwAmcFh/
