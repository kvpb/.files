#!/usr/bin/env bash
#exec 2>> ${HOME}/Temporary/log
#set -xv

osascript -e 'tell application "System Events" to get the name of every login item'; # Get the current user's login items.
exit 0;

#	GetLoginItems.sh
#
#	Karl V. P. B. `kvpb`
#	+1 (DDD) DDD-DDDD
#	local-part@domain
#	https://www.linkedin.com/in/
#	https://twitter.com/
#	https://github.com/kvpb
#	https://vm.tiktok.com//
