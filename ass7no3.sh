#Extend the Prime Factorization Program to store all the Prime Factors of a number n into an array and finally display the output.

read -p "Enter number : " num

for ((i=2; i<$num; i++))
do
	
        while [ $(($num%i)) == 0 ]
          do
	            
           result[i]=$i
           num=$(($num/$i))
	
       done

echo "${result[@]}"

done



