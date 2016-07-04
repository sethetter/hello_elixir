defmodule FizzBuzz do
  @moduledoc """
  FizzBuzz minus conditional logic!
  """

  def fizzbuzz(x), do: do_fizzbuzz(rem(x, 3), rem(x, 5), x)
  defp do_fizzbuzz(0, 0, _), do: "FizzBuzz"
  defp do_fizzbuzz(0, _, _), do: "Fizz"
  defp do_fizzbuzz(_, 0, _), do: "Buzz"
  defp do_fizzbuzz(_, _, x), do: x
end
