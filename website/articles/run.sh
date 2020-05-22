#!/bin/sh
# Run this script from website root folder
for i in `ls ./articles/*.md`; do 
    markdown $i > $(echo $i | sed 's/.md/.html/')
done;
