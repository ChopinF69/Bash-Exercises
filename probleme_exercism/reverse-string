#!/bin/bash
#https://exercism.org/tracks/bash/exercises/reverse-string/
function main(){
        input="$1"
        reverse=""
        len=${#input}
        for (( i=len-1; i >= 0 ; i-- )); do
                reverse="$reverse""${input:$i:1}"
        done
        echo "$reverse"

}

main "$@"







