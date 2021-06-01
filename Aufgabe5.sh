#!/bin/bash


dialog --inputbox " "

#Name : dialog4

name=$(dialog --inputbox "Wie heissen Sie?" 0 0 3>&1 1>&2 2>&3)
# Dialog-Bildschirm löschen
city=$(dialog --inputbox "In welcher Stadt / welchem Dorf leben Sie?" 0 0 3>&1 1>&2 2>&3)
age=$(dialog --inputbox "Wie alt sind Sie?" 0 0 3>&1 1>&2 2>&3)
dialog --clear
dialog --msgbox "Hallo $age-jähriger $name aus $city , Willkommen auf diesem Dialog!" 5 50 
# Bildschirm löschen
clear 
