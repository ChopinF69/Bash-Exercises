#!/bin/bash
#https://exercism.org/tracks/bash/exercises/scrabble-score/
function main(){
        score=0
        input="$1"
        input="${input^^}"
        #echo "$input"
        for(( i=0 ; i < ${#input} ; i++ )); do
                chr="${input:$i:1}"
                case "$chr" in
                        [AERIOULNRST])
                                ((score++))
                        ;;
                        [DG])
                                ((score+=2))
                        ;;
                        [BCMP])
                                ((score+=3))
                        ;;
                        [FHVWY])
                                ((score+=4))
                        ;;
                        [K])
                                ((score+=5))
                        ;;
                        [JX])
                                ((score+=8))
                        ;;
                        [QZ])
                                ((score+=10))
                        ;;
                esac
        done
        echo "$score"
}

main "$@"


