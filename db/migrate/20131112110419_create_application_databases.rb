class CreateApplicationDatabases < ActiveRecord::Migration
  def change
    create_table :application_databases do |t|
      t.string :name
      t.string :user
      t.string :password

      t.timestamps
    end
  end
end
