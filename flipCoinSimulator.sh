#!/bin/bash -x

heads=1
tails=0

function useCase1(){
result=$1

case $result in
	$heads)
		echo "Heads Win" ;;
	$tails)
		echo "Tails Win" ;;
esac
}

variable=$( useCase1 $((RANDOM%2)) )
echo $variable


