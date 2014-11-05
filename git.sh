#!/bin/bash

function status {
    if [ ! -d "$1" ]; then
        return
    fi
    DIR=`pwd`
    cd "$1"
    echo "$2:"
    git $CMD
    cd $DIR
}

CMD="$1"
status . evol-all
status client-data client-data
status server-code server-code
status server-data server-data
status tools tools
status server-code/src/evol evol-hercules
status music music
