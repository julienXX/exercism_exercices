defmodule Anagram do

  @doc """
    Takes a list of strings and returns possible anagrams for a given word.

    iex> Anagram.match "foo", ["bar", "baz", "oof"]
    ["oof"]
  """

  def match(word, list) do
    Enum.filter(list, fn(potential_word) -> anagram?(word, potential_word) end)
  end

  defp anagram?(word, potential_word) do
    sorted_word_codepoints           = Enum.sort(String.codepoints(word))
    sorted_potential_word_codepoints = Enum.sort(String.codepoints(potential_word))

    sorted_word_codepoints == sorted_potential_word_codepoints
  end
end