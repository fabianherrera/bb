defmodule RegerApi.QueuesTest do
  use ExUnit.Case
   doctest RogerApi.Queues

  alias Support.RogerApi, as: Roger


  test "verify Nodes/partitions to queues transformation" do
    input = Roger.partitions()
    output = Roger.partitions_to_queues()
    assert MapSet.new(RogerApi.Queues.partitions_to_queues(input)) == MapSet.new(output)

  end

end
