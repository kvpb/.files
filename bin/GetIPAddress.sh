#!/usr/bin/env bash

s=$(uname -s)

if [ "${s}" = 'Linux' ]
then
	for i in {0..9}
	do
		ipconfig getifaddr en${i}
	done

elif [ "${s}" = 'Darwin' ]
then
	for i in {0..9}
	do
		ipconfig getifaddr en${i}
	done
	
else
	:
fi

#	GetIPAddress.sh
#	Get the IP address
#
#
#	Karl V. P. B. `kvpb`
#	+1 (DDD) DDD-DDDD
#	local-part@domain
#	https://www.linkedin.com/in/
#	https://twitter.com/
#	https://github.com/kvpb
#	https://vm.tiktok.com//
#
#	2021.10.12@19:35:15 $ h
#	2021-10-12           hostname -I
#	2021-10-12 18:57:49  man ifconfig
#	2021-10-12 18:58:31  ifconfig -l
#	2021-10-12 18:58:50  man ipconfig
#	2021-10-12 19:00:05  ifconfig -a
#	2021-10-12 19:00:35  ipconfig getifaddr en0
#	2021-10-12 19:05:04  ifconfig | grep 'inet'
#	2021-10-12 19:05:30  ipconfig getifaddr en1
#	2021-10-12 19:06:52  curl ipecho.net/plain
#	2021-10-12 19:15:19  ifconfig -a link
#	2021-10-12 19:20:51  ifconfig | grep 'inet ' | grep -v '127.0.0.1' | cut -d\  -f2
#	2021-10-12 19:29:59  man system_profiler 
#	2021-10-12 19:30:30  system_profiler -detailLevel basic
#	2021-10-12 19:31:31  system_profiler SPAirPortDataType
#	2021-10-12 19:35:00  networksetup -listallhardwareports
#	2021-10-12 19:36:47  ipconfig getifaddr en2

#	Copyright 2021 Karl V. P. Bertin
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
