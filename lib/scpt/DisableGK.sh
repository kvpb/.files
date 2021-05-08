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

# DisableGatekeeper.sh
#
# Karl V. P. B. `kvpb`
# +33 A BB BB BB BB
# local-part@domain
