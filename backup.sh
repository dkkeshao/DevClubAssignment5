#!/bin/bash 


for i in $(ls -A   $1); do
 for j in $(ls -A  $2); do
         if [ "$i" == "$j" ]; then
                 echo " for now directories are synced"
                 
                 
      
         elif [ "$i" != "$j" ]; then
                
                 placei=$( find /home -name $i )
                 echo $placei  
                 placej=$( find /home -name $j )
                 echo $placej
          
                 echo $( dirname $placej )
    
                 cp -r $placei $( dirname $placej )
    
        else
                echo "--error-code -1--"
fi

 done
done

