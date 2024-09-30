#!/bin/bash
# A simple number guessing game script
guessing_number() {
  rand_number=$((RANDOM % $1))
  read -p "Guess a number between 0 and $1: " guest_number

  for i in {1..3}; do
    if [ $rand_number -eq $guest_number ]; then
      echo "You won!"
      break
    elif [ $rand_number -gt $guest_number ]; then
      echo "You missed! The random number is greater than $guest_number."
      read -p "Please try again: " guest_number
    else
      echo "You missed! The random number is less than $guest_number."
      read -p "Please try again: " guest_number
    fi
  done

  if [ $i -eq 3 ]; then
    echo "You lose! The correct number was $rand_number."
  fi
}
