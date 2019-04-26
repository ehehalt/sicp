# SICP 1.2.1
# Linear Recursion and Iteration

defmodule Math do

  def fact1(1), do: 1
  def fact1(n) when n > 1, do: n * fact1(n - 1)

  # Iterative

  def fact2(n) when n >= 1, do: fact2_iter(1, 1, n)
  defp fact2_iter(product, counter, max_count) when counter > max_count, do: product
  defp fact2_iter(product, counter, max_count) do
    fact2_iter((counter * product), (counter + 1), max_count)
  end
  
end

IO.puts(Math.fact1(7))
IO.puts(Math.fact2(7))
