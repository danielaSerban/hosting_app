class RenameKeys < ActiveRecord::Migration
  def change
    rename_column :servers, :providers_id, :provider_id

    rename_column :application_databases, :databases_id, :database_id

    rename_column :databases,:servers_id, :server_id

    rename_column :applications, :servers_id, :server_id
    rename_column :applications, :applications_databases_id, :applications_database_id
    rename_column :applications, :clients_id, :client_id

  end
end
