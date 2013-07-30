defmodule Teenager do

  def hey(what) do
    cond do
      silent? what ->
        "Fine. Be that way."
      yelled? what ->
        "Woah, chill out!"
      question? what ->
        "Sure."
      true ->
        "Whatever."
    end
  end

  defp silent?(sentence) do
    sentence == ""
  end

  defp yelled?(sentence) do
    sentence == String.upcase(sentence)
  end

  defp question?(sentence) do
    sentence |> String.ends_with? "?"
  end

end