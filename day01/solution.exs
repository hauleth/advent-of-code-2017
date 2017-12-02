defmodule Advent do
  def sum_1([h | _] = list), do: do_sum_1(list ++ [h], 0)
  defp do_sum_1([_], sum), do: sum
  defp do_sum_1([a | [a | _] = rest], sum), do: do_sum_1(rest, sum + a - ?0)
  defp do_sum_1([_ | rest], sum), do: do_sum_1(rest, sum)

  def sum_half(lst), do: do_sum_half(Enum.split(lst, div(length(lst), 2)), 0)
  defp do_sum_half({[], []}, s), do: s
  defp do_sum_half({[a | xa], [a | xb]}, s) do
    do_sum_half({xa, xb}, s + 2 * (a - ?0))
  end
  defp do_sum_half({[_ | xa], [_ | xb]}, s), do: do_sum_half({xa, xb}, s )
end

input = :all |> IO.read |> to_charlist

IO.puts "A: #{Advent.sum_1(input)}"
IO.puts "B: #{Advent.sum_half(input)}"
