defmodule Anagram do
  import Enum,   only: [filter: 2, sort: 1]
  import String, only: [codepoints: 1]

  @doc """
    Takes a list of strings and returns possible anagrams for a given word.

    iex> Anagram.match "foo", ["bar", "baz", "oof"]
    ["oof"]
  """

  def match(word, list) do
    filter(list, fn(potential_word) -> anagram?(word, potential_word) end)
  end

  defp anagram?(word, potential_word) do
    sorted_word_codepoints           = sort(codepoints(word))
    sorted_potential_word_codepoints = sort(codepoints(potential_word))

    sorted_word_codepoints == sorted_potential_word_codepoints
  end
end
