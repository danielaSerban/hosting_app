class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :hostName
      t.string :internalIP
      t.string :externalIP
      t.string :user
      t.string :password
      t.string :rootPassword
      t.string :publicSSHKey

      t.timestamps
    end
  end
end
