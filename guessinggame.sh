function get_file_count {
    local count=$(ls -1 | wc -l)
    echo $count
}

correct_count=$(get_file_count)
guess=-1

echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

while [[ $guess -ne $correct_count ]]
do
    read -p "Enter your guess: " guess

    if [[ $guess -lt $correct_count ]]
    then
        echo "Too low! Try again."
    elif [[ $guess -gt $correct_count ]]
    then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed the correct number of files."
    fi
done
