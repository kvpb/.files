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

# ListNonMacAppStoreApplications.sh
#
# Karl V. P. B. `kvpb`
# +33 A BB BB BB BB
# local-part@domain
