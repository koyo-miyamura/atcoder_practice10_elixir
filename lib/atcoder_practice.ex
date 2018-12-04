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

  @doc """
    ## Examples

      iex> AtcoderPractice.shift_only("8 12 40")
      2

      iex> AtcoderPractice.shift_only("5 6 8 10")
      0

      iex> AtcoderPractice.shift_only("382253568 723152896 37802240 379425024 404894720 471526144")
      8

      iex> AtcoderPractice.shift_only("4 4")
      2

      iex> AtcoderPractice.shift_only("2 2")
      1

  """
  def shift_only(s) do
    list = s |> String.split() |> Enum.map(&String.to_integer/1)
    shift_only(list, 0)
  end

  defp shift_only(list, count) do
    if Enum.all?(list, &(rem(&1, 2) == 0)) do
      shift_only(Enum.map(list, &div(&1, 2)), count + 1)
    else
      count
    end
  end
end
