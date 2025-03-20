#!/bin/bash

<<commented
function function_name() {
    # Commands go here
}

# Or alternatively:

function_name() {
    # Commands go here
}
commented

# Function definition
greet() {
    echo "Hello, Everyone!"
}

# Function call
greet

##########################

#Function greet takes one argument
greet() {
    echo "Hello, $1!"
}

# Function call
greet "Alice"

##########################

# Function that adds two numbers
add_numbers() {
    sum=$(( $1 + $2 ))
    echo $sum
}
# Function call
result=$(add_numbers 5 10)
echo "The sum is: $result"

##########################

# Function with default values
greet() {
    name=${1:-"Guest"}  # Default to "Guest" if no argument is provided
    echo "Hello, $name!"
}

# Function calls
greet "Bob"  # Prints: Hello, Bob!
greet        # Prints: Hello, Guest!

##########################

# Function with local variable(only accessible within the function)
calculate_square() {
    local number=$1
    local square=$(( number * number ))
    echo "The square of $number is $square"
}

# Function call
calculate_square 4  # Prints: The square of 4 is 16

##########################

# Function to check if a number is even or odd
check_even_or_odd() {
    if (( $1 % 2 == 0 )); then
        echo "$1 is even"
        return 0  # Success
    else
        echo "$1 is odd"
        return 1  # Error
    fi
}

# Function call
check_even_or_odd 4  # Prints: 4 is even
echo "Exit status: $?"  # Prints: Exit status: 0

check_even_or_odd 5  # Prints: 5 is odd
echo "Exit status: $?"  # Prints: Exit status: 1

##########################



##########################

