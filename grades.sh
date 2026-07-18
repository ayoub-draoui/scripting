#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Error: expect 1 argument only!" >&2
    exit 1
fi

num_students=$1

declare -a names
declare -a grades

for (( i=1; i<=num_students; i++ )); do
    read -p "Student Name #$i: " name
    names+=("$name")
    
    read -p "Student Grade #$i: " grade
    
    if [[ ! "$grade" =~ ^[0-9]+$ ]] || [ "$grade" -lt 0 ] || [ "$grade" -gt 100 ]; then
        echo "Error: The grade '$grade' is not a valid input. Only numerical grades between 0 and 100 are accepted." >&2
        exit 1
    fi
    grades+=("$grade")
done

for (( i=0; i<num_students; i++ )); do
    current_name=${names[$i]}
    current_grade=${grades[$i]}
    
    if [ "$current_grade" -ge 90 ]; then
        echo "$current_name: You did an excellent job!"
    elif [ "$current_grade" -ge 70 ]; then
        echo "$current_name: You did a good job!"
    elif [ "$current_grade" -ge 50 ]; then
        echo "$current_name: You need a bit more effort!"
    else
        echo "$current_name: You had a poor performance!"
    fi
done