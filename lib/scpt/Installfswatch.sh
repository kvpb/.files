#!/usr/bin/env bash

# function() # 'Download artifacts from a latest GitHub release with bash and PowerShell' by Mark Vincze on july 9, 2016 (https://web.archive.org/web/20180131223312/https://blog.markvincze.com/download-artifacts-from-a-latest-github-release-in-sh-and-powershell/), custom by Karl Bertin on 2018.1.31, 22:30:00
#{
	latestrelease=$(curl -L -s -H 'Accept: application/json' https://github.com/emcrisostomo/fswatch/releases/latest)

	# The releases are returned in the format {"id":3622206,"tag_name":"hello-1.0.0.11",...}, we have to extract the tag_name.
	latestversion=$(echo $latestrelease | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')

	GitHubtagname=$(echo ${latestrelease} | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/') # sed two addresses and regular expression explanation, cf http://www.rexegg.com/regex-quickstart.html:
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
# [2018.02.01, 00:03:57: Boy, it took me an hour to write this variable from scratch without ever spotting that it is exactly the same as Vincze's.

	latestreleaseURL="https://github.com/emcrisostomo/fswatch/releases/download/${latestversion}/fswatch-${GitHubtagname}.tar.gz"
#}

mkdir -p ${HOME}/Temporary
cd ${HOME}/Temporary
# Add ${UnofficialAppleTemporaryDirectory} to ${currentuser}'s ${HOME}, and go to it.

curl -Lk ${latestreleaseURL} -o fswatch-latest.tar.gz
# Download fswatch's latest version's gzip-compressed tape archive.

tar -xzvf fswatch-latest.tar.gz
cd fswatch-*
./configure && make && make install && make installcheck && make clean # Cf https://github.com/emcrisostomo/fswatch/blob/master/INSTALL for more info.
# Unarchive fswatch-latest.tar.gz, go to its directory, and install it.

cd ..
mv fswatch-latest.tar.gz ../Downloads/
# Go to previous directory, and put fswatch-latest.tar.gz in ${currentuser}'s Downloads/ folder.

cd ..
rm -rf Temporary
# Go to previous directory, ${currentuser}'s ${HOME} directory, and remove ${UnofficialAppleTemporaryFolder}.

# Download fswatch, built it, and install it.

# Installfswatch.sh
# Install fswatch latest version
# 
# Karl V. P. Bertin `kvpb`
# Telephone: +33 A BB BB BB BB
# Email: local-part@domain
