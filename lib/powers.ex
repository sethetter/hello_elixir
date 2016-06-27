defmodule Powers do
  import Kernel, except: [raise: 2]

  @doc"""
  Raises the first number to the power of the second number.
  """
  @spec raise(number(), number()) :: number()

  def raise(base, power) when power == 0, do: 1
  def raise(base, power) when power == 1, do: base
  def raise(base, power) when power > 0, do: base * raise(base, power - 1)
  def raise(base, power) when power < 0, do: 1.0 / raise(base, power * -1)
end
