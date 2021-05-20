#!/bin/bash
screen -dm -S p1 bash -c './p.sh p1 /media/SSD_1; exec sh'
screen -dm -S p2 bash -c 'sleep 1800; ./p.sh p2 /media/SSD_1; exec sh'
screen -dm -S p3 bash -c 'sleep 3600; ./p.sh p3 /media/SSD_1; exec sh'
screen -dm -S p4 bash -c 'sleep 5400; ./p.sh p4 /media/SSD_1; exec sh'
screen -dm -S p5 bash -c 'sleep 7200; ./p.sh p5 /media/SSD_1; exec sh'
screen -dm -S p6 bash -c 'sleep 9000; ./p.sh p6 /media/SSD_1; exec sh'
screen -dm -S p7 bash -c 'sleep 10800; ./p.sh p7 /media/SSD_1; exec sh'