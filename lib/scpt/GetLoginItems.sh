#!/usr/bin/env bash
#exec 2>> ${HOME}/Temporary/log
#set -xv

osascript -e 'tell application "System Events" to get the name of every login item'; # Get the current user's login items.
exit 0;

# GetLoginItems.sh
#
# Karl V. P. B. `kvpb`
# +33 A BB BB BB BB
# local-part@domain
