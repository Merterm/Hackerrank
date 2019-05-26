---
layout: post
title: Hackerrank - Getting Started with Conditions 
date: 20190525
categories: Hackerrank
tags: Hackerrank
author: liyiyuian
---


<!--more-->

## Problem
Read in one character from the user (this may be 'Y', 'y', 'N', 'n'). If the character is 'Y' or 'y' display "YES". If the character is 'N' or 'n' display "NO". No other character will be provided as input.
## Input Format
One character (this may be 'Y', 'y', 'N', 'n').
## Constraints
-
## Output Format
One word: either "YES" or "NO" (quotation marks excluded).
## Sample Input
### Sample Input 1
y  
## Sample Output
### Sample Output 1
YES
Explanation
-


## Notes



## Code

```BASH
read Word

if [ "$Word" == "Y"  ]
then
echo "YES"

elif [ "$Word" == "y"  ]
then
echo "YES"

elif [ "$Word" == "N"  ]
then
echo "NO"

elif [ "$Word" == "n"  ]
then
echo "NO"
fi


```



