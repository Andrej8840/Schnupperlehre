#!/bin/bash

# Read the User Input

variable1='Wie heisst du?'
variable2='Wie alt bist du?'
variable3='Wo wohnst du?'
 
echo $variable1
read first_name
echo $variable2
read age
echo $variable3
read city


echo "Die Person heisst $first_name, ist $age alt und wohnt in $city"
