#!/bin/bash
declare -i result=0

if [ $# -lt 3 ]; then
	echo "Usage-./calculator.sh value1 operator value2"
	echo where,
	echo "value1: numeric value"
	echo "value2: numeric value"
	echo "operator: one of +,-,/,x"
elif [[ $2 != x ]] && [[ $2 != + ]] && [[ $2 != - ]] && [[ $2 != / ]]; then
	echo "Usage-./calculator.sh value1 operator value2"
	echo where,
	echo "value1: numeric value"
	echo "value2: numeric value"
	echo "operator: one of +,-,/,x"
fi

if [[ $2 = + ]]; then
	let result=$1+$3
	echo $result
fi

if [[ $2 = - ]]; then
	let result=$1-$3
	echo $result
fi

if [[ $2 = x ]]; then
	let result=$1*$3
	echo $result
fi


if [[ $2 = / ]]; then
	if [ $3 = 0 ]; then
		echo "Division-by-zero Error!"
	else
	let result=$1/$3
	echo $result
	fi	
fi

