defmodule RogerApi.Queues do
  def running_partitions([]), do: []
  def running_partitions(jobs), do:  jobs |> Keyword.values() |> Enum.flat_map(&Map.values/1) |> List.flatten()
end
