defmodule Roman do
  def convert(number) when number == 0, do: ""

  def convert(number) do
    cond do
      number >= 1000 -> numeral(1000) <> convert(number - 1000)
      number >= 500 -> numeral(500) <> convert(number - 500)
      number >= 100 -> numeral(100) <> convert(number - 100)
      number >= 50 -> numeral(50) <> convert(number - 50)
      number >= 10 -> numeral(10) <> convert(number - 10)
      number >= 5 -> numeral(5) <> convert(number - 5)
      true -> numeral(1) <> convert(number - 1)
    end
  end

  defp numeral(number) do
    %{
      1000 => "M",
      500 => "D",
      100 => "C",
      50 => "L",
      10 => "X",
      5 => "V",
      1 => "I"
    }[number]
  end
end
