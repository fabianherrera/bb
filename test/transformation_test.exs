defmodule TransformationTest do
  use ExUnit.Case
  doctest Transformation

  test "greets the world" do
    assert Transformation.hello() == :world
  end
end
