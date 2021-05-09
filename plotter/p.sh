#!/bin/sh
ntimes="$1"
rthreads="1"
title="$2"
tmpdir="/media/SSD_1/$2"
dstdir="/home/ubuntu/farm"
strecho="$(date) $title= -n$ntimes -r$rthreads -t$tmpdir -2$tmpdir -d$dstdir"
echo $strecho
/home/ubuntu/chia-blockchain/venv/bin/chia plots create -k32 -n$ntimes -t$tmpdir -2$tmpdir -d$dstdir -b3390 -u128 -r$rthreads -f 936bbaf53ddc4743a4dea5be3e50b0fd30712cc914ab0fc6044d99d2063f69d4646b3120c82e318e5743c063d6d27f86 -p 82bf47c25457030d118ad257125c8ecc783519fa003736b9c7334b440291ddd7a5157262a8d2f07d24ae367a2518702d
echo $strecho
