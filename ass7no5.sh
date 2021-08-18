#Take a range from 0 – 100, find the digits that are repeated twice like 33, 77, etc and store them in an array


echo "range from 0 to 100"
n=11
i=1

for ((i;i<=9;i++))
 do
a=$(($i*$n))

double[$i]="$a"

done
echo "array of doubles ${double[@]}"
