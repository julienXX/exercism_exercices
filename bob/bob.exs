defmodule Teenager do

  def hey(what) do
    cond do
      is_nil? what ->
        "Fine. Be that way."
      is_upcase? what ->
        "Woah, chill out!"
      is_a_question? what ->
        "Sure."
      true ->
        "Whatever."
    end
  end

  def is_nil?(string) do
    # first/1 returns nil is the string is empty
    nil? String.first string
  end

  def is_upcase?(string) do
    string == String.upcase(string)
  end

  def is_a_question?(string) do
    String.ends_with? string, "?"
  end

end