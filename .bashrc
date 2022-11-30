if [ -f /etc/bashrc ]
then
	source /etc/bashrc
fi

#   S H E L L   O P T I O N S

#set -o vi
shopt -s histappend

#   E N V I R O N M E N T   V A R I A B L E S

# System Environment Variables (e.g. EDITOR, HOME, LOGNAME, MAIL, MANPATH, PAGER, PATH, SHELL, USER, VISUAL)

export MANPATH=$(manpath)

if [ "$(uname -s)" = "Darwin" -a -e /opt/local/bin/port ]
then
	export PATH=/opt/local/bin:/opt/local/sbin:${PATH} #export PATH=${PATH}:/opt/local/bin
	export MANPATH=/opt/local/share/man:${MANPATH}
fi
# MacPorts (https://guide.macports.org/chunked/installing.shell.html)
#[ "$(uname -s)" = "Darwin" -a -e /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)" # Homebrew (/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)")
. ${HOME}/.cargo/env # Rust & Cargo
#[[ -x "/usr/local/opt/ruby/bin/ruby" ]] && export PATH=/usr/local/opt/ruby/bin:${PATH}
export GEM_HOME=${HOME}/.gem
export GEM_PATH=${GEM_HOME}:${GEM_PATH}
# Ruby & RubyGems
export PATH=/usr/local/bin:${PATH} # Python 3 (https://docs.python.org/3/using/mac.html)
export PATH=/usr/local/bin:${PATH} # Node.js & NPM (node-v14.16.1.pkg)
export PATH=${HOME}/.npm-global/bin:${PATH}
#export NPM_CONFIG_PREFIX=${HOME}/.npm-global
# NPM (https://docs.npmjs.com/resolving-eacces-permissions-errors-when-installing-packages-globally)
export PATH=/usr/local/octave/3.8.0/bin:${PATH} # Octave 3.8.0 (GNU_Octave_3.8.0-6.dmg/README.txt)
export PATH=${HOME}/.rbenv/bin:${PATH}
eval "$(rbenv init -)"
# RBEnv
eval "$(thefuck --alias)" # The Fuck

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export VISUAL=vim
export EDITOR=${VISUAL}

export CLICOLOR=1
if ls --color > /dev/null 2>&1 # If this silenced command evaluates to true,
then # the implemented LS is the GNU LS,
	export LS_COLORS='di=34;46:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
else # or else the implemented LS is the BSD LS.
	export LSCOLORS=egfxcxdxbxegedabagacad # Finder color scheme for LS; default value: exfxcxdxbxegedabagacad
fi # Set the colors of LS.

export BASH_SILENCE_DEPRECATION_WARNING=1 # https://web.archive.org/web/20190604031607/https://support.apple.com/en-us/HT208050

# Shell Environment Variables (e.g. MAILCHECK, PS1, PS2)

#shopt -s histappend # (i) should be run here first; already is ran in .bashrc.
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
export HISTCONTROL=ignoredups:erasedups
export HISTIGNORE=ls:pwd:cd:history
export HISTTIMEFORMAT="$(printf '\r\e[K')$(tput setaf 0)$(tput setab 7)%F %T$(tput sgr0)  "
export PROMPT_COMMAND='history -a; history -n'
export PS1='\[\033[7m\]\u@\h:\[\033[00m\]\[\033[4m\]\w\[\033[00m\]\n\[\033[7m\]\D{%Y.%m.%d}@\t\[\033[00m\] \[\033[7m\]\$\[\033[00m\] ' #PS1='\[\033[7m\]\u@\h\[\033[00m\] \[\033[7m\]\D{%Y.%m.%d}@\t\[\033[00m\] \[\033[7m\]\$\[\033[00m\] ' #PS1='\[\033[7m\]\D{%Y.%m.%d}@\t\[\033[00m\] \[\033[7m\]\u@\h\$\[\033[00m\] '

# User Environment Variables (e.g. PATH)

if [ $(uname -s) = 'Darwin' ]
then
#	#export DOT=/Users/${USER}/.files
	export DOTFILES=/Users/${USER}/.files
#	#export LIB=/Users/${USER}/Library
	export LIBRARY=/Users/${USER}/Library
#	#export BIN=/Users/${USER}/bin
	export BINARIES=/Users/${USER}/bin
#	#export APP=/Users/${USER}/Applications
	export APPLICATIONS=/Users/${USER}/Applications
#	#export WRK=/Users/${USER}/Work
	export WORK=/Users/${USER}/Work
#	#export MSC=/Users/${USER}/Miscellaneous
	export MISCELLANEOUS=/Users/${USER}/Miscellaneous
#	#export DOC=/Users/${USER}/Documents
	export DOCUMENTS=/Users/${USER}/Documents
#	#export PIC=/Users/${USER}/Pictures
	export PICTURES=/Users/${USER}/Pictures
#	#export SIC=/Users/${USER}/Music
	export MUSIC=/Users/${USER}/Music
#	#export MOV=/Users/${USER}/Movies
	export MOVIES=/Users/${USER}/Movies
#	#export DLD=/Users/${USER}/Downloads
	export DOWNLOADS=/Users/${USER}/Downloads
#	#export DSK=/Users/${USER}/Desktop
	export DESKTOP=/Users/${USER}/Desktop
#	#export PUB=/Users/${USER}/Public
	export PUBLIC=/Users/${USER}/Public
#	#export TMP=/Users/${USER}/Temporary
	export TEMPORARY=/Users/${USER}/Temporary
#	#export TRH=/Users/${USER}/.Trash
	export TRASH=/Users/${USER}/.Trash
#	#export VOL=/Volumes
	export VOLUMES=/Volumes
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
# mf	make files
# touch tempers with the timestamps. mkfile does not create empty files. Sometimes, that's all you need.

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
}; # ne, nfeol, writemissingNLatEOF
# ne	write NL at EOF
# The nae function inserts a newline after the pre-end-of-file line if that latter is not empty.

#md()
#{
#}; # md, mkdr, makedirectories
# md	make directories

ms()
{
	S="${1}";

	python -c "import os, socket as s; s.socket(s.AF_UNIX).bind(os.environ['S'])";
}; # ms, mksock, makesockets
# ms	make sockets
# https://serverfault.com/a/914572

mcd()
{
	mkdir -p "${@}" && cd "${_}";
}; # mcd, makeandchangedirectory
# mcd	make directories, and change the working directory to it

#dl()
#{
#	;
#}; # dl, del, delete
# del	delete file or directory
# The del function deletes any file of any type.

function st
{
	A=(${@});
	s=${IFS};
	IFS=' '; #IFS=$'\n'
	S=($(sort <<< "${A[*]}"));
	IFS=${s}; #unset IFS;
	printf '%s\n' "${S}";
}; # st	sort

function rb
{
	i=1;

	if [ ${#} -eq 0 ]; #if [ -z "${@:${i}:1}" ];
	then
		irb;
	else
		ruby ${@:${i}};
	fi;
};

sqlite3-dump()
{
	pathname=${1};

	sqlite3 "${pathname}" -cmd ".dump" "";
}; # sql, sqld, sqlite3-dump
# sqlite3-dump	dump the database in an SQL text format

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
# g-p	

pn()
{
	printf "$(cd "$(dirname "${1}";)" && pwd -P;)/$(basename "${1}";)"'\n'; #echo $(cd "$(/usr/bin/dirname "${1}")" && pwd -P)/$(/usr/bin/basename "${1}");
}; # pn, pathname
# pn	return pathname

lt()
{
	printf "%s\n" {.{.?,[^.]},}*; #{..?*,.[^.]*,*}; #if [ $(printf $(f() { printf ${#}; } && f $(printf "%s${IFS}" .[^.]*;););) -gt 1 -a $(printf $(f() { printf ${#}; } && f $(printf "%s${IFS}" .[^*]*;););) -gt 1 ]; then printf '%s\n' {.{.?,[^.]},}*; else
}; # lt, list
# lt	builtin-only ls, the ls substitute from built-in commands

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
# ll	locate, and extendedly list all directory contents

pv()
{
	( set -o posix && set ); #( set -o posix; set ) | less; # '(list)    list  is  executed  in  a  subshell  environment (see COMMAND EXECUTION ENVIRONMENT below).' man bash
}; # pv, printvar, printvariables
# pv	print variables

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
# ae	builtin-only expr, the expr substitute from built-in commands

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
# rn	output random numbers
# The rn function computes a pseudorandom number then prints it.

ru()
{
	username='usr';
	number=$[RANDOM%9999+1];

	printf "${username}${number}"'\n';
}; # ru, run, randomusername
# ru	output random usernames

dcal()
{
	date | grep --context=6 --color "\b$(date +%e)\b" && cal | sed -n '1!p' | grep --context=6 --color "\b$(date +%e)\b";
};
# dcal	dated calendar: Display a calendar, substitute month of year with current date in full format, and highlight current day of month.

np()
{
	t=$(date +"%Y-%m-%d-%H-%M-%S");

	:> ${HOME}/${t}_entry.txt;
	${EDITOR} ${HOME}/${t}_entry.txt;
}; # np	new page

gman()
{
	s_1_a=; # manual section
	s_2_a=; # manual page

	echo ${0} ${1} ${2} ${3}
	case ${1} in
		''|*[!0-9]* )
			s_1_a="${1}"
			s_2_a="${2}"
			;;
		*)
			s_1_a=""
			s_2_a="${2}"
			;;
	esac

	man -t ${s_1_a} "${s_2_a}" | open -f -a Preview
} # gman	graphically format and display on-line manual pages

cls()
{
	printf '\033[2J\033[3J\033[1;1H';
}; # cs, cls, clearscreen
# cls	builtin-only MS-DOS, OS/2 & Microsoft Windows CLS: Clear the terminal screen if this is possible, then write the VT100 escape code for resetting the terminal to the standard output under the control of the format.

# Mac Shell Functions

MakeFinderAlias()
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
# The MakeFinderAlias function makes Finder aliases.

DeleteDSStore()
{
	find . -name '.DS_Store' -delete -print; #find . -mindepth 0 -maxdepth 1 -name '.DS_Store' -delete -print;
}; # ddss, DeleteDSStore
# DeleteDSStore	.DS_Store Files Deletion: Find from the current directory any file named .DS_Store, remove it, and display the full file name of the standard output followed by a newline.

ResetLaunchPad()
{
	defaults write com.apple.dock ResetLaunchPad -boolean TRUE && killall Dock;
}; # rlp, ResetLaunchPad
# ResetLaunchPad	LaunchPad Reset
# The ResetLaunchPad function resets LaunchPad's layout.

GetBundleID()
{
	for i in ${#@}; do local A[${i}]=$(find /{,System/,/Users/${USER}/}Applications -mindepth 1 -maxdepth 1 -type d -iname ${i}); done;

	for i in ${A};
	do
		/usr/libexec/PlistBuddy -c 'Print CFBundleIdentifier' ${i}/Contents/Info.plist; #osascript -e 'ID of app "${i}"';
	done;
};

# Specific-Use Functions

tqdc()
{
	local s_1="${1}"; #prefix=
	readonly s_1;
	local s_2="${2}"; #suffix=
	readonly s_2;
	local s_3="tar"; #extension=
	readonly s_3;
	#local s_0="${s_1}'{}'${s_2}.${s_3}"; #filename= # Although POSIX-compliant shells, e.g. BSH, KSH, ASH, do not particularly interpret {}, FISH does, so quote it.

	find * -maxdepth 0 -type d -exec tar -v -c -f "${s_1}"'{}'"${s_2}"'.tar' {} \;; #find * -maxdepth 0 -type d -exec tar vcf "${s_0}" {} \;;
}; # tqdc, tarqdlc, tapearchiveQobuzdownloadedcontent
# tqdc	Qobuz downloaded content tape-archival: Create a new tape archive for each of the working directory's subdirectories.

#fn()
#{
#	;
#}; # FUNCTIONNAME, FUNCTIONNAMEn
# # MANPAGENAME
# # MANPAGESYNOPSIS
# # MANPAGEDESCRIPTION
# # PERSONALCOMMENT

#   A L I A S E S

# Shell Special Built-In Utilities (Commands)
#
#

# Shell Builtin Utilities (Commands)

#	sudo			execute a command as another user

#alias ffs='sudo $(!-1)'
alias ffs='sudo $(history -p \!\!)'
#alias ffs='sudo $(fc -ln -1)'

#	cd				change the working directory
# (i) Bourne Shell (sh) builtin.

alias d='cd '

alias ..='cd ..' # Change the working directory to the parent of the current one.
alias ...='cd ../..' # Change the working directory to the grand-parent of the current one.
alias ....='cd ../../..' # Change the working direcrory to the grand-grand-parent of the current one.
alias .....='cd ../../../..' # Change the working directory to the grand-grand-grand-parent of the current one.
alias ......='cd ../../../../..' # Change the working directory to the grand-grand-grand-grand-parent of the current one.
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

alias db='cd ${HOME}/Dropbox' # Change the working directory to the one of the current user's Dropbox.

#	source
# (i) Bourne-Again Shell (bash) builtin.

#alias src='source '
alias sc='source '
#alias s='source '

#	chdir
# (i) Z Shell (zsh) builtin.

#alias d='chdir '

#	exec

alias ns='exec ${SHELL} -l ' # Execute the default login shell as a login shell. (Replace the current shell process image with a new one.)

#	history

alias hy='history'
#alias h='history | tail -n 20'
alias _='!-2'

#	printenv		print out the environment

alias pe='(set -o posix; set) | cat'

#	exit

#alias e='exit'

# 'Internal' Programs (Commands)

#	vi				Vi IMproved, a programmer's text editor
#	vim

alias vi='vim +star '
alias vim='vim +startinsert '
alias v='vim '

#	mkdir			make directories

alias md='mkdir '

#	killall			kill processes by name

alias ka='killall '
#alias k='killall '

#	ruby			Interpreted object-oriented scripting language

#alias rb='ruby '

#	python			an interpreted, interactive, object-oriented programming language

alias py='python '
alias py2='python2 '
alias py3='python3 '

alias ct='python -c "import sys; print( len(sys.argv[1]) );" ' # Count the characters of a given string.

alias uc='python3 -c "import sys; print(sys.argv[1].upper());" ' # Increase the case of the first given string.
alias lc='python3 -c "import sys; print(sys.argv[1].lower());" ' # Lower the case of the first given string.

#	JSC				https://trac.webkit.org/wiki/JSC

#alias jsc='/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc '
#alias js='/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc '

#	node			server-side JavaScript runtime

#alias njs='node '
#alias nj='node '
alias nd='node '
alias js='node '

#	osascript		execute OSA scripts (AppleScript, JavaScript, etc)

#alias osas='osascript '
alias osa='osascript '
#alias os='osascript '

#	tar				manipulate tape archives

alias tgz='tar -czfv ' # Create a new archive containing the specified items then compress the resulting archive with gzip, listing each file name as it is read written to the archive.

#	rsync			faster, flexible replacement for rcp

#alias rsync-copy='rsync -avz --progress -h '
#alias rsync-move='rsync -avz --progress -h --remove-source-files '
#alias rsync-synchronize='rsync -avzu --delete --progress -h '
#alias rsync-update='rsync -avzu --progress -h '
# somebody's rsync aliases

#	open			open files and directories

#alias opn='open '
alias op='open '
#alias o='open '

alias te='open -e ' # Open file using TextEdit.

#alias pw='open -b com.apple.Preview ' # Open file using Preview.

#alias qtp='open -b com.apple.QuickTimePlayerX ' # Open file using QuickTime Player.

#alias si='open -b com.apple.Safari ' # Open file using Safari.

#alias vlc='open -b org.videolan.vlc ' # Open file using VLC Media Player.

#alias aps='open -b com.adobe.Photoshop ' # Open file using Photoshop CS6.

#alias pslr='open -b com.adobe.Lightroom6 ' # Open file using Photoshop Lightroom 6.

#alias mwd='open -b com.microsoft.Word ' # Open file using Word for Mac 2011.

#alias mxl='open -b com.microsoft.Excel ' # Open file using Excel for Mac 2011.

#alias gvi='open -b org.vim.MacVim ' # Open file using MacVim.

alias rf='open -R ' # Reveal files using Finder.

#	xattr			display and manipulate extended attributes

alias dxa='xattr -rc .' # Remove every file's all extended attributes of the current directory recursively.

#	qlmanage		Quick Look server debug and management tool

#alias QuickLook='qlmanage '
#alias quicklook='qlmanage '
alias ql='qlmanage '

alias	qlp='qlmanage -p ' # Display the Quick Look generated preview for the specified files.

# 	ls				list directory contents

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

#	du				display disk usage statistics

alias du='du -c -d 0 -h ' # Display DU stats with a grand total, an entry for all files and directories 0 directories deep, human-readably.

#	printf			formatted output
#
#

#	less			opposite of more

alias les='less '

#	clear			clear the terminal screen
#
#alias clr='clear '
#alias cl='clear '
#alias c='clear '

#	PlistBuddy		read and write values to plists

#alias PlistBuddy='/usr/libexec/PlistBuddy '
#alias plistbuddy='/usr/libexec/PlistBuddy '
alias pb='/usr/libexec/PlistBuddy '

#	softwareupdate	system software update tool

alias swu='softwareupdate '
#alias sw='softwareupdate '

#	airport			get information for 802.11 interface

#alias AirPort='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport '
#alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport '
alias ap='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport '

#	man				format and display the on-line manual pages

alias mn='man '
#alias hp='man '
#alias i='man '

alias ascii='man ascii' # Output the man page of the ASCII character sets.

# External Programs (Commands)

# 	git				the stupid content tracker

#alias git='/usr/local/git/bin/git ' # Get fucked, Apple. /i\ requires Git for macOS from the official website. http://git-scm.com/
alias g='git '

#	fswatch			Ask for notification when the contents of the specified files of directory hierarchies are modified.

alias fsw='fswatch '
#alias fw='fswatch '

#	octave

alias oct='octave '

#	mas-cli			A simple command line interface for the Mac App Store. Designed for scripting and automation.

#alias mas='mas-cli '

#	fuck			 Magnificent app which corrects your previous console command.

alias f='fuck '
alias gz='fuck '

# Shell Functions

#alias cs='cls'
alias c='cls'

alias mfa='MakeFinderAlias '

alias dds='DeleteDSStore'

# Computer Programs

#alias SetVolume='sh ${HOME}/.files/bin/SetVolume.sh'
#alias setvol='sh ${HOME}/.files/bin/SetVolume.sh'
alias sv='sh ${HOME}/.files/bin/SetVolume.sh'

alias alarm='sh ${HOME}/.files/bin/alarm.sh'
alias am='sh ${HOME}/.files/bin/alarm.sh'

#alias RPwG='ruby ${HOME}/.files/bin/rpwg.py'
alias rpwg='python3 ${HOME}/.files/bin/rpwg.py'
alias pw='python3 ${HOME}/.files/bin/rpwg.py'

#   E T   C E T E R A

bind -r '\C-s'
stty -ixon

#	.bashrc
#	BASH Initialization File
#	https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_03_01.html
#
#	Karl V. P. B. `kvpb`
#	+1 (DDD) DDD-DDDD
#	local-part@domain
#	https://www.linkedin.com/in/
#	https://twitter.com/
#	https://github.com/kvpb
#	https://vm.tiktok.com//

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
