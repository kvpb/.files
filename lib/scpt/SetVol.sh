#!/usr/bin/env bash

variable=;

#isnatural() { [[ ${1} =~ ^[0-9]+$ ]]; } && \
#isinteger() { [[ ${1} == ?(-)+([0-9]) ]]; } && \
#isreal() { [[ ${1} == ?(-)@(+([0-9]).*([0-9])|*([0-9]).+([0-9]))?(E?(-|+)+([0-9])) ]]; } && \
#isnumber() { isnatural ${1} || isinteger ${1} || isreal ${1}; };

printf "%s\n" "Enter a natural or floating-point number from 0 (0%) to 7 (100%) or the letter T ('mute') or F ('unmute')."; # or just 50 / 100 * 7 = 3.5 it's simple 'reverse percentaging' my dudes but i'm a lazy fuck rn so ye
read variable;
if [[ -n ${variable} && ${variable} != *[^[:digit:]]* ]];
then
	osascript -e "set volume ${variable}"; # Set the volume of the OS to the specified value.
#	osascript -e 'set ovol to output volume of (get volume settings)';
elif [[ ${variable} =~ [a-zA-Z] ]];
then
	if [[ "${variable}" =~ ^([tT])+$ ]];
	then
		osascript -e 'set volume output muted true'; # Mute the volume of the OS.
	elif [[ "${variable}" =~ ^([fF])+$ ]];
	then
		osascript -e 'set volume output muted false'; # Unmute the volume of the OS.
	fi; # aye lovely    btw i could just check for the current state of mutedness to accordingly enable or disable with an empty input
#	osascript -e 'set ovol to output muted of (get volume settings)';
else
	:;
fi;
osascript -e 'get volume settings';
