defmodule BottomUp do
  alias BottomUp.Production

  def process(rules_path) do
    {start_state, productions} = Production.from rules_path
    read_input_string()
  end

  defp read_input_string do
    IO.gets("Informe uma cadeia:\n")
    |> String.trim
    |> String.split("")
  end
end
