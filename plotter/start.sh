#!/bin/bash
screen -dm -S p1 bash -c './p.sh 4 p1; exec sh'
screen -dm -S p2 bash -c 'sleep 1800; ./p.sh 4 p2; exec sh'
screen -dm -S p3 bash -c 'sleep 3600; ./p.sh 4 p3; exec sh'
screen -dm -S p4 bash -c 'sleep 5400; ./p.sh 4 p4; exec sh'
screen -dm -S p5 bash -c 'sleep 7200; ./p.sh 4 p5; exec sh'
screen -dm -S p6 bash -c 'sleep 9000; ./p.sh 4 p6; exec sh'
screen -dm -S p7 bash -c 'sleep 10800; ./p.sh 3 p7; exec sh'
