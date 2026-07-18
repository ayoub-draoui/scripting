#!/bin/bash
if [[ $# -ne 1 ]]; then
    echo "Error: wrong argument"
    exit 1
fi

secretNum=$1

if [[ ! "$secretNum" =~ ^[0-9]+$ ]] || [[ "$secretNum" -lt 1 ]] || [[ "$secretNum" -gt 100 ]]; then
    echo "Error: wrong argument"
    exit 1
fi

for (( chances=5; chances>0; )); do
    echo "Enter your guess ($chances tries left):"
    read guess

    if [[ -z "$guess" ]] || [[ ! "$guess" =~ ^[0-9]+$ ]] || [[ "$guess" -lt 1 ]] || [[ "$guess" -gt 100 ]]; then
        continue
    fi

    ((chances--))
    moves=$(( 5 - chances ))

    if [[ "$guess" -eq "$secretNum" ]]; then
        echo "Congratulations, you found the number in $moves moves!"
        exit 0
    elif [[ "$guess" -gt "$secretNum" ]]; then
        echo "Go down"
    else
        echo "Go up"
    fi
done
echo "You lost, the number was $secretNum"