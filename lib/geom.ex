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

  @spec area(:atom, number(), number()) :: number()

  def area(:rectangle, w, h) when w >= 0 and h >= 0, do: w * h
  def area(:triangle, w, h) when w >= 0 and h >= 0, do: w * h / 2.0
  def area(:ellipse, r1, r2) when r1 >= 0 and r2 >= 0, do: :math.pi() * r1 * r2
  def area(_, x, y) when x >= 0 and y >= 0, do: 0


end
