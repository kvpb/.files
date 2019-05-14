#!/usr/bin/env bash

for var in "$@";
do

osascript -- - "${var}" <<'EOF'
	on run({var})
		tell application "System Events" to POSIX path of (file of process var as alias)
	end
EOF

done;
