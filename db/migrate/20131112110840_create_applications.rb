class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :url
      t.string :githuburl
      t.string :httpbasicUser
      t.string :httpbasicpassword
      t.string :adminuser
      t.string :adminpassword
      t.string :serverPath
      t.boolean :flag

      t.timestamps
    end
  end
end
