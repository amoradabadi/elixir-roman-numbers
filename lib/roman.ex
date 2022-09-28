defmodule Roman do

  def convert(number) do
    if number == 0 do
      ""
    else
      "I" <> convert(number - 1)
    end
  end
end
