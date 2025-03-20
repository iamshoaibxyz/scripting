#!/bin/bash

#Basic Structure of Conditional Statement

<<commented
if [ condition ]; then
    # code to run if condition is true
elif [ another_condition ]; then
    # code to run if another condition is true
else
    # code to run if none of the conditions are true
fi
commented

# Simple if statement
number=10
if [ $number -gt 5 ]; then
    echo "The number is greater than 5."
fi

# if-else statement
number=3
if [ $number -gt 5 ]; then
    echo "The number is greater than 5."
else
    echo "The number is not greater than 5."
fi

# if-elif-else statement
number=7
if [ $number -gt 10 ]; then
    echo "The number is greater than 10."
elif [ $number -eq 7 ]; then
    echo "The number is equal to 7."
else
    echo "The number is less than or equal to 10 but not equal to 7."
fi

#Checking for file existence
filename="/path/of/test.txt"
if [ -e "$filename" ]; then
    echo "The file exists."
else
    echo "The file does not exist."
fi

#Using logical operators (&& and ||)
a=10
b=5
if [ $a -gt 5 ] && [ $b -lt 10 ]; then
    echo "Both conditions are true."
fi

a=3
b=10
if [ $a -gt 5 ] || [ $b -gt 5 ]; then
    echo "At least one condition is true."
fi

#String comparison
str1="hello"
str2="world"
if [ "$str1" = "$str2" ]; then
    echo "The strings are equal."
else
    echo "The strings are not equal."
fi

#Numeric comparison
x=4
y=10
if [ $x -lt $y ]; then
    echo "$x is less than $y"
elif [ $x -eq $y ]; then
    echo "$x is equal to $y"
else
    echo "$x is greater than $y"
fi


