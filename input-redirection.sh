#!/bin/bash
 USER="adraoui"
export USER
 cat <<EOF > show-info.sh
cat -e <<INFO
The current directory is: \$PWD
The default paths are: \$PATH
The current user is: \$USERNAME
INFO
EOF