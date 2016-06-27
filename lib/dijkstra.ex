defmodule Dijkstra do
  @moduledoc """
  A module for functions based on work by Edsger W. Dijkstra.
  
  http://chimera.labs.oreilly.com/books/1234000001642/ch04.html#CH04-ET02
  """
  @vsn 0.1

  @doc """
  Finds the greatest common denominator of two integers use the Dijkstra method.
  """
  @spec gcd(number(), number()) :: number()

  def gcd(x, y) when x == y, do: x
  def gcd(x, y) when x > y, do: gcd(x - y, y)
  def gcd(x, y) when x < y, do: gcd(x, y - x)
end
