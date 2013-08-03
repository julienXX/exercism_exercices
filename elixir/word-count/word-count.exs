defmodule Words do

  @doc """
    Takes a string and returns a HashDict with the number of occurences for each word.

    iex> Words.count("foo bar")
    HashDict.new [{ "foo", 1 }, { "bar", 1 }]
  """

  def count(sentence) do
    words = String.downcase(sentence) |> String.split(%r/\W/)
    Enum.reduce(words, HashDict.new, add_or_increment_entry(&1, &2))
  end

  defp add_or_increment_entry("", dict), do: dict
  defp add_or_increment_entry(word, dict) do
    Dict.update(dict, word, 1, &1 + 1)
  end

end