class AddForeignKeysServers < ActiveRecord::Migration
  def change
    change_table :servers do |t|
      t.references :providers
    end

    change_table :application_databases do |t|
      t.references :databases
    end
  end
end
