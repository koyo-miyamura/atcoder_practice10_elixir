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

  @doc """
    ## Examples

      iex> AtcoderPractice.coins(2,2,2,100)
      2

      iex> AtcoderPractice.coins(5,1,0,150)
      0

      iex> AtcoderPractice.coins(30,40,50,6000)
      213
  """
  def coins(n500, n100, n50, total) do
    for i <- 0..n50,
        j <- 0..n100,
        k <- 0..n500 do
      i * 50 + j * 100 + k * 500
    end
    |> Enum.count(&(&1 == total))
  end

  @doc """
    ## Examples

      iex> AtcoderPractice.some_sums(20,2,5)
      84

      iex> AtcoderPractice.some_sums(10,1,2)
      13

      iex> AtcoderPractice.some_sums(100,4,16)
      4554
  """
  def some_sums(n, a, b) do
    1..n
    |> Enum.filter(&(a <= digit_sum(&1) and digit_sum(&1) <= b))
    |> Enum.sum()
  end

  defp digit_sum(n) do
    Integer.to_string(n)
    |> String.codepoints()
    |> Enum.map(&String.to_integer/1)
    |> Enum.sum()
  end
end
