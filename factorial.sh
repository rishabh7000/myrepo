#Factorial
#!/bin/bash

array="10 20 40 50 30  5"
for i in $array
do
        temp=$i
        result=1
        while [ $i -gt 0 ]
        do
                        result=`expr $result \* $i`
                        i=`expr $i - 1`
        done
echo "The factorial of $temp is $result"
done
