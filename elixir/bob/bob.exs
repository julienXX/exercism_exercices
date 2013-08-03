defmodule Teenager do

@doc """
    Bob is a lackadaisical teenager. In conversation, his responses are very limited.

    iex> Teenager.hey("")
    "Fine. Be that way."

    iex> Teenager.hey("Do you like chocolate?")
    "Sure."

    iex> Teenager.hey("LEAVE ME ALONE!")
    "Woah, chill out!"

    iex> Teenager.hey("It's sunny outside")
    "Whatever."
  """

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