#!/bin/bash
#https://exercism.org/tracks/bash/exercises/armstrong-numbers/
#Am nevoie de suma cifrelor si numarul de cifre

nDigits=0
n=$1
c=$1
f=$1
function main(){
        while [ $n -ne 0 ]; do
        digit=$((n%10))
        ((nDigits++))
        ((n/=10))
        done

        sum=0

        while [ $c -ne 0 ]; do
        digit=$((c%10))
        digit=$((digit**nDigits))
        ((sum+=$digit)) 
        ((c/=10))
        done

        if [ "$f" -eq "$sum" ]; then  
        echo "true"
        else echo "false"
        fi

}
if [ "$n" == "0" ]; then
    echo "true"
else main "$1"
fi



