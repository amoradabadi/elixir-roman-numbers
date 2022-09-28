defmodule Roman do

  def convert(number) do
    case number do
      3 -> "III"
      2 -> "II"
      1 -> "I"
    end
  end
end
