#!/bin/bash

#Basic Structure of a case Statement
<<commented
case "$variable" in
  pattern1)
    # commands to execute if pattern1 matches
    ;;
  pattern2)
    # commands to execute if pattern2 matches
    ;;
  *)
    # commands to execute if no pattern matches (default case)
    ;;
esac
commented

#1: Simple Example with Strings
echo "Enter a number between 1 and 3:"
read number
case "$number" in
  1)
    echo "You chose one!"
    ;;
  2)
    echo "You chose two!"
    ;;
  3)
    echo "You chose three!"
    ;;
  *)
    echo "Invalid choice!"
    ;;
esac

echo "****************************"

#2: Matching Multiple Patterns
echo "Enter a day of the week:"
read day
case "$day" in
  Monday|Tuesday|Wednesday|Thursday|Friday)
    echo "It's a weekday!"
    ;;
  Saturday|Sunday)
    echo "It's the weekend!"
    ;;
  *)
    echo "Invalid day!"
    ;;
esac

echo "****************************"

#3: Using Wildcards
echo "Enter a file name:"
read filename
case "$filename" in
  *.txt)
    echo "This is a text file."
    ;;
  *.jpg|*.png)
    echo "This is an image file."
    ;;
  *)
    echo "Unknown file type."
    ;;
esac
