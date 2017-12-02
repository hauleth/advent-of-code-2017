defmodule Advent1 do
  def sum([h | _] = list), do: do_sum(list ++ [h], 0)
  defp do_sum([_], sum), do: sum
  defp do_sum([a | [a | _] = rest], sum), do: do_sum(rest, sum + a - ?0)
  defp do_sum([_ | rest], sum),do: do_sum(rest, sum)
end

IO.puts Advent1.sum to_charlist IO.read :all
