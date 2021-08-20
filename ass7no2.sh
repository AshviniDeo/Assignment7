#Extend the above program to sort the array and then find the 2nd largest and the 2nd smallest element.

for ((i=0; i<10; i++))
do
num=$((1+RANDOM%9))$((RANDOM%10))$((RANDOM%10))
arr[i]=$num
done

echo "Random three digit array : ${arr[@]} "
for (( i=0; i<10; i++ ))
do
    for (( j=$(($i+1)); j<10; j++ ))
    do
        if [ ${arr[$i]} -gt ${arr[$j]} ]
        then
            temp=${arr[$i]}
            arr[$i]=${arr[$j]}
            arr[$j]=$temp
        fi
    done
done

 
echo "Sorted array is : ${arr[@]} "
echo "Second Maximum number in array is ${arr[8]} "
echo "Second Minimum number in array is ${arr[1]} "
