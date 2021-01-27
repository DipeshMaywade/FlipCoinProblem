#!/bin/bash -x

heads=1
tails=0
countForHeads=0
countForTails=0

while [ $(($countForHeads-$countForTails)) -lt 2 ] && [ $(($countForTails-$countForHeads)) -lt 2 ]
do
result=$((RANDOM%2))
case $result in
	$heads)
		((countForHeads++)) ;;
	$tails)
		((countForTails++)) ;;
esac
done

if [ $countForHeads -gt $countForTails ]
then
	echo "Heads Win"
else
	echo "Tails Win By"

fi

echo $countForHeads
echo $countForTails
