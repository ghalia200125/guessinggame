#!/bin/bash

# Function to get the number of files in the current directory
function file_count {
  echo $(ls -1 | wc -l)
}

count=$(file_count)
guess=-1

echo "Welcome to the guessing game!"
echo "How many files are in the current directory?"

while [[ $guess -ne $count ]]
do
  read guess
  if [[ $guess -lt $count ]]
  then
    echo "Too low. Try again."
  elif [[ $guess -gt $count ]]
  then
    echo "Too high. Try again."
  else
    echo "Congratulations! You guessed the correct number of files."
  fi
done
