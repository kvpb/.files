#!/usr/bin/env zsh

systemsoftwareversion=$(defaults read loginwindow SystemVersionStampAsString;)
systemsoftwareversionminorversion=$(printf "${systemsoftwareversion}" | cut -d. -f2- | cut -f1,1 -d'.';)
[ ${systemsoftwareversionminorversion} -ge 0 -a ${systemsoftwareversionminorversion} -le 7 ] && systemsoftware="${systemsoftwareversion/#/Mac OS X }"
[ ${systemsoftwareversionminorversion} -ge 8 -a ${systemsoftwareversionminorversion} -le 11 ] && systemsoftware="${systemsoftwareversion/#/OS X }"
[ ${systemsoftwareversionminorversion} -ge 12 ] && systemsoftware="${systemsoftwareversion/#/macOS }"
workingdirectory=$(pwd;)
n=$[RANDOM%9999+1]

if [ ${systemsoftwareversion} -ge 15 ]
then
	printf 'Installing BASH 3.2.57...'
	:
elif [ ${systemsoftwareversion} -ge 2 -a ${systemsoftwareversion} -le 14 ]
then
	printf "Warning: Software Incompatibility\nThis Mac runs ${systemsoftware}. In Mac OS X 10.2 Jaguar to macOS 10.14 Mojave, BASH was shipped with the OS as the default shell. Install BASH 3.2.57 from the Free Software Foundation anyway?, \e[4m_y_\e[0mes or \e[4m_n_\e[0mo?\n"
	read -r input
	case ${input} in
		[YyOo]* ) :;;
		[Nn]* ) printf 'BASH 3.2.57 has not been installed.\n'
			exit 1;;
		* ) printf 'Qui ne dit mot consent ?';;
	esac
else
	printf 'Error: Software Incompatibility\nInstallBASH3257.sh could not identify this operating system. Thus InstallBASH3257.sh is not compatible with this OS.'
	exit 1
fi

sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

mkdir -p ${HOME}/Temporary/Folder${n}
cd ${HOME}/Temporary/Folder${n}

curl -O http://ftp.gnu.org/gnu/bash/bash-3.2.57.tar.gz
tar xzf bash-3.2.57.tar.gz
cd bash-3.2.57
./configure --prefix=/usr/local/bin && make && sudo make install

sudo bash -c "printf '/usr/local/bin/bash\n' >> /private/etc/shells" 

mv bash-3.2.57.tar.gz ${HOME}/Downloads/
cd ..
rm -r bash-3.2.57
cd ..
rm -r Folder${n}
cd ${workingdirectory}

if [ -e /usr/local/bin/bash ]
then
	chsh -s /usr/local/bin/bash
	exec /usr/local/bin/bash -l -c $'
		for i in $(which -a bash)
		do
			printf "${i}\\n"
			printf "$(${i} --version)\\n"
		done
	
		if [ "${BASH}" = \'/usr/local/bin/bash\' -a "${BASH_VERSION}" = "3.2.57*" ]
		then
			printf \'BASH 3.2.57 has been installed and set as the default shell.\\n\'
		fi
	
		cd ${workingdirectory} && printf \'\\n- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\\nDear Apple,\\n\\nThank you for the free advertising.\\n\\nSincerely yours,\\n\\nThe Ubuntu Foundation & the PC market\\n- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - \\n\'
	
		printf \'\\nalias bash="/usr/local/bin/bash"\\n\''
elif [ ! -e /usr/local/bin/bash ]
then
	printf 'Error: BASH 3.2.57 has not been installed.\n'
	exit 1
fi

# InstallBASH3257.sh
# Install BASH 3.2.57
# Cf https://web.archive.org/web/20190604031607/https://support.apple.com/en-us/HT208050
# 
# Karl V. P. Bertin `kvpb`
# Telephone: +33 A BB BB BB BB
# Email: local-part@domain
# 
# On june 4th, Apple announced that they stop setting BASH as the default login shell with macOS 10.15 Catalina, defaulting to ZSH. I.e. Apple deprecated BASH, and eventually, they won't ship it with macOS anymore. I never quite used ZSH, and I'm surely not intending to rewrite all my BASH scripts as ZSH ones, especially given that I'm making a macOS-Ubuntu cross-platform setup. This script installs BASH 3.2.57, the last version to be shipped with macOS. A script to fetch and install the latest BASH version is still planned.
