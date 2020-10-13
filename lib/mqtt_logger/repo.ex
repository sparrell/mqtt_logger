defmodule MqttLogger.Repo do
  use Ecto.Repo,
    otp_app: :mqtt_logger,
    adapter: Ecto.Adapters.Postgres
end
