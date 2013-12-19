class AddUniqueness < ActiveRecord::Migration
  def change
    add_index :providers, :name, unique: true
  end
end
