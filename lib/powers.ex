defmodule Powers do
  import Kernel, except: [raise: 2, raise: 3]

  @doc"""
  Raises the first number to the power of the second number.
  """
  @spec raise(number(), number()) :: number()

  def raise(_, power) when power == 0, do: 1
  def raise(base, power) when power < 0, do: 1.0 / raise(base, power * -1)
  def raise(base, power) when power > 0, do: raise(base, power, 1)
  def raise(_, 0, acc), do: acc
  def raise(base, power, acc), do: raise(base, power - 1, base * acc)
end
