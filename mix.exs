defmodule BottomUp.Mixfile do
  use Mix.Project

  def project do
    [app: :bottom_up,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies
  defp deps do
    [{:credo, "~> 0.3", only: [:dev, :test]}]
  end
end
