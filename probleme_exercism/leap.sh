#!/bin/bash
#https://exercism.org/tracks/bash/exercises/leap/
function containsOnlyDigits(){
        if [[ "$1" =~ ^[0-9]+$ ]]; then
                echo "true"
        else echo "false"
        fi
}
function main(){
        if (( $1%100==0 )); then
                if(( $1%400==0 )); then
                        echo "true"
                else echo "false"
                fi
        return  
        fi

        if (( $1%4 == 0 )); then
                echo "true"
        else echo "false"
        fi
}

if [[ -z $1 || $3 -ge 2 || "$(containsOnlyDigits "$1")" == "false" ]]; then
        echo "Usage: leap.sh <year>"
        exit 1
else main "$@"
fi










