# SICP 1.1 - The Elements of Programming

defmodule ExBase do

  def square(x), do: x*x
  def sum_of_squares(x,y), do: square(x)+square(y)

end

# IO.puts ExBase.square(9)
# IO.puts ExBase.sum_of_squares(3, 4)

# Excercise 1.3
# Define a procedure that takes three numbers of arguments
# and returns the sum of the squares of the two larger members.

defmodule Ex13 do

  import ExBase

  def sum_of_squares_ex(x, y, z) do
    cond do
      x > y and z > y -> sum_of_squares(x, z)
      x > z and y > z -> sum_of_squares(x, y)
      true            -> sum_of_squares(y, z)
    end
  end

end

# IO.puts(Ex13.sum_of_squares_ex(2, 3, 4))

# Exercise 1.7
# Design a square-root procedure that use as test when the change from a guess to
# the next is a very small fraction of the guess

defmodule Ex17 do

  defp sqrt_iter(guess, old_guess, x) do
    if good_enough?(guess, old_guess) do
      guess
    else
      sqrt_iter(improve(guess, x), guess, x)
    end
  end

  defp improve(guess, x) do
    average( guess, x / guess)
  end

  defp average(x, y) do
    (x + y) / 2
  end

  defp good_enough?(guess, old_guess) do
    (abs(guess - old_guess) / guess) < 0.00001
  end

  def sqrt(x), do: sqrt_iter(1.0, 0.0, x)

end

IO.puts(Ex17.sqrt(9))
