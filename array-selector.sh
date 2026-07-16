colors=(red blue green white black)
 if [[ $# -ne 1 ]]; then
    echo "Error"
elif [[ ! $1 =~ ^[0-9]+$ ]]; then
    echo "Error"
else
     
    if (( $1 < 1 || $1 > ${#colors[@]} )); then
        echo "Error"
    else
        echo "${colors[$1-1]}"
    fi
fi