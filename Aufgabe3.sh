#!/bin/bash

#amixer set 'Master' 100%


while true
do



    Volume=$(amixer get 'Master',0 | \
    grep 'Front Left:' | \
    grep -o -E '[0-9]+%' | grep -o -E '[0-9]+')
    echo Die Lautstärke beträgt $Volume

    if [ $Volume -gt 75 ]; then
    printf "$Volume is greater than 75"
    amixer set 'Master' 75%
    espeak -v de "Es ist zu laut"
    fi

done