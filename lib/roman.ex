defmodule Roman do


  def convert(number) when number == 0, do: ""

  def convert(number) do
    "I" <> convert(number - 1)
  end
end
