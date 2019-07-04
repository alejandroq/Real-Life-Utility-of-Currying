defmodule Sample do
  @moduledoc """
  Documentation for Sample.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Sample.addThree(4)
      7

      iex> Sample.prefixWithWarning("All is well.")
      "[WARNING] All is well."

  """
  # Example 1: Addition
  def add a do
    fn b -> a + b end
  end

  def addThree b do
    Sample.add(3).(b)
  end

  # Example 2: String Prefixing
  def addPrefix a do
    fn b -> EEx.eval_string("[<%= a %>] <%= b %>", a: a, b: b) end
  end

  def prefixWithWarning a do
    Sample.addPrefix("WARNING")
  end
end
