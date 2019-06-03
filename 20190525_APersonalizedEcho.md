---
layout: post
title: Hackerrank - A Personalized Echo 
date: 20190525
categories: Hackerrank
tags: Hackerrank
author: liyiyuian
---


<!--more-->

## Problem
Write a Bash script which accepts  as input and displays a greeting: "Welcome (name)"
### Input Format
One line, containing a name.
### Output Format
One line: "Welcome (name)" (quotation marks excluded). 
The evaluation will be case-sensitive.
### Sample Input 0
Dan  
### Sample Output 0
Welcome Dan  
### Sample Input 1
Prashant
### Sample Output 1
Welcome Prashant


## Notes
read: read stdin
read -p "The problem to show: " Variable
remember to use $ to reference the Variable while using it.

## Code

```BASH
read Name
echo "Welcome $Name"


```



