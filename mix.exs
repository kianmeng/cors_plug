defmodule CorsPlug.Mixfile do
  use Mix.Project

  def project do
    [
      app: :cors_plug,
      version: "2.0.2",
      elixir: "~> 1.3",
      deps: deps(),
      package: package(),
      description: description(),
      source_url: "https://github.com/mschae/cors_plug",
      docs: [
        extras: ~W(README.md CHANGELOG.md)
      ]
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:plug, "~> 1.8"},
      {:ex_doc, "~> 0.23.0", only: :dev},
      {:earmark, "~> 1.4", only: :dev},
      {:mix_test_watch, "~> 1.0", only: :test}
    ]
  end

  defp description do
    """
    An elixir plug that adds CORS headers to requests and responds to
    preflight requests (OPTIONS)
    """
  end

  defp package do
    [
      files: ~w(lib mix.exs README.md LICENSE CHANGELOG.md),
      maintainers: ["Michael Schaefermeyer"],
      licenses: ["Apache 2.0"],
      links: %{
        "Github" => "http://github.com/mschae/cors_plug"
      }
    ]
  end
end
