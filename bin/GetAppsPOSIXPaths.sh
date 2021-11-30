#!/usr/bin/env bash
#exec 2>> ${HOME}/Temporary/log
#set -xv

for var in "${@}";
do
	osascript -- - "${var}" <<-'EOF'
		on run({var})
			POSIX path of (path to application var)
		end
	EOF
	# Wait. What? https://unix.stackexchange.com/a/76483
done;
exit 0;

#	GetApplicationsPOSIXPaths.sh
#
#	Karl V. P. B. `kvpb`
#	+1 (DDD) DDD-DDDD
#	local-part@domain
#	https://www.linkedin.com/in/
#	https://twitter.com/
#	https://github.com/kvpb
#	https://vm.tiktok.com//
