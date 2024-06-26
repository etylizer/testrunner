defmodule TestRunner.MixProject do
  use Mix.Project

  def project do
    [
      app: :testrunner,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      dialyzer: [flags: ["-Wunmatched_returns", :error_handling, :underspecs]],
      escript: escript(),
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:dialyxir, "~> 1.4", only: [:dev, :test], runtime: false},
      {:jason, "~> 1.4"},
      {:flow, "~> 1.2"},
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp escript do
    [
      main_module: TestRunner.Cli,
      path: "out/testrunner",
    ]
  end
end
