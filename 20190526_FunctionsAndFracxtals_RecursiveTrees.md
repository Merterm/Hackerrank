---
layout: post
title: Hackerrank - Functions and Fractals - Recursive Trees - Bash! 
date: 20190526
categories: Hackerrank
tags: Hackerrank
author: liyiyuian
---


<!--more-->

## Problem
### Input format
A single integer, N.

### Constraints
N <= 5

### Output format
The Nth iteration of the Fractal Tree, as shown above. It should be a matrix of
63 rows and 100 columns. (i.e. 6300 printable characters) It should be composed
entirely of underscores and ones, in a manner similar to the examples provided.
Do not include any extra leading or trailing spaces.

## Notes
### Create 2D array
```BASH
declare -A matrix
num_rows = 4
num_columns=5

for ((i=1;i<=num_rows;i++)) do
	for ((j=1;j<=num_columns;j++)) do
		matrix[$i,$j]=$RANDOM
	done
done

f1="%$((${#num_rows}+1))s"
f2=" %9s"

printf "$f1" ''
for ((i=1;i<=num_rows;i++)) do
	printf "$f2" $i
done
echo

for ((j=1;j<=num_columns;j++)) do
	printf "$f1" $j
	for ((i=1;i<=num_rows;i++)) do
		printf "$f2" ${matrix[$i,$j]}
	done
	echo
done
```
### Declare function
In bash function, it does not allow you to return a vlaue to the caller. When a
bash function ends its return value is its status: zero for success, non-zero
for failure.
To return values, you can set a global variable with  the result, or use command
substitution, or you can pass in the name of a variable to use as the result
variable.
Although bash has a return statement, the only thing you can specify with it is
the function's status, which is a numeric value like the value specified in an
exit statement. The status value is stored in the **$?** variable. If a function
does not contain a return statement, its status is set based on the status of
the last statement executed in the function.
#### The simplest way is to set a global variable.
Since all variables in bash bash are global by default, so it is easy to just
declare the variable in the function, and call the value outside the function.
```BASH
function myfunc()
{
	myresult = 'some value'
}

```
#### A better approach is to use local variables in your function and use
command substitution to return.
```BASH
function myfunc()
{
	local myresult='some value'
	echo"$myresult"
}

result=$(myfunc) # or result='myfunct'
echo $result
```
#### The orther way is to return a value by writing your function which accepts
a variable name as part of its command line, and then set that variable to the
result of the function.
```BASH
function myfunc()
{
	local __resultvar=$1
	local myresult='some value'
	eval $__resultvar="'$myresult'"
}
myfunc result
echo $result
```
Since we have the name of the variable to set stored in a variable(result in
__resultvar), we can't set the variable directly, we have to use **eval** to
actually do the setting. The **eval** statement basically tells bash to
interpret the line twice, the first interpretation above results in the string
result='some value' which is then interpreted once more and ends up setting the
caller's variable.
When you store the name of the variable passed on the command line, make sure
you store it in a local variable with a name that won't be used by the caller.
If you don't, and the caller happensto choose the same name for their result
variable as you use for storing the name, the result variable will not get set.
For example, the following does not work:
```BASH
function myfunc()
{
	local result=$1
	local myresult='some value'
	eval $result="'$myresult'"
}
myfunc result
echo $result
```
The reason it doesn't work is because when eval does the second interpretation
and evaluates result='some value', result is now a local variable in the
function, and so it gets set rather than setting the caller's result variable.

### Calculating the power in bash
2^3  -> 2**3

## Code

```BASH
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

```



