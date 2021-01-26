#!/usr/bin/env bash

for i in "${@}";
do
	var=$(osascript -e "on run({i})" -e "set variable to POSIX path of (path to application i)" -e "end" -- "${i}"); # -e "on run(argv)"
	until [ ! -z "$(pgrep ${i})" ];
	do
		sleep 1;
	done;
	killall "${i}"; #printf "${var%/}\tdebug\n";
	var=${var%/}; #printf "${var}\tdebug\n";

	osascript \
		-e "on run({var})" \
		-e 'tell application "System Events" to make login item at end with properties {path:var, hidden:false}' \
		-e 'return display notification var with title "Login Item Added"' \
		-e "end" \
		-- "${var}";
done;
