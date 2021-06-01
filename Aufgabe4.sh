#!/bin/bash

#randomNumber
#numberGame

randomNumber=$(($RANDOM % 100))
myNumber=101

echo "Willkommen lieber Benutzer. In diesem Spiel wird eine zufällige Zahl erstellt, welche du erraten musst. Wenn richtig liegst, wird das Programm ausgehen. Viel Spass!!!"
while [ "$myNumber" != "$randomNumber" ]
do
read -p "Gib eine Zahl ein: " myNumber 
versuch=$((versuch+1))

if [ "$myNumber" -gt "$randomNumber" ]; then
echo "diese Zahl ist grösser als die zufällige Zahl"


elif [ "$myNumber" -lt "$randomNumber" ]; then
    echo "diese Zahl ist kleiner als die zufällige Zahl"
fi
done
echo "Glückwunsch, du hast in $versuch Versuchen gewonnen! $randomNumber war die zufällige Zahl."
