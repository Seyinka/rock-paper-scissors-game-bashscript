#!/bin/bash

# Rock, Paper, Scissors Game

#Store valid choices
choices=("rock" "paper" "scissors")

read -p "Enter your choice (rock, paper, scissors): " user_choice

# Check if the user choice is valid

if [[ ! " ${choices[@]} " =~ " ${user_choice} " ]]; then
    echo "Invalid choice"
    exit 1
fi

# Generate a random choice for the computer

computer_choice=${choices[$((RANDOM % 3))]}
echo "Computer choice: $computer_choice"

# Display Choices of the user and the computer
echo "User choice: $user_choice"
echo "Computer choice: $computer_choice"

# Get the winner

if [[ "$user_choice" == "$computer_choice" ]]; then
echo "It's a tie"

elif [[ "$user_choice" == "rock" && "$computer_choice" == "scissors" ]] ||
[[ "$user_choice" == "paper" && "$computer_choice" == "rock" ]] ||
[[ "$user_choice" == "scissors" && "$computer_choice" == "paper" ]]; then
echo " You win"

else
echo "You lose, Computer wins"
fi

# End of the script