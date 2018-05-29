defmodule Kiwi.MixProject do
  use Mix.Project

  def project do
    [
      app: :kiwi,
      name: "Kiwi",
      description: description(),
      package: package(),
      docs: [
        extras: ~W(README.md)
      ],
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Kiwi.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description do
    """
    A persistent key value store for your elixir and erlang apps.
    Data is backed by a postgres database.
    """
  end

  defp package do
    [
      description: description(),
      files: ~w(lib config mix.exs README.md LICENSE),
      maintainers: ["Khaja Minhajuddin"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "http://github.com/minhajuddin/kiwi",
        # TODO: Add blog post which introduces kiwi
      }
    ]
  end
end
