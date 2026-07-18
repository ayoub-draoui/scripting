#!/bin/bash

do_add() {
    echo $(($1 + $2))
}

do_sub() {
    echo $(($1 - $2))
}

do_mult() {
    echo $(($1 * $2))
}

do_divide() {
    if [ "$2" -eq 0 ]; then
        echo "Error: division by 0" >&2
        exit 2
    fi
    echo $(($1 / $2))
}


if [ $# -ne 3 ]; then
    echo "Error: expect 3 arguments" >&2
    exit 1
fi

re='^-?[0-9]+$'
if [[ ! $1 =~ $re ]] || [[ ! $3 =~ $re ]]; then
    echo "Error: invalid number" >&2
    exit 4
fi


case $2 in
    "+")
        do_add "$1" "$3"
        ;;
    "-")
        do_sub "$1" "$3"
        ;;
    "*")
        do_mult "$1" "$3"
        ;;
    "/")
        do_divide "$1" "$3"
        ;;
    *)
        echo "Error: invalid operator" >&2
        exit 3
        ;;
esac