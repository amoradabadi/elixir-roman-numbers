defmodule Roman do
  def convert(number) when number == 0, do: ""

  def convert(number) do
    cond do
      number ==50 -> "L"
      number >= 10 -> "X" <> convert(number - 10)
      number >= 5 -> "V" <> convert(number - 5)
      true -> "I" <> convert(number - 1)
    end
  end
end
