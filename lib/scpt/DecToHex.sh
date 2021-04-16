#!/usr/bin/env bash

readonly b='0123456789ABCDEF'; # base
n=${1}; # decimal integer, input
r=; # remainder
Oxd=; # hexadecimal digit
Oxn=; # hexadecimal integer literal, output

while [ ${n} -gt 0 ];
do
	r=$(( ${n} % 16 ));
	Oxd=${b:${r}:1};
	Oxn=${Oxd}${Oxn};
	n=$(( ${n} / 16 ));
done;
Oxn=${Oxn/#/0x};
printf ${Oxn}'\n';
exit 0;

# DecToHex.sh
# BASH-only decimal to hexadecimal conversion
# 
# Karl `kvpb`
# +33 A BB BB BB BB
# local-part@domain
# https://www.linkedin.com/in/karlbertin
# 
# 

