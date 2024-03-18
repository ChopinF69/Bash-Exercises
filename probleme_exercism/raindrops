#!/usr/bin/env bash
#https://exercism.org/tracks/bash/exercises/raindrops/
x=$1
rest3=$((x%3))
rest5=$((x%5))
rest7=$((x%7))

my_string=""
if [ $rest3 -eq 0 ]; then
        my_string+="Pling"
fi

if [ $rest5 -eq 0 ]; then
        my_string+="Plang"
fi

if [ $rest7 -eq 0 ]; then
        my_string+="Plong"
fi

if [ $rest3 -ne 0 ] && [ $rest5 -ne 0 ] && [ $rest7 -ne 0 ]; then
        echo "$x"
else
        echo "$my_string"
fi







