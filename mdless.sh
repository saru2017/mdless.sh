#!/usr/bin/bash

if [ $# -ne 1 ]; then
    echo "usage: mdless [filename]"
    exit
fi 

pandoc -f markdown -t html $1 | w3m -T text/html

