#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
cut -d',' -f3 games.csv | tail +2 | sort | uniq > winners.csv
cut -d',' -f4 games.csv | tail +2 | sort | uniq > opponents.csv
awk '{if(!seen[$0]++)print $0}' winners.csv opponents.csv > teams.csv

while IFS="," read -r rec_column1
do
  $($PSQL "insert into teams (name) values('$rec_column1');")
done < teams.csv

while IFS="," read -r rec_column1 rec_column2 rec_column3 rec_column4 rec_column5 rec_column6
do
  WINNER_ID=$($PSQL "select team_id from teams where name='$rec_column3';")
  OPPONENT_ID=$($PSQL "select team_id from teams where name='$rec_column4';")
  $($PSQL "insert into games (year, round, winner_id, opponent_id, winner_goals, opponent_goals) values('$rec_column1','$rec_column2', '$WINNER_ID','$OPPONENT_ID','$rec_column5','$rec_column6');")
done < <(tail -n +2 games.csv)
