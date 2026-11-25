#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=postgres -t --no-align -c"

echo "Enter your username:"

read USERNAME

USER_DATA="$($PSQL "SELECT u.name, COUNT(g.tries) AS games_played, coalesce(MIN(g.tries), 0) AS best_game FROM username AS u LEFT JOIN games_played AS g ON g.username_id=u.id WHERE name='$USERNAME' GROUP BY u.name")"

if [[ -z $USER_DATA ]]
then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."

  echo "$($PSQL "INSERT INTO username(name) VALUES('$USERNAME')")" | ""
else
  echo $USER_DATA | while IFS="|" read -r NAME GAMES_PLAYED BEST_GAME;
  do
    echo -e "\nWelcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  done
fi

USERNAME_ID=$($PSQL "SELECT id FROM username WHERE name='$USERNAME'")

SECRET_NUMBER=$((($RANDOM % 1000) + 1))

echo -e "\nGuess the secret number between 1 and 1000:"

read USER_NUMBER

TRIES=1

while [[ $USER_NUMBER != $SECRET_NUMBER ]]
do

  if [[ $USER_NUMBER =~ ^[0-9]+$ ]]
  then
    if [[ $USER_NUMBER < $SECRET_NUMBER ]]
    then
      echo "It's higher than that, guess again:"
    else
      echo "It's lower than that, guess again:"
    fi
  else
    echo "That is not an integer, guess again:"
  fi

  TRIES=$(($TRIES + 1))
  
  read USER_NUMBER
done

echo "$($PSQL "INSERT INTO games_played(username_id, tries, secret_number) VALUES($USERNAME_ID, $TRIES, $SECRET_NUMBER)")" | ""

echo "You guessed it in $TRIES tries. The secret number was $SECRET_NUMBER. Nice job!"

