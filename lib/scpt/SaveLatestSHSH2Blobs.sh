#!/usr/bin/env bash

model=([6]="iPhone7,2");
ecid=([6]="6349400511026");

for i in "${!model[@]}";
do
	tsschecker \
		--device "${model[i]}" \
		--save \
		--latest \
		--ecid "${ecid[i]}";
done;
exit 0;

# SaveLatestSHSH2Blobs.sh
#
# Karl V. P. B. `kvpb`
# +33 A BB BB BB BB
# local-part@domain
#
# NB: This script has been written to automatize tsschecker and be executed by cron. Obviously, it requires tsschecker to be of any use. Also, to make it more useful, write this job to your crontab: 0 12 * * * ${HOME}/.files/lib.scpt/SaveLatestSHSH2Blobs.sh.
