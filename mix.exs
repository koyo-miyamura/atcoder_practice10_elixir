defmodule AtcoderPractice.MixProject do
  use Mix.Project

  def project do
    [
      app: :atcoder_practice,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:ex_doc, "~> 0.19", only: :dev, runtime: false},
      {:earmark, "~> 1.1", only: :dev}
    ]
  end
end
