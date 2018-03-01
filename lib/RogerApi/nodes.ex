defmodule RogerApi.Nodes do
  @moduledoc false

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
  %{"partition_name" => "roger_partition_demo", "node_name" => :"server@127.0.0.1", "status" => :running}
  }]
  """

  def get_node_status(nodes) do
    nodes
    |> Enum.flat_map(&get_node/1)
  end

  defp get_node(node) do
      node_name = Elem(node, 0)
      status = Elem(node, 1)
      |> Enum.map(&get_status(node_name, &1))
  end

  defp get_status(node_name, stats)  do
      status = Elem(node, 0)
      partitions = Elem(node, 1)
      |> Enum.map(&get_partition(node_name, status, &1))
  end


  defp get_partition(node_name, status, partitions) do
    partition_name = Elem(node, 0)
          %{
             "partition_name" => partition_name,
             "node_name" => node_name,
             "status" => status
          }
   end

end




