defmodule PowersTest do
  use ExUnit.Case
  doctest Powers

  test "raises a number to a power" do
    assert Powers.raise(3, 1) == 3
    assert Powers.raise(3, 0) == 1
    assert Powers.raise(3, 2) == 9
    assert Powers.raise(2, 3) == 8
  end

  test "handles negative numbers" do
    assert Powers.raise(2, -3) == 0.125
  end
end
