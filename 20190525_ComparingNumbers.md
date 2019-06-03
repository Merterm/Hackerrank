---
layout: post
title: Hackerrank - Comparing Numbers 
date: 20190525
categories: Hackerrank
tags: Hackerrank
author: liyiyuian
---


<!--more-->

## Problem
Given two integers, X and Y, identify whether X < Y or X > Y or X = Y.
Exactly one of the following lines: 
- X is less than Y 
- X is greater than Y 
- X is equal to Y
### Input Format
Two lines containing one integer each (X and Y, respectively ).
### Constraints
-
### Output Format
Exactly one of the following lines: 
- X is less than Y 
- X is greater than Y 
- X is equal to Y
### Sample Input
#### Sample Input 1
5  
2  
#### Sample Input 2
2
2  
#### Sample Input 3
2
3  
### Sample Output
#### Sample Output 1
X is greater than Y  
#### Sample Output 2
X is equal to Y   
#### Sample Output 3
X is less than Y  
### Explanation
-


## Notes
### If condition
if []
then
elif[]
then
else
fi

### Compare strings 
==, !=
### Compare numbers
[ "$number1" -eq "$number2" ]
"-eq"
"-ne"
"-lt"
"-le"
"-gt"
"-ge"

## Code

```BASH
read x
read y
if [ "$x" -eq "$y"  ]
then
echo "X is equal to Y"
fi

if [ "$x" -gt "$y"  ]
then
echo "X is greater than Y"
fi

if [ "$x" -lt "$y"  ]
then
echo "X is less than Y"
fi
```



