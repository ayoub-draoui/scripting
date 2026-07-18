if [ "$#" -ne 2 ]; then
    echo "Error: expect 2 arguments" >&2
    exit 1
fi

flag="$1"
user="$2"

case "$flag" in
    -e)
        if getent passwd "$user" >/dev/null; then
            echo "yes"
        else
            echo "no"
        fi
        ;;
    -i)
        getent passwd "$user"
        ;;
    *)
        echo "Error: unknown flag" >&2
        exit 1
        ;;
esac