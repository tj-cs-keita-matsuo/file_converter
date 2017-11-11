defmodule FileConverterTest do
  use ExUnit.Case
  doctest FileConverter

  test "greets the world" do
    assert FileConverter.hello() == :world
  end
end
