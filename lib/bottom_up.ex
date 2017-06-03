defmodule BottomUp do
  alias BottomUp.Production

  def process(rules_path) do
    {start_state, productions} = Production.from rules_path
    read_input_string()
  end

  defp read_input_string do
    "Informe uma cadeia:\n"
    |> IO.gets
    |> String.trim
    |> String.split("")
  end
end
