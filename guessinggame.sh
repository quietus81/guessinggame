#!/usr/bin/env bash
# File: guessinggame.sh

function userprompt {		# Function for saving the user's entry in "guess" variable
	echo "Guess the number of files in the current directory:"
	read guess
}

found=false			# Initialisation of boolean variable "found" that corresponds to whether the user found the number of files
files=$(ls|wc -l)		# Command substitution for computed number of files in current directory
echo "Your current directory is: $(pwd)	# Indorms the user about his/her current directory
userprompt			# Call function "userprompt"

while !($found)			# while loop for as long as the user can't find the correct number of files
do
	if [[ $guess -eq $files ]]	#  if the guess is correct, a message is displayed
	then
		echo "Congratulations!!! There are $guess files in the current directory."
		found=true	# User guessed the number of files correctly, so the condition to end the while loop is met
	elif [[ $guess -lt $files ]]	# if the user guessed a lower number of files, then he is asked to guess again
	then
		echo "Your guess was too low. There are more than $guess files in the current directory"
		userprompt	# Call function "userprompt"
	else					# if the user guessed a higher number of files, then he is asked to guess again
		echo "Your guess was too high. There are less than $guess files in the current directory"
		userprompt	# Call function "userprompt"
	fi
done
