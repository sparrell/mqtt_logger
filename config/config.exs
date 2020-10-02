# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mqtt_logger,
  ecto_repos: [MqttLogger.Repo]

# Configures the endpoint
config :mqtt_logger, MqttLoggerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WH+f6IWAXUToct1Is+DEhizCUjLPuyuLPu1aGA5li+L6pOHh+nHQLJHrwHbCuw1S",
  render_errors: [view: MqttLoggerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: MqttLogger.PubSub,
  live_view: [signing_salt: "EAvNC6D3"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
