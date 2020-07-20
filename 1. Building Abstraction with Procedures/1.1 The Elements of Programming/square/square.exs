# SICP 1.1.4
# Compound Procedures

defmodule SICP do

  def square(x), do: x * x
  def sum_of_squares(x, y), do: square(x) + square(y)

end

IO.puts(SICP.square(4))
IO.puts(SICP.sum_of_squares(3, 4))
