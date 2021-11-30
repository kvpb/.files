#!/usr/bin/env bash

s=${IFS};
IFS=$'\n';

for i in $(find /Applications ${HOME}/Applications -mindepth 1 -maxdepth 2 -type d -name \*.app);
do
	if [ ! -d "${i}/Contents/_MASReceipt" ];
	then
		i="${i##/*/}";
		i="${i%.app}";
		printf "${i}\n";
	fi;
done;
IFS=${s};
exit 0;

#	ListNon-MASApps.sh
#
#	Karl V. P. B. `kvpb`
#	+1 (DDD) DDD-DDDD
#	local-part@domain
#	https://www.linkedin.com/in/
#	https://twitter.com/
#	https://github.com/kvpb
#	https://vm.tiktok.com//
