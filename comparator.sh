
if [ "$#" -ne 2 ] ; then
  echo "Error: The script only works with two arguments!";

   exit

   fi
if [[ ! "$1" =~ ^-?[0-9]+$ || ! "$2" =~ ^-?[0-9]+$ ]] ; then
  echo "Error: Only two numeric arguments are acceptable!";
  exit
fi


if [ "$1" -gt "$2" ] ; then
  echo "$1 > $2"
  exit
fi

if [ "$1" -lt "$2" ] ; then
  echo "$1 < $2"
  exit
fi

echo "$1 = $2"