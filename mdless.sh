#!/usr/bin/bash

if [ $# -ne 1 ]; then
    echo "usage: $0 [filename]"
    exit
fi 

pandoc -f markdown -t html $1 | w3m -T text/html

