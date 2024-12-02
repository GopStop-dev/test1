
#!/bin/bash

# Set default terminal colors
GREEN='\033[0;32m'
RESET='\033[0m'

# Hide cursor
tput civis

# Trap Ctrl+C to restore cursor and exit
trap "tput cnorm; exit" INT

while true; do
    # Generate a random length string of numbers and spaces
    for i in {1..100}; do
        printf "${GREEN}%s${RESET}" "$(( RANDOM % 2 ))"
    done
    printf "\n"

    # Add a slight delay for effect
    sleep 0.05
done
