#!/bin/bash
# https://exercism.org/tracks/bash/exercises/atbash-cipher
function handleCharEncrypt() {
    local plain="abcdefghijklmnopqrstuvwxyz"
    local enc="zyxwvutsrqponmlkjihgfedcba"
    local inputChr="$1"
    if [[ "$inputChr" =~ [0-9] ]]; then        
        echo "$inputChr"
        return
    fi

    for ((i = 0; i < ${#plain}; i++)); do
        chrPlain="${plain:$i:1}"
        if [[ "$chrPlain" == "$inputChr" ]]; then
            echo -n "${enc:$i:1}"
            return
        fi
    done
    echo -n "$inputChr"  # Return the original character if not found in the plain alphabet
}

function handleCharDecrypt() {
    local plain="abcdefghijklmnopqrstuvwxyz"
    local enc="zyxwvutsrqponmlkjihgfedcba"
    local inputChr="$1"

    for ((i = 0; i < ${#enc}; i++)); do
        chrDecr="${enc:$i:1}"
        if [[ "$chrDecr" == "$inputChr" ]]; then
            echo -n "${plain:$i:1}"
            return
        fi
    done
    echo -n "$inputChr"  # Return the original character if not found in the encrypted alphabet
}

option="$1"
shift
output=""
outputArr=()

if [[ "$option" == "encode" ]]; then
    input=""
    for param in "$@"; do
        param="${param,,}"  # Convert to lowercase
        for ((i = 0; i < ${#param}; i++)); do
            chr="${param:$i:1}"
            if [[ "$chr" =~ [a-z0-9] ]]; then
                input="$input$chr"
            fi
        done
    done

    # Break input into tokens of 5 characters
    tokens=()
    for ((i = 0; i < ${#input}; i += 5)); do
        tokens+=("${input:$i:5}")
    done

    for param in "${tokens[@]}"; do
        param="${param,,}"  # Convert to lowercase
        for ((i = 0; i < ${#param}; i++)); do
            chr="${param:$i:1}"
            chrEnc=$(handleCharEncrypt "$chr")
            output="$output$chrEnc"
        done
        outputArr+=("${output}")
        output=""
    done
    echo "${outputArr[@]}"

elif [[ "$option" == "decode" ]]; then
    for param in "$@"; do
        for ((i = 0; i < ${#param}; i++)); do
            chr="${param:$i:1}"
            chrDecr=$(handleCharDecrypt "$chr")
            output="$output$chrDecr"
        done
    done
    output2=""
    for((i=0;i<${#output};i++));do
        chr="${output:$i:1}"
        if [[ "$chr" =~ [a-z0-9] ]]; then
                output2="$output2$chr"
        fi
    done
    output=$(echo "$output2")

    echo "$output"
fi


