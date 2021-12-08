#!/bin/bash

st vis &
vis=$! &
sleep 2 && 
espeak-ng -g 15 "Computer online" && 
pkill $vis
