#!/usr/bin/env bash

# Because RAR will be required...
if [ -f "/usr/local/bin/unrar" ];                        #
then                                                     #
	if [ -x "/usr/local/bin/unrar" ];                    # If RAR is installed...
	then                                                 #
		echo "Installing Gun Godz..."                    #
	fi                                                   # Then say Gun Godz is being installed.
else                                                     # Else, if RAR is not installed...
	echo "Installing RAR..."                             #
	sh ${HOME}/.files/lib/scpt/InstallRAR550.sh          #
fi                                                       # Then say it is being installed, and install it.

mkdir -p ${HOME}/Temporary # Create the current user's temporary folder.
cd ${HOME}/Temporary # Go to the current user's temporary folder.

curl --remote-name --remote-header-name --location http://vlambeer.com/downloads/special/GUNGODZ.rar # Download the Gun Godz Roshal archive.
unrar x GUNGODZ.rar ./ && unzip ./Gun\ Godz/GUN\ GODZ\ OSX.zip -d /Applications # Unarchive the Gun Godz archive to the system applications' folder.
rm -rf Gun\ Gods && mv GUNGODZ.rar ${HOME}/Downloads/ # Clean up, and put the Gun Godz RAR into the current user's downloads folder.

cd ${HOME} # Go to the current user's home folder.
rmdir Temporary # Delete the current user's unofficial temporary folder.

# InstallGunGodz.sh
# Install Gun Godz
# 
# Karl 'Kabe' Bertin `kvpb`
# Email: local-part@domain
# LinkedIn: https://www.linkedin.com/in/karlbertin
# Facebook: 
# Instagram: https://www.instagram.com/karlbertin/
# Snapchat: https://www.snapchat.com/add/karlbertin
# 
# Note to myself: Let's use footers to sign files which begin with a special sequence, eg shebangs. Sometimes, my code may look inconsistent, but it's not, and there are reasons to this.
# 	First, I'm a quick learner, and I learn a lot anytime I pay attention to anything, so for no to any reason, eg a simple thought, within seconds, ie from a script to another created in a minute, I can totally change how I write, yet since I am conscious, I keep the former style for the current work until it's done; to anyone normal, that outta sound schizophrenic --- worry not: I'm sane. Kinda.
#	Second, the simplest the justest. For example, take my quoting style. Some'd say it sucks ass for compression. Such would be a problem if I compressed. Why press Shift and ' to write a double quote as a simple does the same in the here-and-now? Unnecessary keystrokes unnecessarily wear necessary keyboards. Good practices are rules, generalities. Generalities have exceptions; otherwise, we'd coin them 'absoluties'. Now, I run buy a 96A1 and stock up on ammo before some StackOverflow nazi reads this.
# 	Moreover, it delays effecting. The computer reads each line. Each line takes time to read. On today's powerhouses, it may be negligible, but on ancient hardware, the delay may be felt. I'll go for speed, even though those comment lines may delay the execution of next scripts... Actually, more and more, I'm making footers out of my headers.
#	Last but not least, writing headers after prefixes looks messy. In the case of scripts with starting sequences, headers must be at least second not to break interpreter directives. Besides -- and this joins the previous points -- that's a bit impractical, postponing the access to the essential, eg those runcoms where each line is afore-commented.
