#!/bin/bash
#https://exercism.org/tracks/bash/exercises/resistor-color-duo/                     
function calculateValue() {
    chr="$1"
    case "$chr" in 
        "black") echo "0" ;;
        "brown") echo "1" ;;
        "red") echo "2" ;;
        "orange") echo "3" ;;
        "yellow") echo "4" ;;
        "green") echo "5" ;;
        "blue") echo "6" ;;
        "violet") echo "7" ;;
        "grey") echo "8" ;;
        "white") echo "9" ;;
        *) 
        echo "10"
        ;;
    esac
}

function main(){
        sum=""
        for param in "$@"; do
                value=$(calculateValue "$param")
                if [[ "$value" == "10" ]]; then
                        echo "invalid color"
                        exit 1
                        return 
                fi
                sum="$sum$value"
                #echo "Valoare : $value; culoare : $param"
        done
        echo "$sum"
#       return "$sum"
}
sum="$(main "$@")"
#echo "$sum"
# Print only the first two characters of the sum

if [[ "$sum" =~ ^[0-9]+$ ]]; then
        #Vreau sa elimin zero daca e la inceput
        if [[ "${sum:0:1}" == "0" ]]; then
                echo "${sum:1:2}"
        else echo "${sum:0:2}"
        fi
else
        echo "invalid color"
        exit 1
fi
