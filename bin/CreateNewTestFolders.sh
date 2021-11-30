#!/usr/bin/env bash

set -e

mkdir /Users/${USER}/Temporary # The script must fail if /Users/ doesn't exist or current user's home isn't in /Users/, so -p option isn't invoked.

mkdir -p /Users/${USER}/Temporary/Test{1,2,3}/Folder{1,2,3}

touch /Users/${USER}/Temporary/Test{1,2,3}/Folder{1,2,3}/File{1,2,3}

cd /Users/${USER}/Temporary

pwd -P

ls -lRa

exit 0

#	CreateNewTestFolders.sh
#	Create the test directories.
#
#	Karl V. P. B. `kvpb`
#	+1 (DDD) DDD-DDDD
#	local-part@domain
#	https://www.linkedin.com/in/
#	https://twitter.com/
#	https://github.com/kvpb
#	https://vm.tiktok.com//
