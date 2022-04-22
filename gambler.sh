#!/bin/bash

a=100
win=0
loss=0

while [[ $a -ne 0 && $a -ne 200 ]]
do
	x=$((RANDOM%2))
	if [[ $x -eq 0 ]]
	then
		win=$((win+1))
		a=$((a+1))
	else
		loss=$((loss+1))
		a=$((a-1))
	fi
done
if [[ $a -eq 200 ]]
then
	echo "Target achieved : "$a
else
	echo "Broke : " $a
fi

bet=$((win+loss))

echo "Total Bets : " $bet
echo "Total Wins : " $win
echo "Total loss : " $loss

