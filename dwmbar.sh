#!/bin/bash

function getsound(){
pactl list sinks | grep '^[[:space:]]Volume:' | \
        head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,'
} 

function set_once() {
        xsetroot -name "Battery: $(cat /sys/class/power_supply/BAT0/capacity)% | Sound: $(getsound)% | Packages: $(pacman -Q | wc -l) | Free: $(df -h ~/. | awk '{print $4}' | awk '{getline; print $1}') | $(date "+%a %B %d %H:%M") "
}

if [ "$1" = "--loop" ]; then
        while true; do
                set_once
                sleep 1m
        done
else
        set_once
fi
