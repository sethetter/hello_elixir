defmodule StuffTest do
  use ExUnit.Case
  doctest Stuff

  test "returns true if a string contains vowels" do
    assert Stuff.contains_vowels("lol")
  end

  test "returns false if string does not contain vowels" do
    assert !Stuff.contains_vowels("bbbggdd")
  end
end
