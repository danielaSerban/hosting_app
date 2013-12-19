class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :contactname
      t.string :contactemail
      t.string :username
      t.string :userpassword

      t.timestamps
    end
  end
end
