#!/bin/bash

st vis &
vis=$! &
sleep 2 && 
espeak-ng -g 15 "Computer online" && 
pkill $vis

# last step is to get it to kill vis afterwards, then I'm basically set
