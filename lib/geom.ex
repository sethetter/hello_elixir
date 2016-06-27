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

  def area(shape, x, y) when x >= 0 and y >= 0 do
    case shape do
      :rectangle -> x * y
      :triangle -> x * y / 2.0
      :ellipse -> :math.pi() * x * y
      _ -> 0
    end
  end

end
