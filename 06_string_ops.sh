#!/bin/bash

my_str="Hello Everyone, How are you?"

length_of_char=${#my_str}
echo "Lenght of char of 'my_str' is: $length_of_char"

uppercase_latter=${my_str^^}
echo "Upper case latter: $uppercase_latter"

lowercase_latter=${my_str,,}
echo "Lower case latter: $lowercase_latter"

replace_info=${my_str/Everyone/My friends}
echo "My updated info: $replace_info"

slice=${my_str:6}
echo "Sliced info: Assalamualikum $slice"
