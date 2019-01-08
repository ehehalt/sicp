#!/usr/bin/env ruby

# SICP 1.2.1
# Linear Recursion and Interation

def fact1(n)
  return 1 if n == 1
  return n * fact1(n - 1)
end

# Iterative

def fact2(n)
  return fact2iter(1, 1, n)
end

def fact2iter(product, counter, maxcount)
  return product if counter > maxcount
  return fact2iter(counter*product, counter+1, maxcount)
end

