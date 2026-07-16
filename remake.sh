if [[ $# -ne 1 ]]; then
    echo "Error"
    exit 1
fi

 

if [[ ! -d "$1" ]]; then
    echo "Error"
    exit 1
fi

touch "$1/ciao"
mkdir "$1/mamma"
touch "$1/guarda"
touch "$1/come"
mkdir "$1/mi"
touch "$1/diverto"

chmod 442 "$1/ciao"
chmod 777 "$1/mamma"    
chmod 400 "$1/guarda"    
chmod 642 "$1/come"      
chmod 452 "$1/mi"        
chmod 421 "$1/diverto"   

touch -t 01010001 "$1/ciao"
touch -t 01020001 "$1/mamma"
touch -t 01030001 "$1/guarda"
touch -t 01040001 "$1/come"
touch -t 01050001 "$1/mi"
touch -t 01060001 "$1/diverto"

exit 0