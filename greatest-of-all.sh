big=0

for i in {1..10}; do
    read -p "Enter a number: " -r input

    if [[ ! "$input" =~ ^[0-9]+$ ]]; then
        echo "ERROR: Invalid input only positive numerical characters are allowed"
        exit
    fi

    if [ "$input" -gt 10000 ]; then
        echo "ERROR: The number entered is too large"
        exit
    fi

    if [ "$input" -gt "$big" ]; then
        big=$input
    fi
done

echo "The largest number is: $big"