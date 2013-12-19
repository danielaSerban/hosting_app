class CreateDatabases < ActiveRecord::Migration
  def change
    create_table :databases do |t|
      t.string :type
      t.string :rootpassword

      t.timestamps
    end
  end
end
