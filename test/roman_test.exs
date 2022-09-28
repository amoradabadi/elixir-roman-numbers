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
    assert Roman.convert(20) == "XX"
    assert Roman.convert(30) == "XXX"
    assert Roman.convert(50) == "L"
    assert Roman.convert(60) == "LX"
    assert Roman.convert(70) == "LXX"
    assert Roman.convert(80) == "LXXX"
  end

  test "should convert units of hundred" do
    assert Roman.convert(100) == "C"
    assert Roman.convert(200) == "CC"
    assert Roman.convert(300) == "CCC"
    assert Roman.convert(500) == "D"
    assert Roman.convert(600) == "DC"
    assert Roman.convert(700) == "DCC"
    assert Roman.convert(800) == "DCCC"
  end

  test "should convert units of thousand" do
    assert Roman.convert(1000) == "M"
    assert Roman.convert(2000) == "MM"
    assert Roman.convert(3000) == "MMM"
  end

  test "should prepend" do
    assert Roman.convert(4) == "IV"
    assert Roman.convert(9) == "IX"
    assert Roman.convert(40) == "XL"
    assert Roman.convert(90) == "XC"
  end

end
