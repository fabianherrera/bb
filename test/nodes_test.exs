defmodule RegerApi.NodesTest do
  use ExUnit.Case
  doctest RogerApi.Nodes

  alias Support.RogerApi, as: Roger

  test "Verify partitions to list of Partition/node/status transformation" do
    input = Roger.partitions()
    output = Roger.partitions_to_nodes_status()
    assert MapSet.new(RogerApi.Nodes.get_node_status(input)) == MapSet.new(output)

  end

end
