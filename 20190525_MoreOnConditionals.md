---
layout: post
title: Hackerrank - More on Conditionals 
date: 20190525
categories: Hackerrank
tags: Hackerrank
author: liyiyuian
---


<!--more-->

## Problem
Given three integers (X, Y, and Z) representing the three sides of a triangle, identify whether the triangle is Scalene, Isosceles, or Equilateral.
## Input Format
Three integers, each on a new line.
## Constraints
1 <= X, Y, Z <= 1000
Sum of any two sides will be greater than the third.
## Output Format
One word: either "SCALENE" or "EQUILATERAL" or "ISOSCELES" (quotation marks excluded).
## Sample Input
### Sample Input 1
2
3
4
### Sample Input 2
6
6
6 
## Sample Output
### Sample Output 1
SCALENE
### Sample Output 2
EQUILATERAL  
##Explanation
-


## Notes



## Code

```BASH
read X
read Y
read Z

if [[ "$X" == "$Y" || "$X" == "$Z" || "$Y" == "$Z"  ]]
then
if [[ "$X" == "$Y" && "$X" == "$Z"  ]]
then
echo "EQUILATERAL"
else
echo "ISOSCELES"
fi
else
echo "SCALENE"
fi
```



