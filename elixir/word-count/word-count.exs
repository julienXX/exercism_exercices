defmodule Words do

  @doc """
    Takes a string and returns a HashDict with the number of occurences for each word.

    iex> Words.count("foo bar")
    HashDict.new [{ "foo", 1 }, { "bar", 1 }]
  """

  def count(sentence) do
    dict = HashDict.new []
    String.downcase(sentence) |> String.split |>  do_count(dict)
  end

  defp do_count([], dict), do: dict
  defp do_count([head|tail], dict) do
    entry = prepare_entry(head, dict)
    do_count(tail, entry)
  end

  defp prepare_entry(word, dict) do
    Regex.replace(%r/\W/, word, "") |> add_or_increment_entry(dict)
  end

  defp add_or_increment_entry("", dict), do: dict
  defp add_or_increment_entry(word, dict) do
    Dict.update(dict, word, 1, fn(count) -> count + 1 end)
  end

end