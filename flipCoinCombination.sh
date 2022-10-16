#! /bin/bash -x

declare  -A singlet
isHead=1
headWon=0
tailWon=0
echo "enter number of times do you want to play"
read n
for ((i=0;i<n;i++))
do
toss=$((RANDOM%2))
if [ $toss -eq $isHead ]
then
	singlet['H']=$((headWon++))
	else
	singlet['T']=$((tailWon++))
fi
done

echo "head  $headWon times"
echo "tail $tailWon times"
headWonPer=$(( $headWon*100/$n ))
tailWonPer=$(( $tailWon*100/$n ))

echo "Head win percentage= $headWonPer"
echo "Tail win percentage= $tailWonPer"
