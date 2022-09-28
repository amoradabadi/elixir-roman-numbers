defmodule RomanTest do
  use ExUnit.Case
  doctest Roman

  test "greets the world" do
    assert Roman.convert(1) == "I"
  end
end
