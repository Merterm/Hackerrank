#!/bin/bash

num_rows=63
num_cols=100

declare -A matrix


# Generate matrix first
for ((i=0; i<num_rows; i++)) do
	for ((j=0; j<num_cols; j++)) do
		matrix[$i, $j]="_"
	done
done



# recursive function, call twice by the end of function, until reach

function draw()
{
	local cnt=$1
	local row=$2
	local col=$3
	local depth=$4
	# echo "Current depth = $depth"
	if [[ depth -eq 0 ]]
	then
		# echo "Return 0"
		return
	else
	for ((i=0; i<cnt; i++)) do
		# echo "Current i = $i"
		matrix[$row, $col]=1
		matrix[$(($row-$cnt)), $(($col-$i-1))]=1
		matrix[$(($row-$cnt)), $(($col+$i+1))]=1
		row=$(($row-1))
	done
	row=$(($row-$cnt))
	local col1=$(($col+$cnt))
	local col2=$(($col-$cnt))
	cnt=$(($cnt/2))
	depth=$(($depth-1))
	draw $cnt $row $col1 $depth
	draw $cnt $row $col2 $depth
	fi
}


read depth
count=16
row=62
col=49
draw $count $row $col $depth




for ((i=0; i<num_rows; i++)) do
	for ((j=0; j<num_cols; j++)) do
		printf ${matrix[$i, $j]}
	done
	printf "\n"
done

