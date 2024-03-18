#!/bin/bash
#https://exercism.org/tracks/bash/exercises/grains/
#Formula is 2^(n-1)

function main(){
        n="$1"
        ((n--))
#       out="2^$n"
        echo $((2**$n))
}

#trebuie ca  inputul sa fie 1 <= input <= 64
if [ "$1" == "total" ]; then
    echo "18446744073709551615"
elif (( $1 >= 1 && $1 <= 64 )); then
        if (( $1 == 64 )); then
                echo "9223372036854775808"
        else main "$@"
        fi
else 
    echo "Error: invalid input"
    exit 1
fi
