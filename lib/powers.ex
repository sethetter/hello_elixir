defmodule Powers do
  import Kernel, except: [raise: 2, raise: 3]

  @doc"""
  Raises the first number to the power of the second number.
  """
  @spec raise(number(), number()) :: number()

  def raise(_, power) when power == 0, do: 1
  def raise(base, power) when power < 0, do: 1.0 / raise(base, power * -1)
  def raise(base, power) when power > 0, do: raise(base, power, 1)
  defp raise(_, 0, acc), do: acc
  defp raise(base, power, acc), do: raise(base, power - 1, base * acc)

  @doc"""
  Calculates the nth root of a number.
  """
  @spec nth_root(number(), number()) :: number()

  def nth_root(x, n), do: nth_root(x, n, x / 2.0)

  defp nth_root(x, n, a) do
    f = raise(a, n) - x
    f_prime = n * raise(a, n - 1)
    next = a - f / f_prime
    change = abs(next - a)
    case change < 1.0e-8 do
      true -> next
      false -> nth_root(x, n, next)
    end
  end
end
