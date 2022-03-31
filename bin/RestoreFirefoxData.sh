#!/usr/bin/env bash

s="${1}";
d=;
k=$(uname -s;);
#[ "${k}" = 'Darwin' ] && v=$(defaults read loginwindow SystemVersionStampAsString | cut -f1,1 -d'.';); #defaults read loginwindow SystemVersionStampAsString | cut -d. -f2- | cut -f1,1 -d'.';);

if [ -z "${1}" ];
then
	printf '%s\n' 'Error: ';
	exit 1;
fi;
if [ -z "${2}" ];
then
	if [ "${k}" = 'Darwin' ];
	then
		d="${HOME}/Library/Application Support/Firefox/";
	#elif [ "${k}" = 'Linux' ];
	#then
	#	d="";
	fi;
else
	d="${2}";
fi;
for f in "${s}"/*[^installs,profiles]_??-??-??_??-??-??.tgz; #"${s%?}"/*[^installs,profiles]_??-??-??_??-??-??.tgz;
do
	tar zxf "${f}" -C "${d}"/Profiles/;
done;
tar zxf "${s}"/profiles_??-??-??_??-??-??.tgz -C "${d}"; #tar zxf "${s}"/profiles_??-??-??_??-??-??.tgz profiles.ini -C "${d}";
tar zxf "${s}"/installs_??-??-??_??-??-??.tgz -C "${d}";
exit 0;

#	RestoreFirefoxData.sh
#	Restore Firefox data
#
#	Karl V. P. B. `kvpb`
#	+1 (DDD) DDD-DDDD
#	local-part@domain
#	https://www.linkedin.com/in/
#	https://twitter.com/
#	https://github.com/kvpb
#	https://vm.tiktok.com//

#	Copyright 2022 Karl V. P. Bertin
#
#	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
#
#	1.  Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
#
#	2.  Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
#
#	3.  Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
#
#	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
