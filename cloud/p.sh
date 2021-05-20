#!/bin/bash
title="$1"
tmpdir="$2/$title"
finisher=0
plot_cnt=1
date_format="+%Y-%d-%m %H:%M:%S"
echo "$(date "$date_format") Star: $title -t$tmpdir" >> ./config/p.log
while true
do
	config_cat=$(cat "./config/$title.conf")
	configArr=(${config_cat// / })
	ntimes="${configArr[0]}"
	dstdir="${configArr[1]}"
	rthreads="${configArr[2]}"
	strlog="$title n=$plot_cnt -r$rthreads -d[$dstdir] -t-2[$tmpdir]"
	if [ "$ntimes" -gt 0 ]; then
		# >
		((finisher++))
		if [ "$finisher" -ge "$ntimes" ]; then
			# >=
			strtime2="$(date "$date_format")"
			echo "$strtime2 Exit: $strlog exit=$finisher" >> ./config/p.log
			echo "$strtime2 Reached limit $ntimes. Finishing job."
			break
		fi
	else
		finisher=0
	fi
	strtime="$(date "$date_format")"
	start_time=$SECONDS
	echo "$strtime Plot: $strlog exit=$finisher" >> ./config/p.log
	echo -e "\n\n$strtime\nStarted: $strlog exit=$finisher\n"
	/home/ubuntu/chia-blockchain/venv/bin/chia plots create -k32 -n1 -t$tmpdir -2$tmpdir -d$dstdir -b3390 -u128 -r$rthreads -x -f 936bbaf53ddc4743a4dea5be3e50b0fd30712cc914ab0fc6044d99d2063f69d4646b3120c82e318e5743c063d6d27f86 -p 82bf47c25457030d118ad257125c8ecc783519fa003736b9c7334b440291ddd7a5157262a8d2f07d24ae367a2518702d
	time_elapsed=$(date -d@$(( $SECONDS - $start_time )) -u +%H:%M:%S)
	echo "$(date "$date_format") Pend: $strlog exit=$finisher $time_elapsed" >> ./config/p.log
	echo -e "$strtime\nStarted: $strlog exit=$finisher $time_elapsed\n"
	((plot_cnt++))
	sleep 5
done

