#!/usr/bin/env bash

# Installfswatch.sh
# Install fswatch latest

mkdir -p ${HOME}/Temporary
chdir ${HOME}/Temporary
# Add ${UnofficialAppleTemporaryDirectory} to ${currentuser}'s ${HOME}, and go to it.

# function() # 'Download artifacts from a latest GitHub release with bash and PowerShell' by Mark Vincze on july 9, 2016 (https://web.archive.org/web/20180131223312/https://blog.markvincze.com/download-artifacts-from-a-latest-github-release-in-sh-and-powershell/), customized by Karl Bertin on 2018.1.31, 22:30:00
#{
	latestrelease=$(curl -L -s -H 'Accept: application/json' https://github.com/emcrisostomo/fswatch/releases/latest)

	# The releases are returned in the format {"id":3622206,"tag_name":"hello-1.0.0.11",...}, we have to extract the tag_name.
	latestversion=$(echo $latestrelease | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')

	GitHub_tag_name=$(echo ${latestrelease} | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/') # sed two addresses and regular expression explanation, cf http://www.rexegg.com/regex-quickstart.html:
#            `s` : 'Substitute', cf 
#            `/` : A delimiter, cf 
#            `.` : 'Any character except line break'.
#            `*` : 'Zero or more' [of the previous character].
# `"tag_name":"` : Characters string of the input.
#  `\(` ... `\)` : 'Capturing group'.
#    `[` ... `]` : 'One of the characters in the brackets'.
#            `^` : '[^inside brackets], it means "not"' [the next char].
#            `"` : Character of the input.
#            `*` : 'Zero or more' [of the previous of]...
#            `"` : Character of the input.
#            `.` : 'Any character except line break'.
#            `*` : 'Zero or more' [of the previous character].
#            `/` : A delimiter, cf 
#           `\1` : 'Contents of Group 1'.
#            `/` : A delimiter, cf

	latestreleaseurl="https://github.com/emcrisostomo/fswatch/releases/download/${latestversion}/fswatch-${GitHub_tag_name}.tar.gz"
#}

curl -sLk ${latestreleaseurl} -o fswatch-latest.tar.gz
# Download fswatch's latest version's gzip-compressed tape archive.

tar -xzf fswatch-latest.tar.gz
chdir fswatch-*
./configure && make && make install && make installcheck && make clean # (i) Cf https://github.com/emcrisostomo/fswatch/blob/master/INSTALL for more info.
# Unarchive fswatch-latest.tar.gz, go to its directory, and install it.

chdir ..
mv fswatch-latest.tar.gz ../Downloads/
# Go to previous directory, and put fswatch-latest.tar.gz in ${currentuser}'s Downloads/ folder.

chdir ..
rmdir Temporary
# Go to previous directory, ${currentuser}'s ${HOME} directory, and remove ${UnofficialAppleTemporaryFolder}.

# Download mas-cli, built it, and install it.
