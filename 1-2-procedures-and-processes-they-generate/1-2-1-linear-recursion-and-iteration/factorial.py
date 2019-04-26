#!/usr/bin/env python3

# SICP 1.2.1
# Linear Recursion and Iteration

def fact1(n: int) -> int:
    if n == 1:
        return 1
    else:
        return n * fact1(n - 1)

# Iterative

def fact2(n: int) -> int:
    return fact2Iter(1, 1, n)

    def fact2Iter(product, counter, maxCount: int) -> int:
        if counter > maxCount:
            return product
        else:
            return fact2Iter(counter*product, counter+1, maxCount)


print(fact1(7))
print(fact2(7))
