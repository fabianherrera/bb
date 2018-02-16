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
    |> Enum.flat_map(&Map.values/1)
    |> Enum.flat_map(&consolidate/1)
  end

  defp consolidate(partition) do
    partition
    |> Enum.flat_map(&get_queues/1)
  end

  defp get_queues({partition_key, queues}) do
    queues
    |> Enum.map(
         fn {queue_key, queue_params} ->
           %{
             "count" => queue_params.message_count,
             "partition_name" => partition_key,
             "paused" => paused?(queue_params.paused),
             "qualified_queue_name" => "#{partition_key}-#{queue_key}",
             "queue_name" => queue_key
           }

         end
       )

  end

  defp paused?(true), do: "paused"
  defp paused?(false), do: "running"


end




