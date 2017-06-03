defmodule BottomUp.Production do

  def from(file_path), do: map_productions file_path

  defp map_productions(file_path) do
    file_path
    |> File.read!
    |> String.split("\n", trim: true)
    |> build_tuple
  end

  defp build_tuple([h | tail]), do: {h, to_map(tail)}

  defp to_map(list) do
    list
    |> Enum.map(&String.split(&1, " -> "))
    |> Map.new(fn [v, k] -> {k, v} end)
  end
end
