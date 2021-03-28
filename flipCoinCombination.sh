#!/bin/bash -x

i=0
j=0
k=0

echo -e "Enter Number of times of a Coin flips=\c"
read f

while [ $i -lt $f ]
do
	toss=$((RANDOM%2))
	HEADS=1

	if [ $toss -eq $HEADS ]
	then
   	j=$(($j+1))
	else
   	k=$(($k+1))
	fi
i=$(($i + 1))
done

echo "You won HEADS $j times"
echo "You won TAILS $k times"

declare -A flip
for ((p=1; p<=$j; p++))
do
	flip[$p]="HEADS"
done
echo ${flip[@]}

perc=`echo "scale=2;($j/$f)*100"|bc`
echo "percentage of heads = $perc %"
