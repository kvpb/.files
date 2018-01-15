#!/bin/bash

# NewTestFolders.sh
# Make test directories Mac

set -e

mkdir /Users/${USER}/Temporary # The script must fail if /Users/ doesn't exist or current user's home isn't in /Users/, so -p option isn't invoked.

mkdir -p /Users/${USER}/Temporary/Test{1,2,3}/Folder{1,2,3}

touch /Users/${USER}/Temporary/Test{1,2,3}/Folder{1,2,3}/File{1,2,3}

cd /Users/${USER}/Temporary

pwd -P

ls -lRa