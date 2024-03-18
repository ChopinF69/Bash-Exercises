#!/bin/bash
#https://exercism.org/tracks/bash/exercises/darts/
function main(){
        #Sa eliminam minusul din numar daca exista la inceput
        x="$1"
        y="$2"
        firstChr="${x:0:1}"
        if [[ "$firstChr" == "-" ]]; then
                x="${x:1:${#x}}"
        fi
        firstChr="${y:0:1}"
        if [[ "$firstChr" == "-" ]]; then
                y="${y:1:${#y}}"
        fi

        if ! checkIfNumber "$x" || ! checkIfNumber "$y"; then
                echo "Those are not numbers !fmm"
                exit 1
        fi

        #echo "X : $x"
        #echo "Y : $y"
        number=$(echo "scale=10; $x^2+$y^2" | bc)
        radius=$(echo "scale=10; sqrt($number)" | bc)
        #echo "NUMAR : $number"
        #echo "RAZA : $radius"

        ok1=$(echo "$radius <= 1.0" | bc)
        ok5=$(echo "$radius <= 5.0" | bc)
        ok10=$(echo "$radius <= 10.0" | bc)

        if [[ "$ok1" == "1" ]]; then
                echo "10"
                return
        elif [[ "$ok5" == "1" ]]; then  
                echo "5"
                return
        elif [[ "$ok10" == "1" ]]; then
                echo "1"
                return
        else echo "0"
        fi
        return
}

function checkIfNumber() {
    local n="$1"
    if [[ "$n" =~ ^-?[0-9]+([.][0-9]+)?$ ]]; then
        return 0
    else
        return 1
    fi
}

if [[ -z "$1" || "$#" != "2" ]]; then
        echo "Invalid input"
        exit 1
else main "$@"
fi
