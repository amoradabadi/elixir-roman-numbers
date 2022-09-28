defmodule Roman do
  def convert(number) when number == 0, do: ""

  def convert(number) do
    if number == 10 do
      "X"
    else
      if number >= 5 do
        "V" <> convert(number - 5)
      else
        "I" <> convert(number - 1)
      end
    end
  end
end
