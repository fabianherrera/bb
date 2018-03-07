defmodule RogerApi.Filter do
  @moduledoc """
  Takes an enumeration and returns only those elements defined by a field and a filter.
  """
  @spec call(
          xs :: Enumerable.t(),
          fields :: List.t(),
          filter :: String.t()
        ) :: []

  @spec checker(
          Map.t(),
          List.t(),
          String.t()
        ) :: []

  @doc """
  Takes an enumerable, a field and a filter and returns it filtered
  """
  def call(enumerable, _, ""), do: enumerable

  def call(enumerable, fields, filter) do
    fields
    |> Stream.flat_map(&checker(enumerable, &1, filter))
    |> Enum.uniq
  end

  defp checker(enumerable, field, filter) do
                  filter = String.upcase(filter)
                  Enum.filter(enumerable, fn e ->
                  e
                  |> Map.get(field)
                  |> to_string()
                  |> String.upcase()
                  |> String.contains?(filter)
                  end)
  end
end
