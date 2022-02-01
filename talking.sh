#!/bin/bash

st vis &
vis=$! &
sleep 2 && 
espeak-ng -g 12 "Power on captain" 
#Somehow kill the PID - $vis

# last step is to get it to kill vis afterwards, then I'm basically set
