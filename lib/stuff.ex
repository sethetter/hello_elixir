defmodule Stuff do
  @moduledoc"""
  This is just where I'm going to put random stuff I want to try.
  """

  @doc """
  Returns true or false based on if a string contains vowels.

  This function could work a lot easier, but I wanted to test out pattern match
  with atoms as results of a test or something. Faaaancy!
  """
  @spec contains_vowels(string()) :: bool()

  def contains_vowels(string) do
    case Regex.run(~r{[aeiou]}, string) do
      nil -> contains_vowels_result(:no_match)
      _ -> contains_vowels_result(:match)
    end
  end

  defp contains_vowels_result(:match), do: true
  defp contains_vowels_result(:no_match), do: false
end
