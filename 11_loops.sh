#!/bin/bash

#1. Basic Structure of for Loop
<<commented
for variable in sequence
do
  # commands to execute
done
commented

for i in 1 2 3 4 5
do
  echo "Number: $i"
done

for i in {1..5}
do
  echo "Number: $i"
done 

for file in /path/to/directory/*
#for file in /tmp/scripts/*
do
  echo "File: $file"
done

echo "****************************"

#for Loop with C-style Syntax
<<commented
for (( initialization; condition; increment ))
do
  # commands to execute
done
commented

for (( i=1; i<=5; i++ ))
do
  echo "Number: $i"
done

echo "****************************"

#2. Basic Structure of while Loop
<<commented
while condition
do
  # commands to execute
done
commented

i=1
while [ $i -le 5 ]
do
  echo "Number: $i"
  ((i++))
done

while read line
do
  echo "Line: $line"
#done < /tmp/scripts/names_file.txt
done < /path/to/file.txt

echo "****************************"

#3. Basic Structure of until Loop
<<commented
until condition
do
  # commands to execute
done
commented

i=5
until [ $i -lt 1 ]
do
  echo "Countdown: $i"
  ((i--))
done

