defmodule BottomUp.Automata do
  def start(init, rules, input) do
    result = do_analysis(rules, input, [])
    if result == init do
      IO.puts("Accepted: #{List.to_string(input)}")
    else
      IO.puts("Rejected: #{List.to_string(input)}")
    end
  end

  defp do_analysis(_, [], stack), do: stack
  defp do_analysis(rules, [hin | tin], stack) do
    new_stack = reduce(rules, [hin | stack], "")
    do_analysis(rules, tin, new_stack)
  end

  defp reduce(_rules, [], str) do
    str
    |> String.split("", trim: true)
    |> Enum.reverse
  end
  defp reduce(rules, [hst | tst], str) do
    key = hst <> str
    case rules[key] do
      nil -> reduce(rules, tst, key)
      nts -> reduce(rules, [nts | tst], "")
    end
  end
end
