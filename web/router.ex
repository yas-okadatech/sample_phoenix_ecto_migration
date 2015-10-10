defmodule EctoMigrationSampleApp.Router do
  use EctoMigrationSampleApp.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", EctoMigrationSampleApp do
    pipe_through :api
  end
end
