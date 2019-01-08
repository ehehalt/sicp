#!/usr/bin/env ruby

# SICP 1.2.1
# Linear Recursion and Interation# Iterative

def fact2(n)
  return fact2iter(1, 1, n)
end

def fact2iter(product, counter, maxcount)
  return product if counter > maxcount
  return fact2iter(counter*product, counter+1, maxcount)
end

