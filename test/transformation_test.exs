defmodule Transformations do
  use ExUnit.Case
  # doctest transformation


  test "Data Structures" do
    assert transformation.transformate([1]) == [2]
  end
end
