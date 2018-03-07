defmodule RegerApi.FilterTest do
  use ExUnit.Case
doctest RogerApi.Filter
  alias Support.RogerApi, as: Roger

  test "Verify Nodes/partitions to jobs transformation" do
    input = Roger.enum_to_filter()
    output = Roger.enum_to_filter_results()
    assert MapSet.new(RogerApi.Filter.call(input, ["first_name", "last_name", "tax_id"], "56")) == MapSet.new(output)
    assert MapSet.new(RogerApi.Filter.call(input, ["first_name", "last_name", "tax_id"], "sam")) == MapSet.new(output)
  end
end
