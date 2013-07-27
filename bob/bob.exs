defmodule Teenager do

  def hey(what) do
    cond do
      is_nil? what ->
        "Fine. Be that way."
      is_upcase? what ->
        "Woah, chill out!"
      is_a_question? what ->
        "Sure."
      true ->
        "Whatever."
    end
  end

  defp is_nil?(string) do
    # first/1 returns nil is the string is empty
    nil? String.first string
  end

  defp is_upcase?(string) do
    string == String.upcase(string)
  end

  defp is_a_question?(string) do
    string |> String.ends_with? "?"
  end

end