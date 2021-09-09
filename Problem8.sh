#!/bin/bash
FILES=$(ls $@)
echo $FILES $@
for f in $FILES
do
   echo "Processing $f file..."
   # count number of characters  and output that for file $f
   wc -c $f
done


