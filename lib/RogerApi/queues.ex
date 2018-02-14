defmodule RogerApi.Queues do
  @moduledoc """
  Documentation for Queues.
  """

  @doc """
  Given a nested data structure, where each element contents nested items:
    input = [
      "server@127.0.0.1": %{
        running: %{
          "roger_test_partition_1" => %{
            default: %{consumer_count: 1, max_workers: 10, message_count: 740, paused: false},
            fast: %{consumer_count: 1, max_workers: 10, message_count: 740, paused: false},
            other: %{consumer_count: 1, max_workers: 2, message_count: 0, paused: false}
          }]

  return a sorted Map with the following keys:
  [
  %{
    "count" => 740,
    "partition_name" => "roger_test_partition_2",
    "paused" => "running",
    "qualified_queue_name" => "roger_test_partition_2-default",
    "queue_name" => :default
  }]


  """


  def partitions([]), do: []
  def partitions(partitions) do
    partitions
    |> Keyword.values()
    |> Enum.flat_map(&(Enum.flat_map(&1, consolidate)))
  end

  # Incomplete
  defp consolidate{k, v} do
  #  capture_partition_key(v) ->
    
  end


end




