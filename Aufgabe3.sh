#!/bin/bash

v=75

getVolume(){
    Volume=$(amixer get 'Master',0 | \
    grep 'Front Left:' | \
    grep -o -E '[0-9]+%' | grep -o -E '[0-9]+')
    echo $Volume
}

setVolume(){
    amixer set 'Master' $1%
}

monitorVolume(){
    while true
    do
        Volume=$(getVolume)
        echo Die Lautstärke beträgt $Volume

        if [ $Volume -gt $v ]; then
            printf "$Volume is greater than $v"
            setVolume $v
            espeak -v de "Es ist zu laut"
        fi
    done
}

monitorVolume