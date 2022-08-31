#!/usr/bin/env bash

#c=${1}
#n=${2}
#i=

if [[ ! ${1} =~ ^(+|-)$ || ${1} == '-' ]]
then
	c=107
elif [ "${1}" == '+' ]
then
	c=113
fi
if [[ -z ${2} || ${2} == *[^[:digit:]]* || ${2} -lt 0 || 16 -lt ${2} ]]
then
	n=16
else
	n=${2}
fi

if [ -z ${c} -o -z ${n} ]
then
	printf "%s\n" 'I AM\nERROR.'
	exit 1
fi

i=0
while [ ${i} -lt ${n} ]
do
	osascript -e 'tell application "System Events"' -e 'key code ${c}' -e 'end tell'
	i=$(( ${i} + 1 ))
done
#osascript -e 'tell application "System Events" to repeat 16 times' -e 'key code 113' -e 'delay 0.1' -e 'end repeat' # Set keyboard brightness to 100%.
exit 0

#	SetKeyboardBrightness.sh
#	Set the brightness of the keyboard of macOS.
#
#	Karl V. P. B. `kvpb`
#	+1 (DDD) DDD-DDDD
#	local-part@domain
#	https://www.linkedin.com/in/
#	https://twitter.com/
#	https://github.com/kvpb
#	https://vm.tiktok.com//
