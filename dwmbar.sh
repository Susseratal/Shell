#!/bin/bash

function getSound(){
pactl list sinks | grep '^[[:space:]]Volume:' | \
        head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,'
} 

function getBattery(){
        cat /sys/class/power_supply/BAT0/capacity
}

function getDiskFree(){
        df -h ~/. | awk '(FNR==2) {print $4}'
}

function set_once() {
        xsetroot -name "Battery: $(getBattery)% | Sound: $(getSound)% | Packages: $(pacman -Q | wc -l) | Free: $(getDiskFree) | $(date "+%a %B %d %H:%M") "
}

if [ "$1" = "--loop" ]; then
        while true; do
                set_once
                sleep 1m
        done
else
        set_once
fi
