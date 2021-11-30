#!/usr/bin/env bash

variable=${1}; #variable=;
#muted=$(osascript -e 'set ovol to output muted of (get volume settings)';);

#printf '%s\n' 'Enter a natural number from 0 ( 0% ) to 100 ( 100% ) or a letter M (muted) or U (unmuted).';
#read variable;
if [[ -n ${variable} && ${variable} != *[^[:digit:]]* ]];
then
	variable=$(printf %.2f\\n "$(( ${variable}*10**10 / 100 * 7 ))e-10"); #variable=$(( ${variable}*10 / 100 * 7/10 )); # x / 100 * 7, but the arithmetic expansion of BASH floors values on every step, because it does not support floating-point numbers ( floor( floor( 50 / 100 ) * 7 ) = 0 ), so ( x( 10 ) / 100 * 7 )( 1 / 10 ) ( floor( floor( floor( floor( 50( 10 ) ) / 100 ) * 7 ) / 10 ) ).
	osascript -e "set volume ${variable}"; # Set the volume of the OS to the specified value.
	osascript -e 'set ovol to output volume of (get volume settings)';
elif [[ ${variable} =~ [a-zA-Z] ]];
then
	if [[ "${variable}" =~ ^([tT|mM])+$ ]]; #|| -z ${variable} && $(osascript -e 'set ovol to output muted of (get volume settings)';) == 'false' ]];
	then
		osascript -e 'set volume output muted true'; # Mute the volume of the OS.
	elif [[ "${variable}" =~ ^([fF|uU])+$ ]]; #|| -z ${variable} && $(osascript -e 'set ovol to output muted of (get volume settings)';) == 'true' ]];
	then
		osascript -e 'set volume output muted false'; # Unmute the volume of the OS.
	fi; #[[ $(osascript -e 'set ovol to output muted of (get volume settings)';) == 'false' ]] && osascript -e 'set volume output muted true' && osascript -e 'set ovol to output muted of (get volume settings)'; [[ $(osascript -e 'set ovol to output muted of (get volume settings)';) == 'true' ]] && osascript -e 'set volume output muted false' && osascript -e 'set ovol to output muted of (get volume settings)';
	osascript -e 'set ovol to output muted of (get volume settings)';
else
	printf "Error: Null value passed as argument\nEnter a natural number from 0 to 100 or a letter M or U.\n"; #printf 'I AM\nERROR.\n';
    osascript -e 'get volume settings';
	exit 1;
fi;
exit 0;

#	SetVol.sh
#	Set the volume of macOS.
#
#	Karl V. P. B. `kvpb`
#	+1 (DDD) DDD-DDDD
#	local-part@domain
#	https://www.linkedin.com/in/
#	https://twitter.com/
#	https://github.com/kvpb
#	https://vm.tiktok.com//
