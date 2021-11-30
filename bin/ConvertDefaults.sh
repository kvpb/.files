#!/usr/bin/env sh
#exec 2>> ${HOME}/Temporary/log
#set -xv
set -eu
#. $(dirname ${0};)/dependencies; # Source dependencies.

directory=$(dirname ${0};);
option='help'; # Print instructions by default.
argument="${2}"; #plist=; #${HOME}/Library/Preferences/com.apple.HIToolbox.plist
# UNIX command line structure: ${command} {,-}${option}{,${options}} ${argument}{,${arguments}}
xml=; #$(plutil -convert xml1 -o - "${plist}";);
json=; #$(plutil -convert json -o - "${plist}";);

error()
{
	printf '%s\n' "${*}" > /dev/stderr.log;
	exit 1;
}

help()
{
	cat <<EOF
	help		Print ConvertDefaults.sh instructions.
	xml			Convert defaults from PLIST to XML.
	json		Convert defaults from PLIST to JSON.
	version		Print ConvertDefaults.sh version.
EOF
};

version()
{
	printf '%s\n' 'ConvertDefaults.sh 1.00 (2021.05.12)';
	exit 0;
}

if [ ${#} -gt 0 ];
then
    option="${1}";
fi;
case "${option}" in
	xml | x | -xml | -x)
#		shift # `man shift`, https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_07.html
#		${directory}/${option}.sh ${@};; # `man bash`, https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#Special-Parameters
		# if the program uses dependencies or is broken down into subprograms
		xml=$(plutil -convert xml1 -o - "${argument}";);
		printf '%s\n' "${xml}" > "${argument%.*}.xml";
		exit 0;;
	json | j | -json | -j)
		json=; #$(plutil -convert json -o - "${argument}";);
		printf '%s\n' "${json}" > "${argument%.*}.json";
		exit 0;;
	version | v | --version | -v)
		version; # wait  what's happening  what am i feeling  is it that penn & teller underseas tv show  i feel 5 again  it's may '21 and it's rainy and gloomy and stuff but i can focus just like before the blackouts  and their shows, especially this one with the dolphins, the sirens and the music makes me feel just like back then  also i'm forgetting those past 20 years  it's like everything is normal again like the scars were shed off by reverting  nothing like that psychoanalytical regression horseshit  it's like what life should have been and i am happy  i feel happy i sense my happiness from learning, learning stuff, here learning sh script, through getting my hands on it, learning to control, to command a computer to do stuff just like i learned to control red by playing around with that gray game boy  no matter how long it takes  i don t even know my age  they say i m 25  i mean sure biologically i m an adult  but i did not see the time go by  and time flies  i could be 13 for all i care  i cannot believe it  it's this exact same sensation of living sth new  the excitement is the same as that which i exp'ced while i ran to the tree on those xmas mornings  it's happening again ffs  i'd give billions of dollars to live this again just once sth tells me it'll happen again a lot and i won't have had to pay a penny for it  this is my way, the path i should've followed all along  holy shit i'm beyond lucky  now let's work forever harder  let's get into the us, make an incredibly good product, build sth great # and i felt it in '18  i'm pretty sure it was a similar feeling just a wee bit less powerful  it happened while i was learning math with that mp*-level manual  this and maths here's what i should ve been doing all along  fuck university fuck school fuck teachers  i can grasp this all by myself in fact i m doing it rn  this is what i should have been doing all alone all along  i don t mind the rest  i don t care what people think # i can make it  i can make great stuff  i will be rich
		exit 0;;
	help | h | --help | -h)
		help;
		exit 0;;
	*)
		printf 'Error: Invalid Option\n"${1}" unrecognized. Enter `GetDefaults.sh help` to print the instructions.'
		error;;
esac;

#	ConvertDefaults.sh
#
#	Karl V. P. B. `kvpb`
#	+1 (DDD) DDD-DDDD
#	local-part@domain
#	https://www.linkedin.com/in/karlbertin
