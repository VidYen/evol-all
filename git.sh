#!/usr/bin/env bash

export LANG=C

function status {
    if [ ! -d "$1" ]; then
        return
    fi
    DIR=$(pwd)
    cd "$1"
    echo "$2 ($(git symbolic-ref --short -q HEAD)):"
    git $CMD
    cd "$DIR"
}

CMD="$*"
status . evol-all
status client-data client-data
status server-code server-code
status server-data server-data
status server-local server-local
status tools tools
status server-code/src/evol evol-hercules
status music music
status manaplus manaplus
status docs docs
status art art
status media media
