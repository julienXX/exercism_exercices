defmodule Teenager do

  def hey(what) do
    cond do
      nil? String.first what ->
        "Fine. Be that way."
      what == String.upcase(what) ->
        "Woah, chill out!"
      String.ends_with? what, "?" ->
        "Sure."
      true ->
        "Whatever."
    end
  end

end