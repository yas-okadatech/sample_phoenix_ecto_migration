defmodule EctoMigrationSampleApp.Repo.Migrations.AlterUsersModifyType do
  use Ecto.Migration

  def change do
    alter table(:users) do
      modify :email, :string, null: false
      modify :introduction, :text
    end
  end
end
