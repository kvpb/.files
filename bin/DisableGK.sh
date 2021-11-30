#!/usr/bin/env bash
#exec 2>> ${HOME}/Temporary/log
#set -xv

#DOTF=${HOME}/.files;
#each=;
path=${1};

#for each in ${@};
#do
	#path=$(sh ${DOTF}/lib/scpt/GetApplicationPOSIXPaths.sh ${each};);
	xattr -dr com.apple.quarantine ${path};
#done;
exit 0;

#	DisableGatekeeper.sh
#
#	Karl V. P. B. `kvpb`
#	+1 (DDD) DDD-DDDD
#	local-part@domain
#	https://www.linkedin.com/in/karlbertin
#	https://twitter.com/kvpb777
#	https://www.instagram.com/add/karlbertin
#	https://vm.tiktok.com/ZSwAmcFh/
