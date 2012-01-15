class AddSurveyIdToResponses < ActiveRecord::Migration
  def self.up
    add_column :responses, :survey_id, :integer
  end

  def self.down
    remove_column :responses, :survey_id
  end
end
