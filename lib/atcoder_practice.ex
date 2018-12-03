defmodule AtcoderPractice do
  @moduledoc """
  Documentation for AtcoderPractice.
  """

  @doc """
  ## Examples

      iex> AtcoderPractice.product(3,4)
      'Even'
      iex> AtcoderPractice.product(1,21)
      'Odd'

  """
  def product(a, b) do
    case rem(a * b, 2) do
      0 ->
        'Even'

      1 ->
        'Odd'
    end
  end

  @doc """
    ## Examples

      iex> AtcoderPractice.placing_marbles("101")
      2

      iex> AtcoderPractice.placing_marbles("000")
      0

      iex> AtcoderPractice.placing_marbles("100")
      1

      iex> AtcoderPractice.placing_marbles("111")
      3

      iex> AtcoderPractice.placing_marbles("010")
      1
  """
  def placing_marbles(s) do
    s |> String.codepoints() |> Enum.count(fn x -> x == "1" end)
  end
end
