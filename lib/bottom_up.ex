defmodule BottomUp do
  alias BottomUp.{Automata, Rules}

  def process(rules_path, input_path) do
    {init, rules} = Rules.from(rules_path)
    prods = read_input(input_path)

    for prod <- prods do
      Automata.start([init], rules, prod)
    end
  end

  def read_input(input_path) do
    input_path
    |> File.read!
    |> String.split("\n", trim: true)
    |> Enum.map(&String.split(&1, ~r{(\s|\b)}, trim: true))
  end
end
