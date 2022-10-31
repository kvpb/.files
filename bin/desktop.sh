#!/usr/bin/env bash

if ! command -v bash &> /dev/null #|| ! "$(uname -s)" = "Darwin" &> /dev/null
then
	printf "%s\n" "Error: Software Incompatibility.\nThis BASH script depends on BASH and macOS."
	exit 1
fi

t_flag=
t_state=""
#[ -n "${1}" ] && [ "${1}" = "TRUE" -o "${1}" = "true" -o "${1}" = "YES" -o "${1}" = "yes" -o ${1} -eq 1 ] && t="TRUE" || t="FALSE"
#[ -z "${1}" ] && s=$()
s_kernel=""
#[ "${s_kernel}" = "Darwin" ] && s_systemsoftwareversion=$(defaults read loginwindow SystemVersionStampAsString | cut -f1,1 -d'.')
#[ "${s_kernel}" = "Darwin" ] && t_state=$(defaults read com.apple.finder CreateDesktop)

s_kernel=$(uname -s)
if [ "${s_kernel}" = "Darwin" ]
then
	t_state=$(defaults read com.apple.finder CreateDesktop)
fi
if [ -n "${1}" ]
then
	if [ "${1}" = "TRUE" -o "${1}" = "true" -o "${1}" = "YES" -o "${1}" = "yes" -o ${1} -eq 1 ]
	then
		t_flag="TRUE"
	else #elif [ "${1}" = "FALSE" -o "${1}" = "false" -o "${1}" = "NO" -o "${1}" = "no" -o ${1} -eq 0 ]
		t_flag="FALSE"
	fi
elif [ -z "${1}" ]
then
	if [ "${t_state}" = "1" ]
	then
		t_flag="FALSE"
	else
		t_flag="TRUE"
	fi
fi
defaults write com.apple.finder CreateDesktop -boolean "${t_flag}"
killall Finder

unset s_kernel
unset t_state
unset t_flag

#	desktop.sh
#	macOS Desktop Switch
#
#	Karl V. P. B. `kvpb` AKA Karl Thomas George West `ktgw`
#	+1 (DDD) DDD-DDDD
#	+33 A BB BB BB BB
#	local-part@domain
#	local-part@domain
#	https://www.linkedin.com/in//
#	https://twitter.com/ktgwkvpb
#	https://github.com/kvpb
#	https://vm.tiktok.com/ZSwAmcFh/

#	Copyright 2022 Karl Vincent Pierre Bertin
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
