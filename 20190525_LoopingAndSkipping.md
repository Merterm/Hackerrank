---
layout: post
title: Hackerrank - Looping and Skipping 
date: 20190525
categories: Hackerrank
tags: Hackerrank
author: liyiyuian
---


<!--more-->

## Problem

ur task is to use for loops to display only odd natural numbers from  to .
Input Format
There is no input.
Constraints
-
Output Format
1
3
5
.
.
.
.
.
99  
Sample Input
-
Sample Output
1
3
5
.
.
.
.
.
99  
Explanation
-


## Explanation



## Code
declare -i i
i=1
while [ "$i" -le "100"  ]
do
echo "$i"
i=$((i+2))
done



