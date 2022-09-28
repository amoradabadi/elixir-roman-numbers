defmodule RomanTest do
  use ExUnit.Case
  doctest Roman

  test "should convert number one" do
    assert Roman.convert(1) == "I"
  end

  test "should convert number two" do
    assert Roman.convert(2) == "II"
  end

  test "should convert number three" do
    assert Roman.convert(3) == "III"
  end

  test "should convert number five" do
    assert Roman.convert(5) == "V"
  end

  test "should convert number six" do
    assert Roman.convert(6) == "VI"
  end

  test "should convert number seven" do
    assert Roman.convert(7) == "VII"
  end

  test "should convert number eight" do
    assert Roman.convert(8) == "VIII"
  end

  test "should convert number ten" do
    assert Roman.convert(10) == "X"
  end

end
