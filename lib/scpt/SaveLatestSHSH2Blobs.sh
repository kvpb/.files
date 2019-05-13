#!/usr/bin/env bash

# SaveLatestSHSH2Blobs.sh
# 
# NB: This script has been written to automatize tsschecker and be executed by cron. Obviously does it require tsschecker to be of any use. Also to make it more useful, write this job to your crontab : 0 12 * * * ${HOME}/.files/lib.scpt/SaveLatestSHSH2Blobs.sh

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
