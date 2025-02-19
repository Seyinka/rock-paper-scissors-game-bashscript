# Rock-Paper-Scissors Game in Bash

## 🎮 Introduction
This is a simple **Rock-Paper-Scissors** game written in **Bash**. The game allows a user to play against the computer, which makes a random choice. The winner is determined based on the classic rules of Rock-Paper-Scissors.

## Features of the script
- User input validation to ensure valid choices
- Random selection for the computer
- Two approaches: `if-elif-else` and `case` statements for determining the winner
- Simple and lightweight script

## Installation & Usage
### Clone the Repository
```sh
 git clone https://github.com/Seyinka/rock-paper-scissors-game-bashscript.git

 cd rock-paper-scissors
```

### Make the Script Executable / Set Executable Permissions to the Script
```sh
chmod +x rock_paper_scissors.sh
```

### Run the Script
```sh
./rock_paper_scissors.sh
```

## Game Rules
- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock
- Same choices result in a tie

## Code (Using `case` statement)
```bash
#!/bin/bash

choices=("rock" "paper" "scissors")

read -p "Enter your choice (rock, paper, scissors): " user_choice

if [[ ! " ${choices[@]} " =~ " ${user_choice} " ]]; then
    echo "Invalid choice!"
    exit 1
fi

computer_choice=${choices[$((RANDOM % 3))]}
echo "Computer choice: $computer_choice"

case "$user_choice-$computer_choice" in
    rock-rock | paper-paper | scissors-scissors)
     echo "It's a tie!" ;;

    rock-scissors | paper-rock | scissors-paper) 
    echo "You win!" ;;

    rock-paper | paper-scissors | scissors-rock)
     echo "You lose!" ;;

    *) echo "Error: Unexpected input" ;;
esac
```

## Code (Using `if-elif-else` statement)
```bash
#!/bin/bash

choices=("rock" "paper" "scissors")

read -p "Enter your choice (rock, paper, scissors): " user_choice

if [[ ! " ${choices[@]} " =~ " ${user_choice} " ]]; then
    echo "Invalid choice!"
    exit 1
fi

computer_choice=${choices[$((RANDOM % 3))]}
echo "Computer choice: $computer_choice"

if [[ "$user_choice" == "$computer_choice" ]]; then
    echo "It's a tie!"
elif [[ ("$user_choice" == "rock" && "$computer_choice" == "scissors") ||
        ("$user_choice" == "paper" && "$computer_choice" == "rock") ||
        ("$user_choice" == "scissors" && "$computer_choice" == "paper") ]]; then
    echo "You win!"
else
    echo "You lose!"
fi
```

## Future Improvements
- Add a score tracking system
- Implement a loop for multiple rounds
- Enhance user interaction with colors

## Contributing
I'm open to improvents, please feel free to fork this repo and submit pull requests.

### Connect with Me
If you liked this project, let's connect on [LinkedIn](www.linkedin.com/in/seyitan-oluwaseitan-83ab93251)! 
