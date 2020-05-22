#!/bin/sh
for i in `ls *.md`; do 
    markdown $i > $(echo $i | sed 's/.md/.html/')
done;
