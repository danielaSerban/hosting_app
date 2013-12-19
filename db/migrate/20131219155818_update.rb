class Update < ActiveRecord::Migration
  def change
    rename_column :applications, :applications_database_id, :application_database_id
  end
end
