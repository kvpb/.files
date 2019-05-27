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
