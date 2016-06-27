defmodule DijkstraTest do
  use ExUnit.Case
  doctest Dijkstra

  test "it finds the GCD of two integers" do
    assert Dijkstra.gcd(12, 16) == 4
    assert Dijkstra.gcd(18, 6) == 6
    assert Dijkstra.gcd(96, 120) == 24
  end
end
