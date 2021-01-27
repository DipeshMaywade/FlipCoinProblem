#!/bin/bash -x

heads=1
tails=0
countForHeads=0
countForTails=0

while [ $countForHeads -lt 21 ] && [ $countForTails -lt 21 ]
do
result=$((RANDOM%2))
case $result in
	$heads)
		((countForHeads++)) ;;
	$tails)
		((countForTails++)) ;;
esac
done

if [ $countForHeads > $countForTails ]
then
	echo "Heads Win By" $(( $countForHeads-$countForTails ))
else
	echo "Tails Win By" $(( $countForTails-$countForHeads ))

fi

echo $countForHeads
echo $countForTails
