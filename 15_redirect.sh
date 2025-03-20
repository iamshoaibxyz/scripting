#!/bin/bash

# Step 1: Redirecting stdout to a file using `>`
echo "This message will be written to output.txt" > output.txt

# Step 2: Appending stdout to a file using `>>`
echo "This message will be appended to output.txt" >> output.txt

# Step 3: Redirecting stderr to a file using `2>`
echo "This is an error message" 2> error.log

# Step 4: Redirecting both stdout and stderr to the same file using `&>`
echo "This is a standard message" > output_and_error.log
echo "This is an error message" 2>> output_and_error.log

# Step 5: Redirecting stdout to `/dev/null` to discard it
echo "This message will be discarded" > /dev/null

# Step 6: Redirecting stderr to `/dev/null` to discard it
echo "This error message will be discarded" 2> /dev/null

# Step 7: Redirecting stdout and stderr to `/dev/null`
ls non_existent_directory > /dev/null 2>&1

# Step 8: Using `<` to redirect input from a file
echo "Hello, world!" > input.txt
cat < input.txt

# Step 9: Using `/dev/random` to get random data
echo "This writes random data to /dev/random" > /dev/random

# Step 10: Using `/dev/zero` to write zero bytes
head -c 10 </dev/zero > zero_bytes.txt

# Step 11: Using `tee` to redirect both stdout and to a file
echo "This will be printed to the screen and saved in both output.txt and output_and_error.log" | tee -a output_and_error.log

# Step 12: Using `exec` to redirect all script output
exec > all_output.log 2>&1
echo "After exec, all output and errors are redirected to all_output.log"

# Final Step: Displaying the files that were used
echo "Contents of output.txt:"
cat output.txt
echo "Contents of error.log:"
cat error.log
echo "Contents of output_and_error.log:"
cat output_and_error.log
echo "Contents of all_output.log:"
cat all_output.log

