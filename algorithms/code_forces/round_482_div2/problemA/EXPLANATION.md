# Code Forces, Round 482 Div.2 Problem A

## Problem

### 문제

Katie, Kuro and Shiro are best friends. They have known each other since kindergarten. That's why they often share everything with each other and work together on some very hard problems.

Today is Shiro's birthday. She really loves pizza so she wants to invite her friends to the pizza restaurant near her house to celebrate her birthday, including her best friends Katie and Kuro.

She has ordered a very big round pizza, in order to serve her many friends. Exactly n of Shiro's friends are here. That's why she has to divide the pizza into n+1 slices (Shiro also needs to eat). She wants the slices to be exactly the same size and shape. If not, some of her friends will get mad and go home early, and the party will be over.

Shiro is now hungry. She wants to cut the pizza with minimum of straight cuts. A cut is a straight segment, it might have ends inside or outside the pizza. But she is too lazy to pick up the calculator.

As usual, she will ask Katie and Kuro for help. But they haven't come yet. Could you help Shiro with this problem?

### 입력

A single line contains one non-negative integer n (0 ≤ n ≤ 10 ^ 18) — the number of Shiro's friends. The circular pizza has to be sliced into n + 1 pieces.

### 출력

A single integer — the number of straight cuts Shiro needs.

### 예제 입력 1

3

### 예제 출력 1

2

### 예제 입력 2

4

### 예제 출력 2

5

## Requirements

- Basic Programming Knowledge
- Mathematical thinking power
- Ability to logically assess the cases

## How to solve

**Separate cases**

Thinking about some cases, especially about initial values

### n = 0

When only Shiro come to party (so sad...), There's no need to cut the pizza.

### n = 1

When only one person comt to party (it's sad too...), only one straight cut needs.

### other cases

#### if n = 2k + 1 (k is natural number)

Shiro needs to divide pizza to 2k + 2 pieces.

One straight cut across diameter divide pizza to 2 pieces.

Two straight cuts across diameter divide pizza to 4 pieces.

Three straight cuts across diameter divide pizza to 6 pieces.

...

So 1k + 1 cuts needs and 1k + 1 = (n + 1) / 2

#### if n = 2k (k is natural number)

Shiro needs to divide pizza to 2k + 1 pieces.

Three cuts across radius divide pizza to 3 pieces.

Five cuts across radius divide pizza to 5 pieces.

Seven cuts across radius divide pizza to 7 pieces.

...

So 2k + 1 cuts needs and 2k + 1 = n + 1

## Why solved that way

There are only two cases when you think about how to cut a pizza in order to divide the pizza into the same shape.

## Is unique solution

Yes, until today.

## Result

### python, trial 1 : fail

#### reason

The initial value was not handled properly.

solution_0.py

### python, trial 2 : success

solution_0_2.py