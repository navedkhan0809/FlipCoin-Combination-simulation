#!/bin/bash -x

i=0
j=0
k=0
l=0
a=0
m=0
n=0
o=0
q=0
echo -e "Enter Number of times of two Coin flip=\c"
read f

#Singlet combination
echo "------------------------Singlet combination-------------------------"
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

echo "Storing combinations in dictionary: "

declare -A flip
	for ((p=1; p<=$j; p++))
	do
		flip[HEADS]="$p"
	done

	for ((p=1; p<=$k; p++))
	do
		flip[TAILS]="$p"
	done
echo ${flip[@]}

per1=`echo "scale=2;($j/$f)*100"|bc`
per2=`echo "scale=2;($k/$f)*100"|bc`

echo "percentage of heads = $per1 %"
echo "percentage of tails = $per2 %"

echo "Storing percentage in dictionary: "

declare -A percent
	percent[HEADS]="$per1"
	percent[TAILS]="$per2"
echo ${percent[@]}

#Doublet combination
echo "--------------------------Doublet combination----------------------"

a=1
i=0
j=0
k=0
l=0
m=0
n=0
o=0
q=0

for (( x=$a; x<=$f; x++ ))
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
done

echo "You won HH $i times"
echo "You won HT $j times"
echo "You won TH $k times"
echo "You won TT $l times"

echo "Storing combinations in dictionary: "

declare -A flip1

for ((p=1; p<=$i; p++))
do
	flip1[HH]="$p"
done


for ((p=1; p<=$j; p++))
do
	flip1[HT]="$p"
done


for ((p=1; p<=$k; p++))
do
	flip1[TH]="$p"
done


for ((p=1; p<=$l; p++))
do
	flip1[TT]="$p"
done

echo ${flip1[@]}

perc1=`echo "scale=2;($i/$f)*100"|bc`
echo "percentage of HH = $perc1 %"

perc2=`echo "scale=2;($j/$f)*100"|bc`
echo "percentage of HT = $perc2 %"

perc3=`echo "scale=2;($k/$f)*100"|bc`
echo "percentage of TH = $perc3 %"

perc4=`echo "scale=2;($l/$f)*100"|bc`
echo "percentage of TT = $perc4 %"

echo "storing Percentages in dictionary: "

declare -A percentage
	percentage[perc1]="$perc1"
	percentage[perc2]="$perc2"
	percentage[perc3]="$perc3"
	percentage[perc4]="$perc4"
echo ${percentage[@]}

echo "--------------------------Triplet combination----------------------"

a=1
i=0
j=0
k=0
l=0
m=0
n=0
o=0
q=0

for (( s=$a;s<=$f;s++ ))
do
	toss=$((RANDOM%8))

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
				;;

            "4")
            m=$(($m+1))
            ;;

            "5")
            n=$(($n+1))
            ;;

            "6")
            o=$(($o+1))
            ;;

            "7")
            q=$(($q+1))
            ;;
      esac
done

echo "You won HHH $i times"
echo "You won TTT $j times"
echo "You won HTT $k times"
echo "You won THT $l times"
echo "You won TTH $m times"
echo "You won THH $n times"
echo "You won HTH $o times"
echo "You won HHT $q times"

echo "Storing combinations in dictionary:"

declare -A flip11

for ((p=1; p<=$i; p++))
do
	flip11[HHH]="$p"
done


for ((p=1; p<=$j; p++))
do
	flip11[TTT]="$p"
done


for ((p=1; p<=$k; p++))
do
	flip11[HTT]="$p"
done


for ((p=1; p<=$l; p++))
do
	flip11[THT]="$p"
done


for ((p=1; p<=$m; p++))
do
	flip11[TTH]="$p"
done


for ((p=1; p<=$n; p++))
do
	flip11[THH]="$p"
done


for ((p=1; p<=$o; p++))
do
	flip11[HTH]="$p"
done


for ((p=1; p<=$q; p++))
do
	flip11[HHT]="$p"
done
echo ${flip11[@]}


perc11=`echo "scale=2;($i/$f)*100"|bc`
echo "percentage of HHH = $perc11 %"

perc22=`echo "scale=2;($j/$f)*100"|bc`
echo "percentage of TTT = $perc22 %"

perc33=`echo "scale=2;($k/$f)*100"|bc`
echo "percentage of HTT = $perc33 %"

perc44=`echo "scale=2;($l/$f)*100"|bc`
echo "percentage of THT = $perc44 %"

perc55=`echo "scale=2;($m/$f)*100"|bc`
echo "percentage of TTH = $perc55 %"

perc66=`echo "scale=2;($n/$f)*100"|bc`
echo "percentage of THH = $perc66 %"

perc77=`echo "scale=2;($o/$f)*100"|bc`
echo "percentage of HTH = $perc77 %"

perc88=`echo "scale=2;($q/$f)*100"|bc`
echo "percentage of HHT = $perc88 %"

echo "Percentages in dictionary: "

declare -A percentage1
	percentage1[HHH]="$perc11"
	percentage1[TTT]="$perc22"
	percentage1[HTT]="$perc33"
	percentage1[THT]="$perc44"
	percentage1[TTH]="$perc55"
	percentage1[THH]="$perc66"
	percentage1[HTH]="$perc77"
	percentage1[HHT]="$perc88"
echo ${percentage1[@]}

echo "---------------------Sorting combinations by percentage--------------"


echo "Sorting Singlet combination Percentage"
echo ${percent[@]}
z=`printf '%s\n'  "${percent[@]}" | sort -n|tail -1`
echo "$z % is winning percentage combination"

echo "..........................."


echo "Sorting doublet combination Percentage"
echo ${percentage[@]}
x=`printf '%s\n'  "${percentage[@]}" | sort -n|tail -1`
echo "$x % is winning percentage combination"

echo "..........................."

echo "Sorting triplet combination Percentage"
echo ${percentage1[@]}
w=`printf '%s\n'  "${percentage1[@]}" | sort -n |tail -1`
echo "$w % is winning percentage combination"

