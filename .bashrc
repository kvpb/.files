if [ -f /etc/bashrc ]
then
	source /etc/bashrc
fi

#   S H E L L   O P T I O N S

#set -o vi
shopt -s histappend

#   E N V I R O N M E N T   V A R I A B L E S

#   s y s t e m   e n v i r o n m e n t   v a r i a b l e s
#   e.g. EDITOR, HOME, LOGNAME, MAIL, MANPATH, PAGER, PATH, SHELL, USER, VISUAL

export MANPATH=$(manpath)

if [ "$(uname -s)" = "Darwin" -a -e /opt/local/bin/port ]
then
	export PATH=/opt/local/bin:/opt/local/sbin:${PATH} #export PATH=${PATH}:/opt/local/bin
	export MANPATH=/opt/local/share/man:${MANPATH}
fi
# MacPorts (https://guide.macports.org/chunked/installing.shell.html)
if [ "$(uname -s)" = "Darwin" -a -e /opt/homebrew/bin/brew ]
then
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi
# Homebrew (/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)")
. ${HOME}/.cargo/env # Rust & Cargo
#[[ -x "/usr/local/opt/ruby/bin/ruby" ]] && export PATH=/usr/local/opt/ruby/bin:${PATH}
export GEM_HOME=${HOME}/.gem
export GEM_PATH=${GEM_HOME}:${GEM_PATH}
# Ruby & RubyGems
if [ -L $(brew --prefix)/opt/python ]
then
	export PATH=$(brew --prefix)/opt/python/bin:${PATH}
else
	export PATH=/usr/local/bin:${PATH}
fi
# Python 3 (https://docs.python.org/3/using/mac.html)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
# NVM (https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating)
export PATH=${HOME}/.npm-global/bin:${PATH}
#export NPM_CONFIG_PREFIX=${HOME}/.npm-global
# NPM (https://docs.npmjs.com/resolving-eacces-permissions-errors-when-installing-packages-globally)
#export PATH=/usr/local/bin:${PATH} # Node.js & NPM (node-v14.16.1.pkg)
export PATH=/usr/local/octave/3.8.0/bin:${PATH} # Octave 3.8.0 (GNU_Octave_3.8.0-6.dmg/README.txt)
export PATH=${HOME}/.rbenv/bin:${PATH}
eval "$(rbenv init -)"
# RBEnv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"
# PYEnv
eval "$(thefuck --alias)" # The Fuck

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export VISUAL=vim
export EDITOR=${VISUAL}

export CLICOLOR=1
if [ $(man ls | tail -1 | cut -d' ' -f1) = 'GNU' ] #ls --color -d . > /dev/null 2>&1 # If this silenced command evaluates to true,
then # LS is the GNU LS,
	export LS_COLORS='di=34;46:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
else #elif ls -G -d . > /dev/null 2>&1 # or LS is the BSD LS.
#then
	export LSCOLORS=egfxcxdxbxegedabagacad # Finder color scheme for LS; default value: exfxcxdxbxegedabagacad
fi # Set the colors of LS.

export BASH_SILENCE_DEPRECATION_WARNING=1 # https://web.archive.org/web/20190604031607/https://support.apple.com/en-us/HT208050

#   s h e l l   e n v i r o n m e n t   v a r i a b l e s
#   e.g. MAILCHECK, PS1, PS2

#shopt -s histappend # (i) should be run here first; already is in .bashrc.
if [ ${BASH_VERSION::1} -lt 4 ]
then
	if [ ${BASH_VERSION:2:1} -lt 3 ] #if [ ${BASH_VERSION::3} -gt 3.2 ]
	then
		export HISTSIZE=10129639 #$(( 2147483647 / ( 80 + 132 ) ))
	fi
else
	export HISTSIZE=-1 #$(( 9223372036854775807 / ( 80 + 132 ) ))
fi
export HISTFILESIZE=${HISTSIZE}
export HISTFILE=${HOME}/.bash_history
export HISTCONTROL=ignoredups
export HISTIGNORE='cd*:d*:ls*:pwd*:git status*:git s*:g s*:git log*:git l*:g l*:history*:hy*:h*:clear:cls:c'
export HISTTIMEFORMAT="$(printf '\r\e[K')$(tput setaf 0)$(tput setab 7)%F %T$(tput sgr0)  "
export PROMPT_COMMAND='history -a; history -n'
export PS1='\[\033[7m\]\u@\h:\[\033[00m\]\[\033[4m\]\w\[\033[00m\]\n\[\033[7m\]\D{%Y.%m.%d}@\t\[\033[00m\] \[\033[7m\]\$\[\033[00m\] ' #PS1='\[\033[7m\]\u@\h\[\033[00m\] \[\033[7m\]\D{%Y.%m.%d}@\t\[\033[00m\] \[\033[7m\]\$\[\033[00m\] ' #PS1='\[\033[7m\]\D{%Y.%m.%d}@\t\[\033[00m\] \[\033[7m\]\u@\h\$\[\033[00m\] '

#   u s e r   e n v i r o n m e n t   v a r i a b l e s
#   e.g. PATH

if [ $(uname -s) = 'Darwin' ]
then
	export DOT=/Users/${USER}/.files
	export LIB=/Users/${USER}/Library
	export BIN=/Users/${USER}/bin
	export APP=/Users/${USER}/Applications
	export MSC=/Users/${USER}/Miscellaneous
	export DOC=/Users/${USER}/Documents
	export PIC=/Users/${USER}/Pictures
	export SIC=/Users/${USER}/Music
	export MOV=/Users/${USER}/Movies
	export DLD=/Users/${USER}/Downloads
	export DSK=/Users/${USER}/Desktop
	export PUB=/Users/${USER}/Public
	export TMP=/Users/${USER}/Temporary
	export TRH=/Users/${USER}/.Trash
	export VOL=/Volumes
fi

#   F U N C T I O N S   ( R O U T I N E S )

mf()
{
	for var in "${@}";
	do
		if [ -e "${var}" ];
		then
			printf "${var}: file exists\n";
		else
			:> "${var}";
			printf '\n' >> ${var};
		fi;
	done;
}; # mf, mkfl, makefiles
# MF	make files
# Touch tempers with the timestamps. MKFile does not create empty files. Sometimes, that's all you need.

ne()
{
	for file in "${@}";
	do
		if [ "$(tail -c 1 "${file}" | wc -l)" -eq 0 ];
		then
			printf '\n' >> ${file};
		else
			:;
		fi;
	done;
}; # ne, nfeol, writemissingnlateof
# NE	write NL at EOF
# The nae routine inserts a newline after the pre-end-of-file line, if that latter is not empty.

#md()
#{
#}; # md, mkdr, makedirectories
# MD	make directories

ms()
{
	S="${1}";

	python -c "import os, socket as s; s.socket(s.AF_UNIX).bind(os.environ['S'])";
}; # ms, mksock, makesockets
# MS	make sockets
# https://serverfault.com/a/914572

mcd()
{
	mkdir -p "${@}" && cd "${_}";
}; # mcd, makeandchangedirectory
# MCD	make directories, and change the working directory to it

function st
{
	A=(${@});
	s=${IFS};
	IFS=' '; #IFS=$'\n'
	S=($(sort <<< "${A[*]}"));
	IFS=${s}; #unset IFS;
	printf '%s\n' "${S}";
}; # ST	sort

rb()
{
	if [ "$#" -eq 0 ];
	then
		irb;
	else
		command ruby "$@";
	fi;
};

sqlite3-dump()
{
	pathname="${1}";

	sqlite3 "${pathname}" -cmd ".dump" "";
}; # sql, sqld, sqlite3-dump
# SQLite3-Dump	dump a database in an SQL text format

csv()
{
	file_CSV="${1}";

	column -s, -t < "${1}" | less -#2 -N -S;
}; # csv, rcsv, read-csv
# CSV	read, format and print a CSV file

g-p()
{
	local t=1
	local s=""

	if [ -f "${1}" ]
	then
		:
	else
		printf "%s\n" "Error: ${1} does not exist."
		return 1
	fi
	case "${2}" in
		"c" | "create" | "created" )
			s="created"
			;;
		"u" | "update" | "updated" )
			s="updated"
			;;
		#"d" | "delete" | "deleted" )
		#	s="deleted"
		#	;;
		* )
			t=0
			;;
	esac
	git add "${1}"
	if [ ${t} -eq 1 ]
	then
		git commit --message="${1} ${s}."
	else
		git commit --allow-empty-message --message=""
	fi
	git push
} # g-p, git-push
# Git-Push	

pn()
{
	printf "$(cd "$(dirname "${1}";)" && pwd -P;)/$(basename "${1}";)"'\n'; #echo $(cd "$(/usr/bin/dirname "${1}")" && pwd -P)/$(/usr/bin/basename "${1}");
}; # pn, pathname
# PN	return pathname

lt()
{
	printf "%s\n" {.{.?,[^.]},}*; #{..?*,.[^.]*,*}; #if [ $(printf $(f() { printf ${#}; } && f $(printf "%s${IFS}" .[^.]*;););) -gt 1 -a $(printf $(f() { printf ${#}; } && f $(printf "%s${IFS}" .[^*]*;););) -gt 1 ]; then printf '%s\n' {.{.?,[^.]},}*; else
}; # lt, list
# LT	builtin-only LS, an LS substitute from built-in commands

if ! ls -@eT > /dev/null 2>&1
then
	ll()
	{
		pwd && ls -AFlG;
	};
else
	ll()
	{
		pwd && ls -Ae@FTlG;
	};
fi; # ll, listlongly
# LL	locate yourself, and extendedly list all directory contents

pv()
{
	( set -o posix && set ); #( set -o posix; set ) | less; # '(list)    list  is  executed  in  a  subshell  environment (see COMMAND EXECUTION ENVIRONMENT below).' man bash
}; # pv, printvar, printvariables
# PV	print variables

function ae
{
	local A=("${@}"); #array= #E= #expression=
	readonly A;
	local s="${A[*]}"; #string= #E= #expression=
	readonly s;
	local i; #integer= #E= #evaluation=

	(( i = ${s} )); #i=$(( ${s} ));
	printf "%d\n" ${i};
}; # ae, arithmeticevaluation
# AE	builtin-only Expr, an Expr substitute from built-in commands

rn()
{
	number=${RANDOM};
	nombre=${RANDOM};
	index=$[RANDOM%5+1];
	operator[0]='';
	operator[1]='+';
	operator[2]='-';
	operator[3]='\*';
	operator[4]='/';
	operator[5]='%%'; # `%%` is a printf-only percent sign escaping.
	expression="${number} ${operator[${index}]} ${nombre}"; #printf "${index}\tdebug\n" && printf "${expression}\tdebug\n";

	if [ ${index} -eq 0 -o ${index} -eq 3 ];
	then
		expr ${number} \* ${nombre};
	else
		expr $(printf "${expression}";);
	fi;
}; # rn, randomnumber
# RN	output random numbers
# The rn function computes a pseudorandom number and then prints it.

ru()
{
	username='usr';
	number=$[RANDOM%9999+1];

	printf "${username}${number}"'\n';
}; # ru, run, randomusername
# RU	output random usernames

dcal()
{
	date | grep --context=6 --color "\b$(date +%e)\b" && cal | sed -n '1!p' | grep --context=6 --color "\b$(date +%e)\b";
};
# DCal	dated calendar
# Display a calendar, substitutes the month of the year with the current date in full format and highlights the current day of the month.

np()
{
	t=$(date +"%Y-%m-%d-%H-%M-%S");

	:> ${HOME}/${t}_entry.txt;
	${EDITOR} ${HOME}/${t}_entry.txt;
}; # NP	new page

ft() {
	if [ "$#" -eq 0 ]
	then
		declare -F | awk '{print $3}'
		return
	fi
	local name_function=$1
	shift
	if [ "$#" -eq 0 ] && [ -t 0 ]
	then
		if declare -F "$name_function" >/dev/null 2>&1
		then
			declare -f "$name_function"
		else
			printf "%s isn't a function.\n" "$name_function" >&2
			return 1
		fi
		return
	fi
	local code_function
	if [ "$#" -eq 0 ] && [ ! -t 0 ]
	then
		code_function=$( cat )
	else
		code_function=$*
	fi
	case "$code_function" in
		*"{"* )
			if [[ "$code_function" =~ ^[[:space:]]*\(\)[[:space:]]*\{ ]]
			then
				eval "${name_function}${code_function}"
			elif [[ "$code_function" =~ ^[[:space:]]*\{ ]]
			then
				eval "${name_function}() ${code_function}"
			else
				eval "${name_function}() { ${code_function}; }"
			fi
			;;
		* )
			eval "${name_function}() { ${code_function}; }"
			;;
	esac
}

cls()
{
	printf '\033[2J\033[3J\033[1;1H';
}; # cs, cls, clearscreen
# CLS	builtin-only MS-DOS, OS/2 & Microsoft Windows CLS
# Clears the terminal screen, if it can be done, and then writes the VT100 escape code, resets the terminal to the standard output under the control of the format.

#   M a c   s h e l l   f u n c t i o n s

makeFinderalias()
{
	local Location=$(\pwd;);
	local File=${1};
	local Folder=${2};

	if [[ "${File}" == /* ]] && [[ "${Folder}" == /* ]];
	then
		osascript -e "tell application \"Finder\" to make alias file to (POSIX file \"${File//\"/\\\"}\") at (POSIX file \"${Folder//\"/\\\"}\")" -e 'return';
	elif [[ "${File}" == /* ]] && [[ ! "${Folder}" == /* ]];
	then
		osascript -e "tell application \"Finder\" to make alias file to (POSIX file \"${File//\"/\\\"}\") at (POSIX file \"${Location}/${Folder//\"/\\\"}\")" -e 'return';
	elif [[ ! "${File}" == /* ]] && [[ "${Folder}" == /* ]];
	then
		osascript -e "tell application \"Finder\" to make alias file to (POSIX file \"${Location}/${File//\"/\\\"}\") at (POSIX file \"${Folder//\"/\\\"}\")" -e 'return';
	elif [[ ! "${File}" == /* ]] && [[ ! "${Folder}" == /* ]];
	then
		osascript -e "tell application \"Finder\" to make alias file to (POSIX file \"${Location}/${File//\"/\\\"}\") at (POSIX file \"${Location}/${Folder//\"/\\\"}\")" -e 'return';
	fi;
}; # mfa, mkfras, MakeFinderAlias
# MakeFinderAlias	make Finder aliases
# The MakeFinderAlias routine makes Finder aliases.

deleteDS_Store()
{
	find . -name '.DS_Store' -delete -print;
}; # ddss, DeleteDSStore
# DeleteDSStore	.DS_Store files deletion
# Finds from the current directory any file named .DS_Store, deletes it and displays the full file name of the standard output followed by a newline character.

resetLaunchPad()
{
	defaults write com.apple.dock ResetLaunchPad -boolean TRUE && killall Dock;
}; # rlp, ResetLaunchPad
# ResetLaunchPad	LaunchPad reset
# The ResetLaunchPad routine resets the layout of LaunchPad.

getbundleID()
{
	for i in ${#@}; do local A[${i}]=$(find /{,System/,/Users/${USER}/}Applications -mindepth 1 -maxdepth 1 -type d -iname ${i}); done;

	for i in ${A};
	do
		/usr/libexec/PlistBuddy -c 'Print CFBundleIdentifier' ${i}/Contents/Info.plist; #osascript -e 'ID of app "${i}"';
	done;
};

relaunch()
{
	for argument in "${@}";
	do
		path_application=$(ps -ax | grep "${argument}.app" | head -n 1 ) \
		&& path_application="${path_application#*/}" \
		&& path_application="${path_application%/*}" \
		&& path_application="${path_application%/*}" \
		&& path_application="${path_application%/*}" \
		&& path_application="/${path_application}";
		sleep 2; # Otherwise makes _LSOpenURLsWithCompletionHandler() fail with error -600.
		killall "${argument}";# && \
		while pgrep -f "${argument}" >/dev/null 2>&1;
		do
			:
		done; # Otherwise makes _LSOpenURLsWithCompletionHandler() fail with error -600.
		open "${path_application}";
	done;
}

wake()
{
	local n=${1};

	caffeinate -d -t $(( n * 60 * 60 ));
}

#   s p e c i f i c - u s e   f u n c t i o n s

update()
{
	#local instructionsetarchitecture="${HOSTTYPE}"; #local instructionsetarchitecture="$( uname -m )"; #local s_0="${s_1}'{}'${s_2}.${s_3}"; # Although POSIX-compliant shells, e.g. BSH, KSH, ASH, do not particularly interpret {}, FISH does, so quote it.
	#readonly instructionsetarchitecture;
	local systemsoftware="$( uname -s )";
	readonly systemsoftware;
	#if [ "${systemsoftware}" = 'Linux' ];
	#then
		#local packagemanager="$()";
		#readonly packagemanager;
	#fi;

	if [ -x /opt/local/bin/port ]; # If MacPorts is installed...
	then
		/opt/local/bin/port -N selfupdate > /dev/null 2>&1;
		/opt/local/bin/port -N upgrade outdated > /dev/null 2>&1;
		/opt/local/bin/port -N reclaim > /dev/null 2>&1;
	fi;

	if [ -x /opt/homebrew/bin/brew ] || [ -x /usr/local/bin/brew ] || command -v brew >/dev/null 2>&1; # If Homebrew is installed...
	then
		brew update;
		brew upgrade;
		brew upgrade --cask; #brew upgrade --cask --greedy;
		brew cleanup -s;
		brew doctor;
		brew missing;
	fi;

	case "${systemsoftware}" in
	Darwin) # macOS
		defaults write com.apple.dock ResetLaunchPad -boolean TRUE;
		killall Dock;
		;;
	Linux)
		;;
#	*)
#		;;
	esac;
};

#fn()
#{
#	;
#}; # FUNCTIONNAME, FUNCTIONNAMEn
# # MANPAGENAME
# # MANPAGESYNOPSIS
# # MANPAGEDESCRIPTION
# # PERSONALCOMMENT

#   A L I A S E S

#   s h e l l   s p e c i a l   b u i l t - i n   u t i l i t i e s   ( c o m m a n d s )
#
#

#   s h e l l   b u i l t i n   u t i l i t i e s   ( c o m m a n d s )

#	SUDo

#alias ffs='sudo $(!-1)'
alias ffs='sudo $(history -p \!\!)'
#alias ffs='sudo $(fc -ln -1)'

#	CD
# (i) Bourne Shell (SH) builtin.

alias d='cd '

alias ..='cd ..' # Change the working directory to the parent of the current one.
alias ...='cd ../..' # Change the working directory to the grandparent of the current one.
alias ....='cd ../../..' # Change the working direcrory to the great-grandparent of the current one.
alias .....='cd ../../../..' # Change the working directory to the great-great-grandparent of the current one.
alias ......='cd ../../../../..' # Change the working directory to the great-great-great-grandparent of the current one.
alias .......='cd ../../../../../..' # Change the working directory to the fossilized ancestor of the current one.
alias ........='cd ../../../../../../..' # dude
alias .........='cd ../../../../../../../..' # no
alias ..........='cd ../../../../../../../../..' # 
alias ...........='cd ../../../../../../../../../..' # 

alias rt='cd /' # Change the working directory to the root.

alias vl='cd /Volumes'
# Change the working directory to that of the mounted volumes.

alias ~='cd ${HOME}' # Change the working directory to the current user's home. # cd would do the same, and this is what I enter most, but it would break where the meaning of ~ changes.

alias .f='cd ${HOME}/.files && git status --short && printf "%s\n" '.gitnote:' && cat .gitnote && printf "\n"' # Change the working directory to that of my dot-files, show the working tree status, then concatenate and print .gitnote.

alias dt='cd ${HOME}/Desktop' # Change the working directory to that of the current user's desktop.

alias dx='cd ${HOME}/Documents' # Change the working directory to that of the current user's documents.

alias dl='cd ${HOME}/Downloads' # Change the working directory to that of the current user's downloads.

alias ly='cd ${HOME}/Library' # Change the working directory to that of the current user's library.

alias mz='cd ${HOME}/Movies' # Change the working directory to that of the current user's movies.

alias mc='cd ${HOME}/Music' # Change the working directory to the one of the current user's music.

alias px='cd ${HOME}/Pictures' # Change the working directory to the one of the current user's pictures.

alias ms='cd ${HOME}/Miscellaneous' # Change the working directory to the one of my miscellaneous files.

alias wk='cd ${HOME}/Work' # Change the working directory to the one of my work in progress.

alias tf='cd ${HOME}/Temporary' # Change the working directory to the one of the current user's temporary files.

alias th='cd ${HOME}/.Trash' # Change the working directory to the one of the current user's trash.

#	Source
#	(i) Bourne-Again Shell (BASH) builtin.

#alias src='source '
alias sc='source '
#alias s='source '

#	CHDir
# (i) Z Shell (ZSH) builtin.

#alias d='chdir '

#	Exec

alias ns='exec ${SHELL} -l ' # Execute the default login shell as a login shell. (Replace the current shell process image with a new one.)
alias rl='exec ${SHELL} -l ' # Execute the default login shell as a login shell. (Replace the current shell process image with a new one.)

#	History

alias hy='history'
#alias h='history | tail -n 20'
alias _='!-2'

#	PrintEnv		print out the environment

alias pe='(set -o posix; set) | cat'

#	Exit

#alias e='exit'

#   ' i n t e r n a l '   p r o g r a m s   ( c o m m a n d s )

#	Pico

if [ $(which micro) ]
then
	alias pico='micro '
	alias pc='micro '
	alias p='micro '
fi

#	VI
#	VIM

alias vi='vim +star '
alias vim='vim +startinsert '
alias v='vim '

#	MKDir

alias md='mkdir '

#	KillAll

alias ka='killall '
#alias k='killall '

#	Ruby

#alias rb='ruby '

#	Python

alias py='python '
alias py2='python2 '
alias py3='python3 '

alias ct='python -c "import sys; print( len(sys.argv[1]) );" ' # Count the characters of a given string.

alias uc='python3 -c "import sys; print(sys.argv[1].upper());" ' # Increase the case of the first given string.
alias lc='python3 -c "import sys; print(sys.argv[1].lower());" ' # Lower the case of the first given string.

#	JSC
#
#alias jsc='/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc '
#alias js='/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc '

#	Node

#alias njs='node '
#alias nj='node '
alias nd='node '
alias js='node '

#	OSAScript

#alias osas='osascript '
alias osa='osascript '
#alias os='osascript '

#	TAR

alias tgz='tar -czfv ' # Create a new archive containing the specified items then compress the resulting archive with GZip, listing each file name as it is read written to the archive.

#	ZIP

alias zip='ditto -c -k --sequesterRsrc --keepParent '

#	RSync

#alias rsync-copy='rsync -avz --progress -h '
#alias rsync-move='rsync -avz --progress -h --remove-source-files '
#alias rsync-synchronize='rsync -avzu --delete --progress -h '
#alias rsync-update='rsync -avzu --progress -h '
# somebody else's RSync aliases

#	Open

#alias opn='open '
#alias op='open '
#alias on='open '
alias o='open '

alias te='open -e ' # Open file with TextEdit.

alias vs='open -b com.microsoft.VSCode '
#alias vsc='open -b com.microsoft.VSCode '
# Open file with Visual Studio Code.

alias pw='open -b com.apple.Preview ' # Open file with Preview.

#alias qt='open -b com.apple.QuickTimePlayerX '
#alias qtp='open -b com.apple.QuickTimePlayerX '
# Open file with QuickTime Player.

#alias si='open -b com.apple.Safari ' # Open file with Safari.

#alias vlc='open -b org.videolan.vlc ' # Open file with VLC Media Player.

#alias aps='open -b com.adobe.Photoshop '
#alias ps='open -b com.adobe.Photoshop '
# Open file with Photoshop CS6.

#alias pslr='open -b com.adobe.Lightroom6 '
#alias lr='open -b com.adobe.Lightroom6 '
# Open file with Photoshop Lightroom 6.

#alias mwd='open -b com.microsoft.Word '
#alias wd='open -b com.microsoft.Word '
# Open file with Word for Mac 2011.

#alias mxl='open -b com.microsoft.Excel '
#alias xl='open -b com.microsoft.Excel '
# Open file with Excel for Mac 2011.

#alias gvi='open -b org.vim.MacVim ' # Open file with MacVim.

alias rf='open -R ' # Show file in Finder.

#	XAttr

alias dxa='xattr -rc .' # Remove every file's all extended attributes of the current directory recursively.

#	QLManage

#alias QuickLook='qlmanage '
#alias quicklook='qlmanage '
alias ql='qlmanage '

alias qlp='qlmanage -p ' # Display the Quick Look generated preview for the specified files.

# 	LS

if ls --color > /dev/null 2>&1 # If this silenced command evaluates to true,
then # the implemented LS is the GNU LS,
	alias ls='ls --color ' # so colorize the output of GNU LS,
else # or else the implemented LS is the BSD LS, so
	alias ls='ls -G '
fi # Colorize the output of LS.
#alias ls='lf -F ' # Type the output of LS.
alias l='ls '

alias lh='ls -Ad .*' # List directory hidden files.
#alias lh='la -1AdF .*'

alias lf='ls -AF | grep -v -e / -e \* -e @ -e = -e % -e \| -e \>' # List the regular files of the directory.

alias lhf='ls -AdF .* | grep -v -e / -e \* -e @ -e = -e % -e \| -e \>' # List the hidden regular files of the directory.

alias ld='ls -d */' # List the subdirectories of the directory.

alias lhd='ls -d .*/ | tail -n +3' # List the hidden subdirectories of the directory.

alias la='ls -a ' # List all directory contents.
#alias la='ls -1aF '

#alias l='ls -1F ' # List simply directory contents.

alias lt="gfind . -mindepth 0 -maxdepth 1 -printf '%TY.%Tm.%Td %TH:%TM:%TS %f\n'" # Sort directory contents by ascending time modified, and list them.

#	DU

alias du='du -c -d 0 -h ' # Display DU stats with a grand total, an entry for all files and directories 0 directories deep, human-readably.

#	PrintF
#
#

#	Less

alias les='less ' # Ha, even less, motherfucker.

#	Clear
#
#alias clr='clear '
#alias cl='clear '
#alias c='clear '

#	PlistBuddy

#alias PlistBuddy='/usr/libexec/PlistBuddy '
#alias plistbuddy='/usr/libexec/PlistBuddy '
alias pb='/usr/libexec/PlistBuddy '

#	SoftwareUpdate

alias swu='softwareupdate '
#alias sw='softwareupdate '

#	AirPort

#alias AirPort='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport '
#alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport '
alias ap='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport '

#	Caffeinate

alias caffeinate='caffeinate -d -t $(( 60 * 60 ))'

#	Man

alias mn='man '
#alias hp='man '
#alias i='man '

alias ascii='man ascii' # Output the man page of the ASCII character sets.

#   e x t e r n a l   p r o g r a m s   ( c o m m a n d s )

#	RBEnv

alias rbenv-update='curl -fsSL https://rbenv.org/install.sh | bash'
alias rbenv-install-latest='rbenv install $(rbenv install --list | grep --invert-match - | tail -1)'

#	Octave

alias oct='octave '

# 	Git

#alias git='/usr/local/git/bin/git ' # Get fucked, Apple. /i\ requires Git for macOS from the official website. http://git-scm.com/
alias g='git '

#	FSWatch

alias fsw='fswatch '
#alias fw='fswatch '

#	MAS-CLI
#
#alias mas='mas-cli '

#	The Fuck

alias f='fuck '
alias gz='fuck '

#	Homebrew

alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew' # https://github.com/pyenv/pyenv?tab=readme-ov-file#homebrew-in-macos

#	Ruby On Rails

alias serve="rails assets:clobber; rails assets:precompile; rails server"

#   s h e l l   f u n c t i o n s

#alias cs='cls'
alias c='clear && clear' #alias c='cls'

alias mfa='makeFinderalias '

alias dds='deleteDS_Store'

#   c o m p u t e r   p r o g r a m s

#alias SetVolume='sh ${HOME}/.files/bin/SetVolume.sh'
#alias setvol='sh ${HOME}/.files/bin/SetVolume.sh'
alias sv='sh ${HOME}/.files/bin/SetVolume.sh'

alias ring='sh ${HOME}/.files/bin/alarm.sh'
alias rg='sh ${HOME}/.files/bin/alarm.sh'

#alias RPwG='ruby ${HOME}/.files/bin/rpwg.py'
alias rpwg='python3 ${HOME}/.files/bin/rpwg.py'
alias pw='python3 ${HOME}/.files/bin/rpwg.py'

#   E T   C E T E R A

bind -r '\C-s'
stty -ixon

#	.bashrc
#	BASH initialization file
#	https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_03_01.html
#
#	Karl V. P. B. `kvpb`	AKA Karl Thomas George West `ktgw`
#	+33 A BB BB BB BB		+1 (DDD) DDD-DDDD
#	local-part@domain		local-part@domain
#	kvpb.fr					
#	https://x.com/ktgwkvpb	
#	https://github.com/kvpb	

#	Copyright 2014 Karl Vincent Pierre Bertin
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
