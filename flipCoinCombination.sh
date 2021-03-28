#!/bin/bash -x

i=0
j=0
k=0
l=0
a=0

echo -e "Enter Number of times of two Coin flip=\c"
read f

#Singlet combination
echo "---------------------Singlet combination-------------------------"
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

#Doublet combination
echo "--------------------------Doublet combination----------------------"
while [ $a -lt $f ]
do
	toss=$((RANDOM%4))

	case $toss in

				"0")
   			i=$(($i+1))
				;;

				"1")
   			j=$(($j+1))
				;;

				"2")
				k=$(($k+1))
				;;

				"3")
				l=$(($l+1))
		esac
	a=$(($a + 1))
done

echo "You won HH $i times"
echo "You won HT $j times"
echo "You won TH $k times"
echo "You won TT $l times"

echo "Combinations in storing in dictionary: "
declare -A flip1
for ((p=1; p<=$i; p++))
do
	flip1[$i]="HH"
done
echo ${flip1[@]}

declare -A flip2
for ((p=1; p<=$j; p++))
do
	flip2[$p]="HT"
done
echo ${flip2[@]}

declare -A flip3
for ((p=1; p<=$k; p++))
do
	flip3[$p]="TH"
done
echo ${flip3[@]}

declare -A flip4
for ((p=1; p<=$l; p++))
do
	flip4[$p]="TT"
done
echo ${flip4[@]}

perc1=`echo "scale=2;($i/$f)*100"|bc`
echo "percentage of HH = $perc1 %"

perc2=`echo "scale=2;($j/$f)*100"|bc`
echo "percentage of HT = $perc2 %"

perc3=`echo "scale=2;($k/$f)*100"|bc`
echo "percentage of TH = $perc3 %"

perc4=`echo "scale=2;($l/$f)*100"|bc`
echo "percentage of TT = $perc4 %"

echo "Percentages in dictionary: "
declare -A percentage

	percentage[perc1]="$perc1"
	percentage[perc2]="$perc2"
	percentage[perc3]="$perc3"
	percentage[perc4]="$perc4"

echo ${percentage[@]}
