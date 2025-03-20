#!/bin/bash

declare -A my_info

my_info=( [name]=Shoaib [age]=20 [city]=Karachi )

echo "My name is ${my_info[name]}"
echo "I am ${my_info[age]} year old"
echo "I live ${my_info[city]}"

my_info+=( [cert]=RHCSA/RHCE )
echo "I am preparing for ${my_info[cert]} Certifications"

my_info+=( [city]=Islamabad )
echo "Now i am living in ${my_info[city]}"


