#Write a program in the following steps
#a. Generates 10 Random 3 Digit number.
#b. Store this random numbers into a array.
#c. Then find the 2nd largest and the 2nd smallest element without sorting the array.
min=999
secmin=999
max=0
second=0
for ((i=0; i<10; i++))
do
num=$((1+RANDOM%9))$((RANDOM%10))$((RANDOM%10))

array[i]=$num
	
	if [ "${array[i]}" -gt $max ]
        then
	  second=$max
          max="${array[i]}"
         elif [[ $second < "${array[i]}" && $second < $max ]]
         then
           second="${array[i]}"
	fi

	if [ "${array[i]}" -lt $min ]
	then
	secmin=$min
   	min="${array[i]}"
	elif [[ $secmin > "${array[i]}" && $secmin > $min ]]
        then
	secmin="${array[i]}"
	fi

done
echo ${array[@]}
echo "Second Maximum value in Array is: $second "
echo "Second Minimum value in Array is: $secmin "
echo "Maximum amoung all : $max "
echo "Minimum amoung all : $min "



