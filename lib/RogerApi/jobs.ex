defmodule RogerApi.Jobs do

  def running_jobs([]), do: []
  def running_jobs(jobs), do:  jobs |> Keyword.values() |> Enum.flat_map(&Map.values/1) |> List.flatten()

end
