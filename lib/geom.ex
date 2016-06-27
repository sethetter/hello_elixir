defmodule Geom do

  @moduledoc """
  Functions for calculating the areas of geometric shapes.

  from Etudes for Elixir, O'Reilly Media Inc., 2013.
  Copyright 2013 J. David Eisenberg
  """
  @vsn 0.1

  @doc """
  Calculates the area of a shape, given a set of parameters. Returns
  the product of it's arguments. Default values for each element are 1.
  """

  @spec area({:atom, number(), number()}) :: number()

  def area({shape, x, y}), do: area(shape, x, y)

  defp area(:rectangle, w, h) when w >= 0 and h >= 0, do: w * h
  defp area(:triangle, w, h) when w >= 0 and h >= 0, do: w * h / 2.0
  defp area(:ellipse, r1, r2) when r1 >= 0 and r2 >= 0, do: :math.pi() * r1 * r2
  defp area(_, _, _), do: 0


end
