#!/bin/bash

# Count the number of files in the current directory (not including directories)
function get_file_count {
  echo $(ls -p | grep -v / | wc -l)
}

echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

# Store the correct answer
correct=$(get_file_count)

# Loop until the correct guess
while true; do
  read -p "Enter your guess: " guess

  # Check if input is a number
  if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid number."
    continue
  fi

  if (( guess < correct )); then
    echo "Too low!"
  elif (( guess > correct )); then
    echo "Too high!"
  else
    echo "Congratulations! You guessed it right."
    break
  fi
done
