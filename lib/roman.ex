defmodule Roman do


  def convert(number) when number == 0, do: ""

  def convert(number) do
    if number == 5 do
      "V"
    else
      "I" <> convert(number - 1)
    end
  end
end
