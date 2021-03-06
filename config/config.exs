# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tasks,
  ecto_repos: [Tasks.Repo]

# Configures the endpoint
config :tasks, TasksWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "m4OALdTGzBjrJNMQIY0eNpKoIKSn5ng8TrwFPO1SmYAnD9bquWQdUr7y/rjDpms1",
  render_errors: [view: TasksWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Tasks.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
