defmodule Beer do
  import Enum,   only: [map_join: 3]
  import String, only: [capitalize: 1]

  @doc """
    99 Bottles of Beer on the Wall problem (http://pine.fm/LearnToProgram/?Chapter=06).
    """

  @no_more_bottles """
    No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, 99 bottles of beer on the wall.
    """

  def sing(first_verse, last_verse // 0) do
    map_join(first_verse..last_verse, "\n", verse(&1)) <> "\n"
  end

  def verse(0), do: @no_more_bottles
  def verse(n) do
    """
    #{capitalize bottles(n)} of beer on the wall, #{bottles(n)} of beer.
    Take #{beer_down(n)} down and pass it around, #{bottles(n - 1)} of beer on the wall.
    """
  end

  defp bottles(0), do: "no more bottles"
  defp bottles(1), do: "1 bottle"
  defp bottles(n), do: "#{n} bottles"

  defp beer_down(1), do: "it"
  defp beer_down(_n), do: "one"

end