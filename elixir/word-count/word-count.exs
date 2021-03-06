defmodule Words do
  import Enum,   only: [reduce: 3]
  import Dict,   only: [update: 4]
  import String, only: [downcase: 1, split: 2]

  @doc """
    Takes a string and returns a HashDict with the number of occurences for each word.

    iex> Words.count("foo bar")
    HashDict.new [{ "foo", 1 }, { "bar", 1 }]
  """

  def count(sentence) do
    downcase(sentence)
    |> split(%r/\W/)
    |> reduce(HashDict.new, add_or_increment_entry(&1, &2))
  end

  defp add_or_increment_entry("", dict), do: dict
  defp add_or_increment_entry(word, dict) do
    update(dict, word, 1, &1 + 1)
  end

end