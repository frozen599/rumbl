defmodule Rumbl.Repo.Migrations.CreateVideos do
  use Ecto.Migration

  def change do
    create table(:videos) do
      add :url, :string
      add :title, :string
      add :description, :text
      add :user_id, references(:users, on_delete: :delete_all)
      add :created_at, :timestamptz
      add :updated_at, :timestamptz
    end

    create index(:videos, [:user_id])
  end
end
