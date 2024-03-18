#!/bin/bash
#https://exercism.org/tracks/bash/exercises/luhn/
function main(){
        input="$1"
        #Am sters spatiile de la inceput si final
        input=$(echo "$input" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')

        # If the input is empty or contains only "0", it's not valid
        if [[ -z "$input" || "$input" == "0" ]]; then
            echo "false"
            exit 0
        fi
        #acum vrem sa eliminam din input ceea ce nu este cifra
        length="${#input}"
        number=""
        for(( i=0 ; i < "$length" ; i++ )); do
                chr="${input:$i:1}"
                if [[ "${chr}" =~ [0-9] ]]; then
                        number="$number$chr"
                fi
        done
        sum=0
        number=$(echo "$number" | rev)
        for(( i=0 ; i<"${#number}" ; i=i+2 )); do
                #acum vrem sa dublam cifrele de pe pozitii impare
                #pe cele de pe par doar le adaugam
                digitPozPara="${number:$i:1}"
                digitPozImpara="${number:$i+1:1}"
                ((sum+=digitPozPara))
                ((digitPozImpara*=2))
                if [[ $digitPozImpara -ge 9 ]]; then    
                        ((digitPozImpara-=9))
                fi
                ((sum+=digitPozImpara))
        done
        #echo "$number"
        #Acum verificam daca este divizibila cu 10 suma
        #echo "$sum"
        ((rest=sum%10))
        #echo "$rest"
        if [[ "$rest" == "0" ]]; then
                echo "true"
        else echo "false"
        fi
}
input=""
#Daca avem doar 0 nu e bun

if [[ "$#" == "1" && "$1" == "0" ]]; then
        echo "false"
        exit 0
else for param in "$@"; do
        #Verificam daca contine litere
        if [[ "$param" =~ [a-zA-Z] || "$param" =~ [\-\_\$\%] ]]; then
                echo "false"
                exit 0
        fi
        input="$input$param"
        done
fi
#echo "$#"
main "$input"


