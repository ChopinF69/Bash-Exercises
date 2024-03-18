#!/bin/bash
#https://exercism.org/tracks/bash/exercises/matching-brackets/
function main() {
    #O Idee ar fi sa facem o coada cu parantezare
    input="$1"
    queue=""
    for ((i = 0; i < ${#input}; i++)); do
        chr="${input:$i:1}"
        if [[ "$chr" == "(" || "$chr" == "[" || "$chr" == "{" ]]; then
            queue="$queue$chr"
        elif [[ "$chr" == ")" ]]; then
            lastChrQ=$(echo "${queue: -1}")
            if [[ "$lastChrQ" != "(" ]]; then
                echo "false"
                return
            else
                queue="${queue:0:-1}"
            fi
        elif [[ "$chr" == "]" ]]; then
            lastChrQ=$(echo "${queue: -1}")
            if [[ "$lastChrQ" != "[" ]]; then
                echo "false"
                return
            else
                queue="${queue:0:-1}"
            fi
        elif [[ "$chr" == "}" ]]; then
            lastChrQ=$(echo "${queue: -1}")
            if [[ "$lastChrQ" != "{" ]]; then
                echo "false"
                return
            else
                queue="${queue:0:-1}"
            fi
        fi
    done
    if [[ "$queue" == "" ]]; then
        echo "true"
    else
        echo "false"
    fi
}

main "$@"
