#!/usr/bin/env bash

kernel=$(uname -s;);
#[ "${kernel}" = 'Darwin' ] && firmwareversion=$(defaults read loginwindow SystemVersionStampAsString | cut -d. -f2- | cut -f1,1 -d'.';);
#string=${IFS} && IFS=$'\n';
dateandtime=$(date "+%y-%m-%d_%H-%M-%S";);
#n=$[RANDOM%99+1] && while [ -e ${HOME}/Temporary/Folder${n} ]; do n=$[RANDOM%99+1]; done;
workingdirectory=$(pwd;);

#mkdir -p /Users/${USER}/Temporary/Folder${n}
#cd /Users/${USER}/Temporary/Folder${n}
cd ${HOME}/Desktop
mkdir -p FirefoxSavedata
cd ${HOME}/Desktop/FirefoxSavedata
printf "$(date)\n\n" > Info.txt
cd ${HOME}/Library/Application\ Support/Firefox
printf "$(pwd)\n$(ls)\n\n" >> ${HOME}/Desktop/FirefoxSavedata/Info.txt
for i in {installs,profiles}.ini
do
	tar -czf "${i%%.ini}_${dateandtime}.tgz" "${i}"
	mv "${i%%.ini}_${dateandtime}.tgz" ${HOME}/Desktop/FirefoxSavedata/
done
cd ${HOME}/Library/Application\ Support/Firefox/Profiles
printf "$(pwd)\n$(ls)\n" >> ${HOME}/Desktop/FirefoxSavedata/Info.txt
for j in *.default{,-release}
do
	tar -czf "${j%%.default*}_${dateandtime}.tgz" "${j}"
	mv "${j%%.default*}_${dateandtime}.tgz" ${HOME}/Desktop/FirefoxSavedata/
done
cd ${workingdirectory}
#rm -d ${HOME}/Temporary/Folder${n}
exit 0

#	SaveFirefoxData.sh
#	Save Firefox data
#	https://support.mozilla.org/en-US/kb/back-and-restore-information-firefox-profiles
#
#	Karl V. P. B. `kvpb`
#	+1 (DDD) DDD-DDDD
#	local-part@domain
#	https://www.linkedin.com/in/
#	https://twitter.com/
#	https://github.com/kvpb
#	https://vm.tiktok.com//

#	Copyright 2019 Karl V. P. Bertin
#
#	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
#
#	1.  Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
#
#	2.  Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
#
#	3.  Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
#
#	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
