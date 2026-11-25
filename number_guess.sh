#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=postgres -t --no-align -c"

echo "Enter your username:"

read USERNAME

USER_DATA="$($PSQL "SELECT * FROM username WHERE name='$USERNAME'")"

if [[ -z $USER_DATA ]]
then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
  echo -e "\nWelcome back, $USERNAME! You have played <games_played> games, and your best game took <best_game> guesses."
fi