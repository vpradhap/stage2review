#!/bin/bash

a=100
bet=1
win=0
loss=0

while [[ $a -ge 0 || $a -le 200 ]]
do
	x=$((RANDOM%2))
	if [[ $x -eq 0 ]]
	then
		win=$((win+1))
	else
		loss=$((loss+1))
	fi
	((bet++))
done

echo $bet
echo $win
echo $loss
