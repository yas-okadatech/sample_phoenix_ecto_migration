defmodule EctoMigrationSampleApp.Repo.Migrations.AlterUsersAddColumn do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :email, :string
      add :introduction, :string
    end
  end
end
