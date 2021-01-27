#!/bin/bash -x

heads=1
tails=0
countForHeads=0
countForTails=0

for (( i=0; i<10; i++ ))
do
result=$((RANDOM%2))
case $result in
	$heads)
		((countForHeads++)) ;;
	$tails)
		((countForTails++)) ;;
esac
done

echo "Head Win "$countForHeads
echo "Tail Win "$countForTails
