# SICP 1.1.7
# Example: Square Roots by Newton's Method

defmodule Newton do

  def average(x, y), do: (x+y)/2.0
  def square(x), do: x*x
  def sqrt(x), do: sqrt_iter(1.0, x)

  defp sqrt_iter(guess, x) do
    if good_enough?(guess, x) do
      guess
    else
      sqrt_iter(improve(guess, x), x)
    end
  end

  defp improve(guess, x), do: average(guess, (x/guess))
  defp good_enough?(guess, x), do: abs(square(guess)-x) < 0.001

end

Newton.sqrt(4) |> IO.inspect
