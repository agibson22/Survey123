class AddResearcherToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :researcher, :boolean, :default => false
  end

  def self.down
    remove_column :users, :researcher
  end
end
