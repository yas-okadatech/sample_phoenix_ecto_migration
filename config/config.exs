# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the namespace used by Phoenix generators
config :sample_phoenix_ecto_migration,
  app_namespace: EctoMigrationSampleApp

# Configures the endpoint
config :sample_phoenix_ecto_migration, EctoMigrationSampleApp.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "ETHPkd5XBIdJD6VsVX6yipKZAS3IqGXdlrz9GmsK1ChGB7bjwJfKGGiLik9ga+yn",
  render_errors: [accepts: ~w(json)],
  pubsub: [name: EctoMigrationSampleApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false
