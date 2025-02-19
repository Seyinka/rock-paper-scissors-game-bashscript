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

# Get the winner using case statement
case "$user_choice-$computer_choice" in

rock-rock|paper-paper|scissors-scissors)

        echo "It's a tie" ;;

    rock-scissors|paper-rock|scissors-paper)

        echo "You win" ;;

    rock-paper|paper-scissors|scissors-rock)

        echo "You lose, Computer wins" ;;

    *)
        echo "Error" ;;
esac