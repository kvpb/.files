#!/usr/bin/env bash

variable=;
#muted=$(osascript -e 'set ovol to output muted of (get volume settings)';);

#isnatural() { [[ ${1} =~ ^[0-9]+$ ]]; } && \
#isinteger() { [[ ${1} == ?(-)+([0-9]) ]]; } && \
#isreal() { [[ ${1} == ?(-)@(+([0-9]).*([0-9])|*([0-9]).+([0-9]))?(E?(-|+)+([0-9])) ]]; } && \
#isnumber() { isnatural ${1} || isinteger ${1} || isreal ${1}; };

printf "%s\n" "Enter a natural number from 0 to 100 or a letter M ('mute') or U ('unmute').";
read variable;
if [[ -n ${variable} && ${variable} != *[^[:digit:]]* ]];
then
	variable=$(( ${variable}*10 / 100 * 7/10 )); # x / 100 * 7, but the arithmetic expansion of BASH floors values on every step, because it does not support floating-point numbers ( floor( floor( 50 / 100 ) * 7 ) = 0 ), so ( x( 10 ) / 100 * 7 )( 1 / 10 ) ( floor( floor( floor( floor( 50( 10 ) ) / 100 ) * 7 ) / 10 ) ).
	osascript -e "set volume ${variable}"; # Set the volume of the OS to the specified value.
	osascript -e 'set ovol to output volume of (get volume settings)';
elif [[ ${variable} =~ [a-zA-Z] ]];
then
	if [[ "${variable}" =~ ^([tT|mM])+$ || -z ${variable} && $(osascript -e 'set ovol to output muted of (get volume settings)';) == 'false' ]];
	then
		osascript -e 'set volume output muted true'; # Mute the volume of the OS.
	elif [[ "${variable}" =~ ^([fF|uU])+$ || -z ${variable} && $(osascript -e 'set ovol to output muted of (get volume settings)';) == 'true' ]];
	then
		osascript -e 'set volume output muted false'; # Unmute the volume of the OS.
	fi; #[[ $(osascript -e 'set ovol to output muted of (get volume settings)';) == 'false' ]] && osascript -e 'set volume output muted true' && osascript -e 'set ovol to output muted of (get volume settings)'; [[ $(osascript -e 'set ovol to output muted of (get volume settings)';) == 'true' ]] && osascript -e 'set volume output muted false' && osascript -e 'set ovol to output muted of (get volume settings)';
	osascript -e 'set ovol to output muted of (get volume settings)';
else
	printf 'I AM\nERROR.\n';
    exit 1;
fi;
