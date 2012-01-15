class CreatePabs < ActiveRecord::Migration
  def up
    create_table :pabs do |t|
      t.text :survey_name
      t.text :question_name
      t.text :answer_name
      t.integer :stem_number
      t.integer :user_id
      t.timestamps
    end
  end

  def down
  end
end
