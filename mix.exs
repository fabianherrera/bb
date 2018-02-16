defmodule Transformation.MixProject do
  use Mix.Project

  def project do
    [
      app: :transformation,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),
      elixirc_path: paths()
    ]
  end

  defp aliases do
    [
      test: "test --no-start"
    ]
  end

  defp paths do
    ["lib","test/support"]
  end


  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {RogerApi.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      { :ex_doc, "~> 0.18.1" },
      { :earmark, "~> 1.2.4" },
      { :roger, "~> 1.3.0" },
    ]
  end
end
