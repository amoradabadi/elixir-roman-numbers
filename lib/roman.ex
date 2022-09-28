defmodule Roman do
  def convert(number) when number == 0, do: ""

  def convert(number) do
    cond do
      number >= 500 -> "D" <> convert(number - 500)
      number >= 100 -> "C" <> convert(number - 100)
      number >= 50 -> "L" <> convert(number - 50)
      number >= 10 -> "X" <> convert(number - 10)
      number >= 5 -> "V" <> convert(number - 5)
      true -> "I" <> convert(number - 1)
    end
  end
end
