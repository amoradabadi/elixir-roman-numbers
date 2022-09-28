defmodule RomanTest do
  use ExUnit.Case
  doctest Roman

  test "should convert units of one" do
    assert Roman.convert(1) == "I"
    assert Roman.convert(2) == "II"
    assert Roman.convert(3) == "III"
    assert Roman.convert(5) == "V"
    assert Roman.convert(6) == "VI"
    assert Roman.convert(7) == "VII"
    assert Roman.convert(8) == "VIII"
  end

  test "should convert units of ten" do
    assert Roman.convert(10) == "X"
  end

end
