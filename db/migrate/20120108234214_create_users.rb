class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :email, :unique => true
      t.string :encrypted_password
      t.string :salt
      t.string :auth_token
      t.boolean :admin, :default => false
      t.string :password_reset_token
      t.integer :unique_id
      t.datetime :password_reset_sent_at
      
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
