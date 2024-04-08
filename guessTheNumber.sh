# Generating a number
target=$(( (RANDOM % 100) + 1 ))

echo "Welcome to Guess the Number!"
echo "If you want to quit, press 'q'."
echo "I've picked a number between 1 and 100. Can you guess it?"

# Looping
while true; do
    read -p "Enter your guess: " guess

    if [[ "$guess" == "q" ]]; then
        echo "You chose to quit. The target number was $target."
        break
    fi

    # check for guess
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
        continue
    fi

    # Comparing the numbers and give feedbacks
    if (( guess < target )); then
        echo "Too low! Try again."
    elif (( guess > target )); then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed the number $target!"
        break
    fi
done
