#!/bin/bash

my_array=( 1 32 4.5 Hello "Shoaib Mughal" false )

echo "Value in first index of my_array is: ${my_array[1]}"
echo "All value of my_array is: ${my_array[*]}"
echo "Number of value of my_array is: ${#my_array[*]}"

#my_array=( overwriting )

# slicing
echo "Values from 1st to last index of my_array is: ${my_array[*]:1}"
echo "Values from 4th to 6th index of my_array is: ${my_array[*]:4:2}"

my_array+=( NewValue 11 22 33 )

echo "New values of my_array is: ${my_array[*]}"
