#!/usr/bin/env bash

# Installmas-cli.sh
# Install mas-cli latest

# function() # 'Download artifacts from a latest GitHub release with bash and PowerShell' by Mark Vincze on july 9, 2016 (https://web.archive.org/web/20180131223312/https://blog.markvincze.com/download-artifacts-from-a-latest-github-release-in-sh-and-powershell/), customized by Karl Bertin on 2018.1.31, 22:30:00
#{
	latestrelease=$(curl -L -s -H 'Accept: application/json' https://github.com/mas-cli/mas/releases/latest)

	# The releases are returned in the format {"id":3622206,"tag_name":"hello-1.0.0.11",...}, we have to extract the tag_name.
	latestversion=$(echo $latestrelease | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')

	latestreleaseurl="https://github.com/mas-cli/mas/releases/download/${latestversion}/mas-cli.zip"
#}

mkdir -p ${HOME}/Temporary
cd ${HOME}/Temporary
curl -sLk ${latestreleaseurl} -o mas-cli.zip
unzip mas-cli.zip
mv mas /usr/local/bin/
mv mas-cli.zip ../Downloads/
cd ..
rmdir Temporary
# Download mas-cli, and install it.
