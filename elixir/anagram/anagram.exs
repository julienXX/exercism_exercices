defmodule Anagram do
  import Enum,   only: [filter: 2, sort: 1]
  import String, only: [codepoints: 1]

  @doc """
    Takes a list of strings and returns possible anagrams for a given word.

    iex> Anagram.match "foo", ["bar", "baz", "oof"]
    ["oof"]
  """

  def match(word, list) do
    list |> filter(fn(potential_word) -> anagram?(sort_codepoints(word), sort_codepoints(potential_word)) end)
  end

  defp sort_codepoints(word) do
    sort(codepoints(word))
  end

  defp anagram?(word, potential_word) do
    word == potential_word
  end
end
