class AddStemIdToResponses < ActiveRecord::Migration
  def self.up
    add_column :responses, :stem_id, :integer
  end

  def self.down
    remove_column :respones, :stem_id
  end
end
