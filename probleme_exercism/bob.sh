#!/bin/bash
#https://exercism.org/tracks/bash/exercises/bob/
function isSilence(){
        if [[ "$1" =~ ^[[:space:]]*$ ]]; then
                echo "true"
        else echo "false"
        fi
}

function isQuestion() {
        if [[ ${input} =~ \?\ *$ ]]; then
                echo "true"
        else echo "false"
        fi
}


function isYelling(){
        input="$1"
        allCaps="${input^^}"
        if [[ "$input" == "$allCaps" && "$allCaps" =~ [A-Z] ]]; then
                echo "true"
        else echo "false"
        fi
}
main(){
        local input="$*"
        local isQ=$(isQuestion "$input")
        local isY=$(isYelling "$input")
        #echo "E sus : $isY"
        #echo "E intrebare $isQ"
        if [[ "$isQ" == "true" && "$isY" == "true" ]]; then
#               echo "ambele"
                echo "Calm down, I know what I'm doing!"
        elif [ "$isQ" == "true" ]; then
                echo "Sure."
        elif [ "$isY" == "true" ]; then
                echo "Whoa, chill out!" 
        else echo "Whatever."   
        fi
}
#here should have used isSilence but idc
if [[ -z "$@" || "$@" =~ ^[[:space:]]*$ ]]; then
        echo "Fine. Be that way!"
else main "$@"
fi

