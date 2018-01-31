#!/usr/bin/env bash

# Installfswatch.sh
# Install fswatch latest version

mkdir -p ${HOME}/Temporary
cd ${HOME}/Temporary
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
# [2018.02.01, 00:03:57: Boy, I took an hour to write this variable from scratch without getting that it is exactly the same as Vincze's. Mother way, what a waste of time. It's really time to go to sleep. Well on the plus side, I finally jumped into regex for real this time. That wasn't that complicated, was it? I can't complain... But I do anyway. Let's reload the Navigo down the street and get back to bed. I have a motorcycle to drive this morning, and I didn't get on any since last october. Man, do I miss this.

	latestreleaseurl="https://github.com/emcrisostomo/fswatch/releases/download/${latestversion}/fswatch-${GitHub_tag_name}.tar.gz"
#}

curl -Lk ${latestreleaseurl} -o fswatch-latest.tar.gz
# Download fswatch's latest version's gzip-compressed tape archive.

tar -xzvf fswatch-latest.tar.gz
cd fswatch-*
./configure && make && make install && make installcheck && make clean # (i) Cf https://github.com/emcrisostomo/fswatch/blob/master/INSTALL for more info.
# Unarchive fswatch-latest.tar.gz, go to its directory, and install it.

cd ..
mv fswatch-latest.tar.gz ../Downloads/
# Go to previous directory, and put fswatch-latest.tar.gz in ${currentuser}'s Downloads/ folder.

cd ..
rm -rf Temporary
# Go to previous directory, ${currentuser}'s ${HOME} directory, and remove ${UnofficialAppleTemporaryFolder}.

# Download mas-cli, built it, and install it.
