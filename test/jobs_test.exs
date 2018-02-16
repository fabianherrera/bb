defmodule RegerApi.JobsTest do
  use ExUnit.Case
doctest RogerApi.Jobs
  alias Support.RogerApi, as: Roger

  test "Verify Nodes/partitions to jobs transformation" do
    input = Roger.running_jobs()
    output = Roger.nodes_to_jobs()
    assert MapSet.new(RogerApi.Jobs.nodes_to_jobs(input)) == MapSet.new(output)

  end
end
