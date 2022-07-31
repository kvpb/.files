systemsoftware="$(uname -s)"
registersize="$(getconf LONG_BIT)"
ls --G >/dev/null 2>&1 && LSimplementation='BSD' || LSimplementation='GNU'

# System Environment Variables (e.g. EDITOR, HOME, LOGNAME, MAIL, MANPATH, PAGER, PATH, SHELL, USER, VISUAL)

#export PATH=/usr/local/bin:${PATH} # Python (https://docs.python.org/3/using/mac.html)
export PATH=/usr/local/opt/ruby/bin:${PATH} # Ruby
export PATH=/usr/local/bin:${PATH} # Node.js & NPM (node-v14.16.1.pkg)
export PATH=${HOME}/.npm-global/bin:${PATH}
#export NPM_CONFIG_PREFIX=${HOME}/.npm-global
# NPM (https://docs.npmjs.com/resolving-eacces-permissions-errors-when-installing-packages-globally)
export PATH=/usr/local/octave/3.8.0/bin:${PATH} # Octave 3.8.0 (GNU_Octave_3.8.0-6.dmg/README.txt)
export PATH=/opt/local/bin:/opt/local/sbin:${PATH} #export	PATH=${PATH}:/opt/local/bin # MacPorts (https://guide.macports.org/chunked/installing.shell.html)
export MANPATH=/opt/local/share/man:${MANPATH} # MacPorts (https://guide.macports.org/chunked/installing.shell.html)

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export VISUAL=vim
export EDITOR=${VISUAL}

export CLICOLORS=1
if [ ${LSimplementation} = 'BSD' ] # If this is true,
then # LS is the GNU LS,
	export LSCOLORS=egfxcxdxbxegedabagacad # 'Finder Color Scheme' for LS; default value: exfxcxdxbxegedabagacad
else #elif [ ${LSimplementation} = 'GNU' ] # or else it is the BSD LS,
	export LS_COLORS='di=34;46:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
fi # so set the colors of LS.

# Shell Environment Variables (e.g. MAILCHECK, PS1, PS2)

#export ZDOTDIR=${HOME}/.zsh.d

export KEYTIMEOUT=1

if [ ${registersize} = '64' ]
then
	export HISTSIZE=9223372036854775807
else #elif [ ${b} = '32' ]
	export HISTSIZE=2147483647
fi # https://www.zsh.org/mla/users/2013/msg00691.html
export HISTFILESIZE=${HISTSIZE}
export HISTFILE=${HOME}/.zsh_history

export PS1='%S%n@%m:%s%U%~%u'$'\n''%S%D{%Y.%m.%d}@%*%s %S%#%s ' #PROMPT='%S%n@%m%s %S%D{%Y.%m.%d}@%*%s %S%#%s ' #PROMPT='%n@%m%# ' && RPROMPT='%D{%Y.%m.%d}@%*'

# User Environment Variables (e.g. PATH)

if [ ${systemsoftware} = 'Darwin' ]
then
	export DOT=/Users/${USER}/.files #export DOTFILES=/Users/${USER}/.files
	export LIB=/Users/${USER}/Library #export LIBRARY=/Users/${USER}/Library
	export BIN=/Users/${USER}/bin #export BINARIES=/Users/${USER}/bin
	export APP=/Users/${USER}/Applications #export APPLICATIONS=/Users/${USER}/Applications
	export WRK=/Users/${USER}/Work #export WORK=/Users/${USER}/Work
	export MSC=/Users/${USER}/Miscellaneous #export MISCELLANEOUS=/Users/${USER}/Miscellaneous
	export DOC=/Users/${USER}/Documents #export DOCUMENTS=/Users/${USER}/Documents
	export PIC=/Users/${USER}/Pictures #export PICTURES=/Users/${USER}/Pictures
	export MUS=/Users/${USER}/Music #export MUSIC=/Users/${USER}/Music
	export MOV=/Users/${USER}/Movies #export MOVIES=/Users/${USER}/Movies
	export DLD=/Users/${USER}/Downloads #export DOWNLOADS=/Users/${USER}/Downloads
	export DSK=/Users/${USER}/Desktop #export DESKTOP=/Users/${USER}/Desktop
	export PUB=/Users/${USER}/Public #export PUBLIC=/Users/${USER}/Public
	export TMP=/Users/${USER}/Temporary #export TEMPORARY=/Users/${USER}/Temporary
	export TRH=/Users/${USER}/.Trash #export TRASH=/Users/${USER}/.Trash
#elif [ ${systemsoftware} = 'Linux' ]
#then
#	
fi

#	.zshenv
#	ZSH Startup File 1
#	https://zsh.sourceforge.io/Intro/intro_3.html
#
#	Karl V. P. B. `kvpb`
#	+1 (DDD) DDD-DDDD
#	local-part@domain
#	https://www.linkedin.com/in/
#	https://twitter.com/
#	https://github.com/kvpb
#	https://vm.tiktok.com//

#	Copyright 2014 Karl V. P. Bertin
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
