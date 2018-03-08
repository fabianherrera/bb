defmodule RegerApi.FilterTest do
  use ExUnit.Case
doctest RogerApi.Filter
  alias Support.RogerApi, as: Roger

  test "Filter the enum given one field in a list" do
    input = Roger.enum_to_filter()
    output = Roger.enum_to_filter_results()
    assert output == RogerApi.Filter.call(input, ["last_name"], "go")
  end

  test "Given a 2 fields and a filter that is missing returns a empty list " do
    input = Roger.enum_to_filter()
    assert Filter.call(input, ["first_name","last_name"], "12") == []
  end

  test "With a single element in field return the expected results" do
    input = Roger.enum_to_filter()
    output = Roger.enum_to_filter_results()
    assert output == RogerApi.Filter.call(input, "last_name", "go")
  end
end