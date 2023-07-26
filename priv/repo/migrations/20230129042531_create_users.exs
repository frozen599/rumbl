defmodule Rumbl.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :username, :string, null: false
      add :password_hash, :string
      add :created_at, :timestamptz
      add :updated_at, :timestamptz
    end

    create unique_index(:users, [:username])
  end
end
