class AddForeignKeysToApp < ActiveRecord::Migration
  def change
    change_table :applications do |t|
      t.references :servers, :clients, :applications_databases

    end

  end
end
