#!/usr/bin/env bash

if [ -d "~/Temporary" ]; # If the unofficial Apple Computer Operating System user temporary folder is [exists as] a directory in the current user's home...
then
	if [ -L "~/Temporary" ]; # If the UACOSUTF is [exists as] a symbolic link in the CUH...
	then
		mv ~/Temporary ~/.Trash/ # Put the unof ACOS usr tmp folder symlink to the cur usr's trash...
		mkdir ~/Temporary # And make an UACOSUTF in the CUH.
	else # ... Or else [if a UACOSUTF is a directory in the CUH]...
		mv -R ~/Temporary ~/.Trash/ # Put the UACOSUTF to the CUT [just in case it contains documents]...
		mkdir ~/Temporary # And make a new UACOSUTF in the CUH.
	fi
else # ... Or else [if the UACOSUTF is not [does not exist]]...
	mkdir -p ~/Temporary # Make an UACOSUTF in the CUH.
fi
exit 0

#	NewTemporaryFolder.sh
#	Make a new temporary directory.
#
#	Karl V. P. B. `kvpb`
#	+1 (DDD) DDD-DDDD
#	local-part@domain
#	https://www.linkedin.com/in/
#	https://twitter.com/
#	https://github.com/kvpb
#	https://vm.tiktok.com//
