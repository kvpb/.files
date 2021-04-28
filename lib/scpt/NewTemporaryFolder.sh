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

# NewTemporaryFolder.sh
# Make A New Temporary Folder (Make temporary user directory Mac)
#
# Karl V. P. B. `kvpb`
# +33 A BB BB BB BB
# local-part@domain
#
# Why I did not write this the negative 'is not' (`[ ! -d "~/Temporary"`) way:
#
# 	if [ ! -d "~/Temporary" ]; then # If the UACOSUTF is not [does not exist as] a directory in the current user's home...
# 		if [ -L "~/Temporary" ]; then # If the UACOSUTF is not [does not exists as] a symbolic link in the CUH...
# 			mv ~/Temporary ~/.Trash/ # Put the unof ACOS usr tmp folder symlink to the cur usr's trash...
# 			mkdir ~/Temporary # And make an UACOSUTF in the CUH.
# 		else # ... Or else...
# 			mkdir -p ~/Temporary # Make the UACOSUTF in the CUH.
# 		fi
# 	fi
#
# It would cause a sign inversion at some point to be kept clean. Checking that it doesn't exist as a symlink confronts to a weird sequence of events where one could ask '... Or else what?'.
