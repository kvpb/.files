#!/usr/bin/env bash

readonly b='0123456789ABCDEF'; # base
N=${@}; #n=${1}; # (input) decimal integers
n_i=;
r=; # remainder
Oxd=; # hexadecimal digit
Oxn=; # (output) hexadecimal integer literal

for n_i in ${N};
do
	Oxn=;
	if [ ${n_i} -lt 0 ]; #if [ ${n} -lt 0 ];
	then
		n_i=$(( ${n_i} + 2**32 )); #n=$(( ${n} + 2**32 ));
	fi; # Because it sort of loops as I told Ian and Victor yesterday in n-bit CPU registers.
	while [ ${n_i} -gt 0 ]; #while [ ${n} -gt 0 ];
	do
		r=$(( ${n_i} % 16 )); #r=$(( ${n} % 16 ));
		Oxd=${b:${r}:1};
		Oxn=${Oxd}${Oxn};
		n_i=$(( ${n_i} / 16 )); #n=$(( ${n} / 16 ));
	done;
	Oxn=${Oxn/#/0x};
	printf ${Oxn}'\n';
done;
exit 0;

# DecToHex.sh
# BASH-only decimal to hexadecimal conversion
#
# Karl V. P. B. `kvpb`
# +33 A BB BB BB BB
# local-part@domain
