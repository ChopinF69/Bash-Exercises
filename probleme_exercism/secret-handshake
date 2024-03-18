#!/usr/bin/env bash                                                           
#!/bin/bash
#https://exercism.org/tracks/bash/exercises/secret-handshake/
#Primim un numar intre 1 si 31 si trebuie sa il facem in baza 2 , urmand dupa operatii

function numberBase2(){
        output=""
        n="$1"
        for (( i=0 ; i < 5 ; i++ )); do
                #Acum vedem daca punem 0 sau 1
                ((digit=n%10))
                ((rest=digit%2))
                output="$output$rest"
                ((n/=2))

        done
        #Now we need to reverse a string xxDASASXZASASZXCASD
        reverse="$(echo "$output" | rev)"
        echo "$reverse"
}

function handleOperation() {
    number="$1"
    operations=""
    if [[ "${number:4:1}" == "1" ]]; then
        operations+="wink "
    fi
    if [[ "${number:3:1}" == "1" ]]; then
        operations+="doubleblink "
    fi
    if [[ "${number:2:1}" == "1" ]]; then
        operations+="closeyoureyes "
    fi
    if [[ "${number:1:1}" == "1" ]]; then
        operations+="jump "
    fi
    if [[ "${number:0:1}" == "1" ]]; then
        # operations=$(echo "$operations" | xargs rev)
        words=($operations)
        reversed_options=""
        for (( i=${#words[@]}-1; i>=0 ; i-- )); do
                reversed_options+="${words[i]} "
        done
        operations="$reversed_options"
    fi
    echo "$operations"
}

function main(){
    input="$1"
    number2="$(numberBase2 "$input")"
    operations="$(handleOperation "$number2")"
#       echo "$operations"
    # Split the operations string into words
    IFS=' ' read -r -a words <<< "$operations"
    out=""
    # Iterate over the words
    for (( i=0; i<${#words[@]}; i++ )); do
        word="${words[i]}"
        if [[ "$word" == "wink" ]]; then
            out+="wink"
        elif [[ "$word" == "doubleblink" ]]; then
            out+="double blink"
        elif [[ "$word" == "closeyoureyes" ]]; then
            out+="close your eyes"
        elif [[ "$word" == "jump" ]]; then
            out+="jump"
        fi
        # Check if it's not the last word
        if [[ $i -ne $(( ${#words[@]} - 1 )) ]]; then
           out+=","
        fi
    done

#out=$(echo "$out" | sed 's/ *$//')
    echo "$out"
}


main "$@"
