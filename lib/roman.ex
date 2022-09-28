defmodule Roman do
  def convert(number) when number == 0, do: ""

  def convert(number) do
    numeral_map()
    |> Map.keys()
    |> Enum.sort(:desc)
    |> Enum.find(fn key -> number >= key end)
    |> build(number)
  end

  defp build(l, number) do
    numeral(l) <> convert(number - l)
  end

  defp numeral(number) do
    numeral_map()[number]
  end

  def numeral_map() do
    %{
      1000 => "M",
      500 => "D",
      100 => "C",
      50 => "L",
      10 => "X",
      5 => "V",
      1 => "I"
    }
  end
end
