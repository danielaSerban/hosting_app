class AddForeignKeysToDb < ActiveRecord::Migration
  def change
    change_table :databases do |t|
      t.references :servers
    end
  end
end
