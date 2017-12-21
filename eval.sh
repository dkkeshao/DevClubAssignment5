#!/bin/bash
#eval.sh

if [ -r "$1" ]; then
        x=0
        count=0

        while read no opp; do
                if [ "$opp" == "+" ]; then
                        x=$(($x+$no))
                        count=$(($count+1))
                elif [ "$opp" == "-" ]; then
                        x=$(($x-$no))
                        count=$(($count+1))
                elif [ "$opp" == "*" ]; then
                        x=$(($x*$no))
                        count=$(($count+1))
                elif [ "$opp" == "/" ]; then
                        x=$(($x/$no))
                        count=$(($count+1))

                else
                        echo "Unkown operator encountered on line: $count"
  fi
        done < $1
        echo " The ans. of arithmetic is: $x."
fi

                                                              
