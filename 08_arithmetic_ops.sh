#!/bin/bash

#There are several ways to perform arithmetic operations.

#1. Using (( )) (Double Parentheses)
a=10
b=5
result=$((a + b))   # Addition
result=$((a - b))   # Subtraction
result=$((a * b))   # Multiplication
result=$((a / b))   # Division
result=$((a % b))   # Modulo (remainder)

#2. Using let Command
a=10
b=5
let result=a+b    # Addition
let result=a-b    # Subtraction
let result=a*b    # Multiplication
let result=a/b    # Division
let result=a%b    # Modulo

#3. Using expr Command
a=10
b=5
result=$(expr $a + $b)  # Addition
result=$(expr $a - $b)  # Subtraction
result=$(expr $a \* $b) # Multiplication (escape `*`)
result=$(expr $a / $b)  # Division
result=$(expr $a % $b)  # Modulo

#4. Using bc Command (for Floating Point and Complex Operations)
a=10
b=5
result=$(echo "$a + $b" | bc)   # Addition
result=$(echo "$a - $b" | bc)   # Subtraction
result=$(echo "$a * $b" | bc)   # Multiplication
result=$(echo "$a / $b" | bc)   # Division
result=$(echo "$a % $b" | bc)   # Modulo

#5. Using awk
a=10
b=5
result=$(awk "BEGIN {print $a + $b}")   # Addition
result=$(awk "BEGIN {print $a - $b}")   # Subtraction
result=$(awk "BEGIN {print $a * $b}")   # Multiplication
result=$(awk "BEGIN {print $a / $b}")   # Division
result=$(awk "BEGIN {print $a % $b}")   # Modulo

