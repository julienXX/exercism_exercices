defmodule Teenager do

  @doc """
    Teenager is a lackadaisical teenager. In conversation, his responses are very limited.
    Teenager answers 'Sure.' if you ask him a question.
    He answers 'Whatever.' if you tell him something.
    He answers 'Woah, chill out!' if you yell at him (ALL CAPS).
    He says 'Fine. Be that way!' if you address him without actually saying anything.
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