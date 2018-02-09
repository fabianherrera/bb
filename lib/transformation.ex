defmodule Transformation do
  @moduledoc """
  Documentation for Transformation.
  """

  @doc """
  Given a list of rows, where each row contains a keyed list
  of columns, return a list containing lists of the data in
  each column. The `headers` parameter contains the
  list of columns to extract
  ## Example
  iex> list = [Enum.into([{"a", "1"},{"b", "2"},{"c", "3"}], %{}),
  ...> Enum.into([{"a", "4"},{"b", "5"},{"c", "6"}], %{})]
  iex> Transformation.Transformate(list, [ "a", "b", "c" ])
  [ ["1", "4"], ["2", "5"], ["3", "6"] ]
  """

  def transformate([n]), do: [n + n]
end
