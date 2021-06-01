#!/bin/bash

funktion1() {
    echo $variable1
}

variable1='Hallo'
funktion1 
variable1='Welt'
funktion1