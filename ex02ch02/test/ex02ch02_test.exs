defmodule Ex02ch02Test do
  use ExUnit.Case
  doctest Ex02ch02

  test "greets the world" do
    assert Ex02ch02.hello() == :world
  end
end
