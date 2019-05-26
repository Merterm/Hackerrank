---
layout: post
title: Hackerrank - The World Of Numbers 
date: 20190525
categories: Hackerrank
tags: Hackerrank
author: liyiyuian
---


<!--more-->

## Problem
Given two integers, X and Y, find their sum, difference, product, and quotient.
### Input Format
Two lines containing one integer each (X and Y, respectively ).
### Constraints
-100 <= X, Y <= 100
Y != 0
### Output Format
Four lines containing the sum (), difference (), product (), and quotient (), respectively.  (While computing the quotient, print only the integer part.)
### Sample Input
5
2
###  Sample Output
7
3
10
2
### Explanation
5 + 2 = 7 
5 - 2 = 3 
5 * 2 = 10 
5 / 2 = 2 (Integer part)


## Notes



## Code

```BASH
read x
read y

echo $(( x + y  ))
echo $(( x - y  ))
echo $(( x * y  ))
echo $(( x / y ))
```



