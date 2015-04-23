#!/bin/sh
#------------------------------------------------
# Here is a simple shell script to load & hammer 
# the CPU using awk. The script does mathematical 
# calculations and thus CPU load peaks up on higher 
# values passed to loadserver.sh.
# Credit - cloudibee.com
# http://linux.cloudibee.com/2008/11/linux-cpu-hammer-script/

if [ $1 ]; then
        NUM_PROC=$1
else
        NUM_PROC=10
fi

for i in `seq 0 $((NUM_PROC-1))`; do
        awk 'BEGIN {for(i=0;i<10000;i++)for(j=0;j<10000;j++);}' &
done

echo "PIDS: `pidof awk`"
