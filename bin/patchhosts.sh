#!/usr/bin/env bash

#sudo -- sh -c -e 'echo "127.0.0.1	" >> /etc/hosts'
#sudo -- sh -c -e 'echo "fe80::1%lo0	" >> /etc/hosts'
sudo -- sh -c -e 'echo "127.0.0.1	facebook.com" >> /etc/hosts'
sudo -- sh -c -e 'echo "fe80::1%lo0	facebook.com" >> /etc/hosts'
sudo -- sh -c -e 'echo "127.0.0.1	www.facebook.com" >> /etc/hosts'
sudo -- sh -c -e 'echo "127.0.0.1	m.facebook.com" >> /etc/hosts'
sudo -- sh -c -e 'echo "fe80::1%lo0	m.facebook.com" >> /etc/hosts'
sudo -- sh -c -e 'echo "127.0.0.1	en-gb.facebook.com" >> /etc/hosts'
sudo -- sh -c -e 'echo "127.0.0.1	fr-fr.facebook.com" >> /etc/hosts'
sudo -- sh -c -e 'echo "127.0.0.1	login.facebook.com" >> /etc/hosts'
sudo -- sh -c -e 'echo "fe80::1%lo0	login.facebook.com" >> /etc/hosts'
sudo -- sh -c -e 'echo "127.0.0.1	www.login.facebook.com" >> /etc/hosts'
sudo -- sh -c -e 'echo "fe80::1%lo0	www.login.facebook.com" >> /etc/hosts'
sudo -- sh -c -e 'echo "127.0.0.1	fbcdn.com" >> /etc/hosts'
sudo -- sh -c -e 'echo "fe80::1%lo0	fbcdn.com" >> /etc/hosts'
sudo -- sh -c -e 'echo "127.0.0.1	www.fbcdn.com" >> /etc/hosts'
sudo -- sh -c -e 'echo "fe80::1%lo0	www.fbcdn.com" >> /etc/hosts'
sudo -- sh -c -e 'echo "127.0.0.1	fbcdn.net" >> /etc/hosts'
sudo -- sh -c -e 'echo "fe80::1%lo0	fbcdn.net" >> /etc/hosts'
sudo -- sh -c -e 'echo "127.0.0.1	www.fbcdn.net" >> /etc/hosts'
sudo -- sh -c -e 'echo "fe80::1%lo0	www.fbcdn.net" >> /etc/hosts'
sudo -- sh -c -e 'echo "127.0.0.1	static.ak.fbcdn.net" >> /etc/hosts'
sudo -- sh -c -e 'echo "fe80::1%lo0	static.ak.fbcdn.net" >> /etc/hosts'
sudo -- sh -c -e 'echo "127.0.0.1	connect.facebook.net" >> /etc/hosts'
sudo -- sh -c -e 'echo "fe80::1%lo0	connect.facebook.net" >> /etc/hosts'
sudo -- sh -c -e 'echo "127.0.0.1	www.connect.facebook.net" >> /etc/hosts'
sudo -- sh -c -e 'echo "fe80::1%lo0	www.connect.facebook.net" >> /etc/hosts'
sudo -- sh -c -e 'echo "127.0.0.1	static.ak.connect.facebook.com" >> /etc/hosts'
sudo -- sh -c -e 'echo "fe80::1%lo0	static.ak.connect.facebook.com" >> /etc/hosts'
sudo -- sh -c -e 'echo "127.0.0.1	apps.facebook.com" >> /etc/hosts'
sudo -- sh -c -e 'echo "fe80::1%lo0	apps.facebook.com" >> /etc/hosts'
sudo -- sh -c -e 'echo "127.0.0.1	twitter.com" >> /etc/hosts'
sudo -- sh -c -e 'echo "127.0.0.1	www.twitter.com" >> /etc/hosts'
sudo -- sh -c -e 'echo "127.0.0.1	youtube.com" >> /etc/hosts'
sudo -- sh -c -e 'echo "127.0.0.1	www.youtube.com" >> /etc/hosts'
sudo dscacheutil -flushcache
printf '\xF0\x9F\x9A\xAE\n'

#	patchhosts.sh
#	patch hosts file
#
#	Karl V. P. B. `kvpb`
#	+1 (DDD) DDD-DDDD
#	local-part@domain
#	https://www.linkedin.com/in/
#	https://twitter.com/
#	https://github.com/kvpb
#	https://vm.tiktok.com//
#
#	'PHILIPPE ! JE SAIS OÙ TU T'CACHES ! VIENS ICI QUE J'TE BUTE, ENCULÉ !'
#	'TA GUEULE ! VIENS ICI, SALE ENCULÉ !'
#	'SALAUD !'

#	Copyright 2021 Karl Vincent Pierre Bertin
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
