#!/bin/bash

# outline usage
# usage='printf "Usage: swap.sh [current mode]\n
# -d currently in DWM mode\n
# -k Currently in Plasma mode\n
# -h print this help message\n"'

if [ $# -eq 0 ]; then
        printf "Usage: swap.sh [current mode]
        -d currently in DWM mode
        -k Currently in Plasma mode
        -h print this help message\n"
else
        if [ $1 == "-d" ]; then
                command mv "$HOME/.xinitrc" "$HOME/.xinitdwm"
                command mv "$HOME/.xinitplasma" "$HOME/.xinitrc"
                echo "Now in Plasma"
        elif [ $1 == "-k" ]; then
                command mv "$HOME/.xinitrc" "$HOME/.xinitplasma"
                command mv "$HOME/.xinitdwm" "$HOME/.xinitrc"
                echo "Now in DWM"
        elif [ $1 == "-h" ]; then
                printf "Usage: swap.sh [current mode]
                -d currently in DWM mode
                -k Currently in Plasma mode
                -h print this help message\n"
        else
                echo "args not valid"
        fi
fi
