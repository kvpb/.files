#!/usr/bin/env zsh

port -qv installed > myports.txt
# '3.a.  Save the list of installed ports.'

port echo requested | cut -d ' ' -f 1 | uniq > requested.txt
# '3.b.  Save the list of requested ports.'

sudo port -f uninstall installed
# '3.c.  Uninstall all installed ports.'

sudo port reclaim
# '3.d.  Run a regular clear out of your installation.'

curl --location --remote-name https://github.com/macports/macports-contrib/raw/master/restore_ports/restore_ports.tcl
chmod +x restore_ports.tcl
xattr -d com.apple.quarantine restore_ports.tcl
sudo ./restore_ports.tcl myports.txt
# '3.e.  Download and execute the restore_ports script.'

sudo port unsetrequested installed
xargs sudo port setrequested < requested.txt
# '3.f.  Restore requested status: if you saved the list of requested ports, you can now restore the requested flags for your newly installed ports to their former states.'

#	MigrateMacPorts.sh
#	Migrate MacPorts
#	https://trac.macports.org/wiki/Migration
#
#	Karl V. P. B. `kvpb`     AKA Karl Thomas George West `ktgw`
#	+33 A BB BB BB BB        +1 (DDD) DDD-DDDD
#	local-part@domain        local-part@domain
#	https://github.com/kvpb
#
#	All the leaves are brown
#	And the sky is gray
#	I've been for a walk
#	On a winter's day
#	If I didn't tell her
#	I could leave today

#	Copyright 2022 Karl V. P. B. AKA Karl Thomas George West
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
