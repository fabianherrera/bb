defmodule RogerApi.Transformations do
  @moduledoc """
  Documentation for Transformations.
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

  def transformate([]), do: []
  def transformate([x]), do: [transformate_node_tree(x)]
  def transformate([head | tail]), do: [transformate_node_tree(head) | transformate(tail)]

  defp transformate_node_tree([]), do: []
  defp transformate_node_tree({_node, node_data}), do: [transformate_status_tree([node_data])]

  defp transformate_status_tree([]), do: []
  defp transformate_status_tree([x]), do: [transformate_partition_tree(x)]
  defp transformate_status_tree([head1 | tail1]), do: [transformate_partition_tree(head) | transformate_status_tree(tail)]



end

