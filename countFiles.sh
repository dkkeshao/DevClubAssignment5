#!/bin/bash

count=0
for i in $(ls -A  $1); do

        if [ -d "$i" ]; then
                count=$count
        elif [ -f "$i" ]; then

        count=$(($count+1))


else
        echo " error code-1"
        exit1
fi

done

if [ -e "$i"  ]; then
echo " The no. of files in given path is $count. "
else
        echo " destination does not exist--error code-1"
fi


