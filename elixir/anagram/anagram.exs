defmodule Anagram do
  import Enum,   only: [filter: 2, sort: 1]
  import String, only: [codepoints: 1]

  @doc """
    Takes a list of strings and returns possible anagrams for a given word.

    iex> Anagram.match "foo", ["bar", "baz", "oof"]
    ["oof"]
  """

  def match(word, list) do
    base_word = sort_codepoints word
    list |>
      filter(&anagram?(base_word, sort_codepoints(&1)))
  end

  defp sort_codepoints(word), do: sort(codepoints(word))
  defp anagram?(word, potential_word), do: word == potential_word
end
