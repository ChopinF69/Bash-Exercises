#!/bin/bash
#https://exercism.org/tracks/bash/exercises/sieve/
function main(){
    n="$1"
    declare -A eratos
    eratos[0]="true"
    eratos[1]="true"

    # Apply the Sieve of Eratosthenes
    for (( j=4 ; j <= n ; j+=2 )); do
        eratos[$j]="true"
    done

    for (( i=3 ; i*i <= n ; i+=2 )); do
        if [[ "${eratos[$i]}" != "true" ]]; then
            for (( j=i*i ; j <= n ; j+=2*i )); do
                eratos[$j]="true"
            done
        fi
    done

    # Collect prime numbers
    textOutput=""
    for (( i=2 ; i <= n ; i++ )); do
        if [[ "${eratos[$i]}" != "true" ]]; then
            textOutput="${textOutput} $i"
        fi
    done

    echo "${textOutput:1}"
}

main "$@"
