#!/bin/sh
if [[ ! $1 =~ ^[0-9]+$ ]] || [[ ! $2 =~ ^[0-9]+$ ]] || [ $1 -le 0 ] || [ $2 -le 0 ]; then
	echo "Invalid input"
	exit 1
fi

for row_idx in $(seq 1 $1)
do
	for col_idx in $(seq 1 $2)
	do
		answer=$(expr $row_idx \* $col_idx)
		printf "%d*%d=%d\t" $row_idx $col_idx $answer
	done
	printf "\n"
done
