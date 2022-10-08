#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo  $($PSQL "truncate table games. teams;")

cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
TEAMS=$($PSQL "select name from teams where name=$WINNER;")
if [[ $WINNER != "winner" ]]
  then
  if [[ -z $TEAMS ]]
    then
    INSERT_TEAM=$($PSQL "insert into teams(name) VALUES('$WINNER');")
    if [[ INSERT_TEAM == "INSERT 0 1" ]]
    then
    echo Inserted into teams, $WINNER
    fi
  fi
fi

TEAMS2=$($PSQL "select name from teams where name=$OPPONENT;")
if [[ $OPPONENT != "opponent" ]]
  then
  if [[ -z $TEAMS2 ]]
    then
    INSERT_TEAM2=$($PSQL "insert into teams(name) VALUES('$OPPONENT');")
    if [[ INSERT_TEAM2 == "INSERT 0 1" ]]
    then
    echo Inserted into teams, $OPPONENT
    fi
  fi
fi

WINNER_ID=$($PSQL "select team_id from teams where name='$WINNER';")
OPPONENT_ID=$($PSQL "select team_id from teams where name='$OPPONENT';")
if [[ $YEAR != "year" ]]
then
INSERT_GAME=$($PSQL "insert into games (year, round, winner_id, opponent_id, winner_goals, opponent_goals) values('$YEAR','$ROUND', '$WINNER_ID','$OPPONENT_ID','$WINNER_GOALS','$OPPONENT_GOALS');")
    if [[ INSERT_GAME == "INSERT 0 1" ]]
    then
    echo Inserted into games, $YEAR
    fi
fi
done 
