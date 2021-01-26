#!/usr/bin/env bash

for var in "${@}";
do

osascript -- - "${var}" <<'EOF'
	on run({var})
		POSIX path of (path to application var)
	end
EOF

done;
