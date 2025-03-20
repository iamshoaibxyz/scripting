#!/bin/bash

# Display system-related variables
echo "The current user is: $USER"
echo "The home directory of the user is: $HOME"
echo "The shell being used is: $SHELL"
echo "The current directory is: $PWD"

echo "#####################################"

# Assign values to variables
username="Alice"
age=25
greeting="Hello"

# Access and print the variables
echo "$greeting, $username!"
echo "$username is $age years old."

echo "#####################################"

# Function that uses local variables
greet_user() {
  local name="Bob"
  local message="Welcome to the system!"

  # Use local variables within the function
  echo "$message $name"
}

# Call the function
greet_user

echo "#####################################"

# System variables
system_name=$(uname)
current_date=$(date)

# Local variables
file_name="logfile.txt"
log_message="System check completed."

# Using system variables
echo "System Name: $system_name"
echo "Current Date: $current_date"

# Using local variables
echo "$log_message" > $file_name
echo "Log message saved to $file_name"
