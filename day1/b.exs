defmodule Advent1 do
  def sum(lst), do: do_sum(Enum.split(lst, div(length(lst), 2)), 0)
  defp do_sum({[], []}, s), do: s
  defp do_sum({[a | xa], [a | xb]}, s), do: do_sum({xa, xb}, s + 2 * (a - ?0))
  defp do_sum({[_ | xa], [_ | xb]}, s), do: do_sum({xa, xb}, s )
end

IO.puts Advent1.sum to_charlist IO.read :all
