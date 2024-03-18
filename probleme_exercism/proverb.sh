#!/bin/bash
#https://exercism.org/tracks/bash/exercises/proverb/
function main(){
        if (( "$#" == "0" )); then
                echo ""
                return
        fi
        saved="$1"
        firstParam="$1"
        secondParam=""
        textOutput=""
        
        if (( $# > 1 )); then
                shift
                for param in "$@"; do
                        #For want of a nail the shoe was lost.
                        #..............$1......$2............
                        secondParam="$param"
                        textOutput="${textOutput}For want of a $firstParam the $secondParam was lost.\n"
                        firstParam="$secondParam"
                done
        fi

        #And all for the want of a nail.
        textOutput="${textOutput}And all for the want of a $saved."
        echo -e "$textOutput"
}

main "$@"
