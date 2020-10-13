defmodule MqttLoggerWeb.LogLive do
  use MqttLoggerWeb, :live_view

  @topic "log"

  @impl true
  def mount(_params, _session, socket) do
    ## subscribe to pubsub topic
    MqttLoggerWeb.Endpoint.subscribe(@topic)
    {:ok, assign(socket, results: %{})}
  end

end
