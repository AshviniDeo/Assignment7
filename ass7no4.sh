#Write a Program to show Sum of three Integer adds to ZERO

read -p "Enter first Number :" num1
read -p "Enter second Number :" num2
read -p "Enter third Number :" num3

sum=$(($num1 + $num2 + $num3))

ZERO[0]=$num1
ZERO[1]=$num2
ZERO[2]=$num3
ZERO[3]=$sum

echo " ${ZERO[3]} is Addition of $num1 ,$num2 and $num3 are in ZERO is : ${ZERO[@]}"
