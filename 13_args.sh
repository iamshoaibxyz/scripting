#!/bin/bash
# This script takes two arguments and prints them

echo "Argument 1: $1"
echo "Argument 2: $2"
# ./myscript.sh Hello World

echo "##################################"

# Function that takes two arguments
my_function() {
    echo "First argument: $1"
    echo "Second argument: $2"
}

# Calling the function with arguments
my_function "Goodbye" "Earth" # static
my_function $1 $2 # dynamic

echo "##################################"

# Print the number of arguments
echo "Number of arguments: $#"

# Print all arguments
echo "All arguments using \$@: $@"

# Print all arguments as a single string
echo "All arguments using \$*: $*"

# ./myscript.sh Hello World Bash Script


