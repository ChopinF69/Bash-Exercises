#!/bin/bash
#https://exercism.org/tracks/bash/exercises/hamming/
a1="$1"
a2="$2"

if [ $# -ne 2 ]; then
        echo "Usage: hamming.sh <string1> <string2>"
        exit 1
fi

if [ ${#a1} -ne ${#a2} ]; then
        echo "left and right strands must be of equal length"
        exit 1
fi

dif=0
for(( i=0 ; i < ${#a1} ; i++)); do
        if [ ${a1:i:1} != ${a2:i:1} ]; then
                (( dif += 1 ))
        fi
done    

echo $dif

