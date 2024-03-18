#!/bin/bash
#https://exercism.org/tracks/bash/exercises/pangram/
function is_program(){
        local s="${1,,}"
        local alp="abcdefghijklmnopqrstuvwxyz"

        declare -A fr

        for letter in {a..z}; do
                fr["$letter"]=0
        done

        for (( i=0; i < ${#s} ; i++ )); do
                char="${s:i:1}"
                #echo "$char"
                if [[ "${alp}" =~ "${char}" ]]; then
                        (( fr["$char"]++ ))
                fi
        done

        cnt=1
        for letter in {a..z}; do
                if [[ fr["$letter"] -eq 0 ]]; then
                        echo "false"
                        #echo "$letter"
                        return
                fi
        done
        echo "true"
}
function main(){
        is_program "$1"
}
main "$@"



