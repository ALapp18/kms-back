defmodule KmsBack.MixProject do
  use Mix.Project

  def project do
    [
      app: :kms_back,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {KmsBack.Application, []}
    ]
  end

  defp deps do
    [
      {:cowboy, "~> 2.5"},
      {:plug, "~> 1.6"},
      {:poison, "~> 4.0"},
      {:postgrex, "~> 0.13.5"}
    ]
  end
end
