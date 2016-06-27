defmodule GeomTest do
  use ExUnit.Case
  doctest Geom

  test "multiplies areas for rectangles" do
    assert Geom.area(:rectangle, 4, 5) == 20
    assert Geom.area(:rectangle, 4, 4) == 16
  end

  test "multiplies areas for triangles" do
    assert Geom.area(:triangle, 4, 5) == 10
    assert Geom.area(:triangle, 4, 4) == 8
  end

  test "multiples areas for ellipsis" do
    assert Geom.area(:ellipse, 5, 2) == 31.41592653589793
    assert Geom.area(:ellipse, 3, 7) == 65.97344572538566
  end

  test "responds to invalid parameters with 0" do
    assert Geom.area(:rectangle, -1, 5) == 0
    assert Geom.area(:rectangle, 1, -5) == 0
    assert Geom.area(:triangle, -1, 5) == 0
    assert Geom.area(:triangle, 1, -5) == 0
    assert Geom.area(:ellipse, -1, 5) == 0
    assert Geom.area(:ellipse, 1, -5) == 0
    assert Geom.area(:lolwat, 1, 2) == 0
  end

end
