defmodule MyElixirTest do
  use ExUnit.Case
  doctest MyElixir

  test "greets the world" do
    assert MyElixir.hello() == :world
  end
end
