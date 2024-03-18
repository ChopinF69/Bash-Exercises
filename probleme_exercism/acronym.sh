#!/bin/bash
#https://exercism.org/tracks/bash/exercises/acronym/
function main() {
    input="$1"
    out="${input:0:1}"
    for ((i = 1; i < ${#input}; i++)); do
#        if [[ "${input:i:1}" == " " ] || [ "${input:i:1}" == "-" ] && [ "${input:i+1:1}"  != " "  || "${input:i+1:1}"  != "-" ]]; then
        if [[ "${input:i:1}" == " " || "${input:i:1}" == "-" || "${input:i:1}" == "_" || "${input:i:1}" == "*" ]]  && [[ "${input:i+1:1}" != " " && "${input:i+1:1}" != "-" && "${input:i+1:1}" != "_" && "${input:i+1:1}" != "*" ]]; then

            # Add the next character
            ((next = i + 1))
            out+="${input:next:1}"
        fi
    done
    echo "${out^^}"
}

main "$1"


