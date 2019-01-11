# SICP
# Tree Recursion

defmodule Math do
	
	def fib1(0), do: 0
	def fib1(1), do: 1
	def fib1(n), do: fib1(n-1) + fib1(n-2)

	def fib2(n), do: fib2Iter(1, 0, n)

	defp fib2Iter(_, b, 0), do: b
	defp fib2Iter(a, b, count), do: fib2Iter(a+b, a, count-1)

end
