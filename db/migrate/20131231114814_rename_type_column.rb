class RenameTypeColumn < ActiveRecord::Migration
  def change
    rename_column :databases, :type, :db_type
  end
end
