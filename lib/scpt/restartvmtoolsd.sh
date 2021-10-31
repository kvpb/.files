#!/usr/bin/env bash

#kernel=$(uname -s) # the name of the kernel.
[ $(uname -o) = 'GNU/Linux' -a ! -z $(which lsb_release) ] && operatingsystem=$(lsb_release -i | cut -f2) #operatingsystem=$(uname -o) # the name of the operating system.
shell=$(readlink -f $(which sh)) # the UNIX shell.
script="$(basename "$(test -L "${0}" && readlink "${0}" || echo "${0}")")" #script=`basename "${0}"` # the script.
#processinfo=$(ps -ef | grep '[0-9][0-9]:[0-9][0-9]:[0-9][0-9] /usr/bin/vmtoolsd -n vmusr') # the process info of VMToolsD.
#tokens=( ${processinfo} ) # the tokenized data.
process= # the process info of VMToolsD.

if [ ${shell} != '/usr/bin/bash' ]
then
	printf "Error: Software Incompatibility\n${SHELL} actually is ${shell}. As ${script} is a BASH script, it requires BASH.\n"
	if [ ${operatingsystem} = 'Ubuntu' ]
	then
		printf '\t%s\n' "This operating system is ${operatingsystem}. If you want to set BASH as the default system shell, run sudo dpkg-reconfigure dash."
	fi
	exit 1
fi # Ensure BASH, since restartvmtoolsd.sh requires it.
process=$(ps -ef | grep '[0-9][0-9]:[0-9][0-9]:[0-9][0-9] /usr/bin/vmtoolsd -n vmusr') && process=( ${process} ) # the process info of VMToolsD, tokenized.
kill ${process[1]} # Send TERM to the PID of VMToolsD.
/usr/bin/vmtoolsd -n vmusr & > /dev/null 2>&1 # Restart VMToolsD.

# restartvmtoolsd.sh
# Restart VMToolsD
#
# Austin Dean
# https://superuser.com/users/347416/austin-dean
# Karl V. P. Bertin `kvpb`
# https://www.linkedin.com/in/karlbertin
#
#	#!/bin/bash
#	processString=$(ps -ef | grep '[0-9][0-9]:[0-9][0-9]:[0-9][0-9] /usr/bin/vmtoolsd -n vmusr') # get process info for vmtoolsd
#	tokens=( ${processString} ) # tokenize
#	kill "${tokens[1]}" # grab pid and kill it
#	/usr/bin/vmtoolsd -n vmusr & > /dev/null 2>&1 # restart vmtoolsd
# https://superuser.com/a/1323289

